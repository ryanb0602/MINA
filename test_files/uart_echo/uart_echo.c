#include <stdint.h>

// UART Base Address
#define UART_BASE 0x20002000

// Register Memory Map
#define UART_RX_FIFO ((volatile uint32_t *)(UART_BASE + 0x00))
#define UART_TX_FIFO ((volatile uint32_t *)(UART_BASE + 0x04))
#define UART_STATUS ((volatile uint32_t *)(UART_BASE + 0x08))
#define UART_CTRL ((volatile uint32_t *)(UART_BASE + 0x0C))

// Status Register Bitmasks
#define STATUS_RX_AVAIL (1 << 0)
#define STATUS_RX_FULL (1 << 1)
#define STATUS_TX_EMPTY (1 << 2)
#define STATUS_TX_FULL (1 << 3)
#define STATUS_BOOT_ACTIVE (1 << 4)
#define STATUS_RX_OVERRUN (1 << 5)
#define STATUS_FRAMING_ERR (1 << 6)

// Control Register Bitmasks
#define CTRL_RST_TX (1 << 0)
#define CTRL_RST_RX (1 << 1)
#define CTRL_CLR_ERRORS (1 << 2)

int main(void) {
  uint32_t data;

  // Initialization: Reset both FIFOs and clear any stale errors.
  // Assuming these control bits need to be asserted then de-asserted.
  *UART_CTRL = (CTRL_RST_TX | CTRL_RST_RX | CTRL_CLR_ERRORS);
  *UART_CTRL = 0; // Release the resets

  while (1) {
    // Optional: Check for and clear sticky errors (Overrun or Framing)
    if (*UART_STATUS & (STATUS_RX_OVERRUN | STATUS_FRAMING_ERR)) {
      *UART_CTRL = CTRL_CLR_ERRORS;
      *UART_CTRL = 0;
    }

    // 1. Check if there is data waiting in the RX FIFO
    if (*UART_STATUS & STATUS_RX_AVAIL) {

      // 2. Read the data from the top of the RX FIFO
      data = *UART_RX_FIFO;

      // 3. Wait until there is space in the TX FIFO
      // (Busy-wait blocking loop)
      while (*UART_STATUS & STATUS_TX_FULL) {
        // Wait
      }

      // 4. Write the data to the top of the TX FIFO to echo it back
      *UART_TX_FIFO = data;
    }
  }

  return 0;
}
