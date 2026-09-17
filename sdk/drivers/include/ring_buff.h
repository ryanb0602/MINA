#ifndef RING_BUFF_H
#define RING_BUFF_H

#include <stdbool.h>
#include <stdint.h>

#define RING_BUFFER_SIZE 256

typedef struct {
  char buffer[RING_BUFFER_SIZE];
  uint8_t head;
  uint8_t tail;
} ring_buffer_t;

void init_ring_buffer(ring_buffer_t *rb);
void reset_ring_buffer(ring_buffer_t *rb);

bool insert_rb(ring_buffer_t *rb, char c);
bool pop_rb(ring_buffer_t *rb, char *c);

#endif
