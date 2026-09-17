#include "../include/uart.h"
#include "../include/irq.h"
#include "../include/ring_buff.h"

// Define the static buffers
ring_buffer_t rx_buffer;
ring_buffer_t tx_buffer;

// Define the Interrupt Service Routine
void uart_isr(void) {
  uint32_t irq_status = *UART_IRQ_STATUS;

  // Handle Incoming Data
  if (irq_status & IRQ_RX_AVAIL) {
    char c = (char)(*UART_RX_FIFO);
    insert_rb(&rx_buffer, c); // Push to RX buffer
  }

  // Handle Outgoing Data
  if ((irq_status & IRQ_TX_EMPTY) && (*UART_IRQ_EN & IRQ_TX_EMPTY)) {
    char c;
    if (pop_rb(&tx_buffer, &c)) {
      *UART_TX_FIFO = (uint32_t)c;
    } else {
      // Nothing left to send, turn off TX interrupt to prevent infinite looping
      *UART_IRQ_EN &= ~IRQ_TX_EMPTY;
    }
  }

  // Handle Hardware Errors
  if (irq_status & (IRQ_RX_OVERRUN | IRQ_FRAME_ERROR)) {
    *UART_CTRL |= CTRL_CLR_ERRORS; // Clear the hardware error states
  }
}

// Initialization function (Call this in main!)
void uart_init(void) {
  init_ring_buffer(&rx_buffer);
  init_ring_buffer(&tx_buffer);

  // Register ISR with the MINA PLIC at priority 1
  reg_UART_irq(uart_isr, 1);

  // Enable the RX interrupt permanently so we never miss incoming data
  *UART_IRQ_EN |= IRQ_RX_AVAIL;
}

void uart_putc(char c) {
  // 1. Temporarily disable TX interrupts to avoid race conditions
  *UART_IRQ_EN &= ~IRQ_TX_EMPTY;

  // 2. If the software buffer is empty AND the hardware TX FIFO is empty,
  // bypass the software buffer to kickstart the hardware transmission.
  if (tx_buffer.head == tx_buffer.tail && (*UART_STATUS & STATUS_TX_EMPTY)) {
    *UART_TX_FIFO = (uint32_t)c;
  } else {
    // Otherwise, hardware is busy. Queue it in the software buffer.
    while (!insert_rb(&tx_buffer, c)) {
      // Busy wait only if the 256-byte buffer is completely full
    }
  }

  // 3. Re-enable TX interrupts so the ISR handles the rest
  *UART_IRQ_EN |= IRQ_TX_EMPTY;
}

char uart_getc(void) {
  char c;
  // Block only when the software buffer is completely empty
  while (!pop_rb(&rx_buffer, &c)) {
    // Busy wait until the ISR receives new data
  }
  return c;
}

void uart_puts(const char *str) {
  while (*str != '\0') {
    uart_putc(*str);
    str++;
  }
}
