#include "../../drivers/drivers.h"
#include <stdint.h>

void rx_echo_handle(void) {
  char rx = uart_getc();
  uart_putc(rx);
}

int main(void) {

  uart_puts("UART IRQ test, MINA SoC");

  // in uart enable the rx interrupt, then register the echo interrupt
  // handler
  *UART_IRQ_EN |= (1 << 0);

  reg_UART_irq(rx_echo_handle, 1);

  init_interrupts();

  // define the gpio register
  volatile uint32_t *gpio = (volatile uint32_t *)0x20003000;

  volatile uint32_t *gpio_t_state = gpio + 1;

  *gpio_t_state = 0x00000000;

  uint32_t toggle_helper = 0;

  volatile int i = 0;
  while (1) {
    if (i == 2000000) {
      // toggle GPIO

      toggle_helper = ~toggle_helper;
      *gpio = toggle_helper;

      // reset i
      i = 0;
    } else {
      i++;
    }
  }
}
