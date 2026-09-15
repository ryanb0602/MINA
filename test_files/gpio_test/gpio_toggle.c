#include <stdint.h>

int main(void) {

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
