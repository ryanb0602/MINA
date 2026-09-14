#include <stdint.h>

int main(void) {

  // pins should be output by default, no need for any config step

  // define the gpio register
  volatile uint32_t *gpio = (volatile uint32_t *)0x20003000;

  uint32_t toggle_helper = 0;

  volatile int i = 0;
  while (1) {
    if (i == 100000000) {
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
