#include "../../drivers/include/uart.h"
#include <stdint.h>

int main(void) {
  // Send a boot message so you know the SoC and UART are alive
  uart_puts("\r\n=================================\r\n");
  uart_puts("   SoC UART Echo Test Started    \r\n");
  uart_puts("=================================\r\n");
  uart_puts("Type anything:\r\n");

  // Infinite echo loop
  while (1) {
    // 1. Block until a character is received
    char c = uart_getc();

    // 2. Immediately echo the character back to the terminal
    uart_putc(c);

    // 3. Terminal formatting: if 'Enter' is pressed, send a newline
    // so the terminal cursor moves down properly.
    if (c == '\r') {
      uart_putc('\n');
    }
  }

  // Bare-metal main should never return
  return 0;
}
