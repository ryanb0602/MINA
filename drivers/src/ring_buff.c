#include "../include/ring_buff.h"

void init_ring_buffer(ring_buffer_t *rb) {
  // No malloc needed! The memory is already allocated as part of the struct.
  rb->head = 0;
  rb->tail = 0;
}

void reset_ring_buffer(ring_buffer_t *rb) {
  rb->head = 0;
  rb->tail = 0;
}

bool insert_rb(ring_buffer_t *rb, char c) {
  // Calculate what the next head position will be.
  // uint8_t naturally wraps from 255 back to 0.
  uint8_t next_head = (uint8_t)(rb->head + 1);

  // If the next head hits the tail, the buffer is full.
  // Note: This design sacrifices 1 byte of capacity, holding a max of 255
  // items.
  if (next_head == rb->tail) {
    return false;
  }

  rb->buffer[rb->head] = c;
  rb->head = next_head;

  return true;
}

bool pop_rb(ring_buffer_t *rb, char *c) {
  // If head and tail are at the same position, the buffer is empty.
  if (rb->head == rb->tail) {
    return false;
  }

  *c = rb->buffer[rb->tail];
  rb->tail = (uint8_t)(rb->tail + 1); // Naturally wraps back to 0

  return true;
}
