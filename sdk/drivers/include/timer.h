#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#include "./irq.h"

#ifndef TIMER_H
#define TIMER_H

#define MAX_TIMERS 64

#define TIMER_BASE 0x20001000

#define TIMER_CLK_PART1 ((volatile uint32_t *)(PLIC_BASE + 0x00))
#define TIMER_CLK_PART2 ((volatile uint32_t *)(PLIC_BASE + 0x04))
#define TIMER_COMP_PART1 ((volatile uint32_t *)(PLIC_BASE + 0x08))
#define TIMER_COMP_PART2 ((volatile uint32_t *)(PLIC_BASE + 0x0C))

#define MIE_MTIE (1 << 7)

#define CLK_RATE 100 * (10 ^ 6) / 1000 // Clks per ms

#define TIMER_TO_MS(X) (X / CLK_RATE)

typedef struct {

  uint64_t expires_at;
  uint64_t period; // 0 for one time timer, otherwise defines periodic
  void *callback_function;
  bool active;

} irq_timer_t;

typedef struct {
  irq_timer_t *ptr;
} irq_timer_handler;

static int num_timers = 0;
static irq_timer_t timer_pool[MAX_TIMERS];
static irq_timer_t *timer_heap[MAX_TIMERS];

void init_timers();
void master_timer_isr();

irq_timer_handler register_isr_periodic(uint64_t period, void *cb);
bool register_isr_abs(uint64_t offset, void *cb);

uint64_t read_time();
void set_compare(uint64_t comp);

bool deactivate_timer(irq_timer_handler targ);
bool _deactivate_timer(irq_timer_t *timer);

void min_heapify(int sz, int i);
void swap_in_heap(int a_i, int b_i);
void sift_up(int i);

#endif
