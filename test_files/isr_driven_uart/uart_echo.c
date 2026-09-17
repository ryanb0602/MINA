#include "../../drivers/drivers.h"
#include <stdint.h>

int main(void) {

  volatile uint32_t *gpio = (volatile uint32_t *)0x20003000;

  volatile uint32_t *gpio_t_state = gpio + 1;

  *gpio_t_state = 0x00000000;

  init_interrupts();

  *gpio |= ~((uint32_t)0);

  uart_init();

  *gpio |= 0b0011;

  uart_puts("MINA SoC, ISR driven UART test\n");
  uart_puts("________________________________\n");

  while (1) {

    char c = uart_getc();
    uart_putc(c);
  }

  return 0;
}
