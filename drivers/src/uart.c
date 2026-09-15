#include "../include/uart.h"

void uart_putc(char c) {
  // Wait until the TX FIFO is not full.
  // We poll the status register and loop as long as the TX_FULL bit is set.
  while ((*UART_STATUS) & STATUS_TX_FULL) {
    // Busy wait
  }

  // Write the character to the TX FIFO
  *UART_TX_FIFO = (uint32_t)c;
}

char uart_getc(void) {
  // Wait until there is data available in the RX FIFO.
  // We poll the status register and loop as long as the RX_AVAIL bit is NOT
  // set.
  while (!((*UART_STATUS) & STATUS_RX_AVAIL)) {
    // Busy wait
  }

  // Read and return the character from the RX FIFO
  return (char)(*UART_RX_FIFO);
}

void uart_puts(const char *str) {
  while (*str != '\0') {
    uart_putc(*str);
    str++;
  }
}
