#include "../include/timer.h"
#include <stdint.h>

void init_timers() {

  *TIMER_COMP_PART1 = 0xFFFFFFFF;
  *TIMER_COMP_PART2 = 0xFFFFFFFF;

  reg_timer_irq(master_timer_isr);

  set_csr(mie, MIE_MTIE);
}

uint64_t read_time() {
  uint32_t lo = *TIMER_COMP_PART1;

  uint32_t hi = *TIMER_COMP_PART2;

  return (((uint64_t)hi) << 32) | lo;
}

void set_compare(uint64_t comp) {
  *TIMER_COMP_PART1 = 0xFFFFFFFF;

  *TIMER_COMP_PART2 = (uint32_t)(comp >> 32);

  *TIMER_COMP_PART1 = (uint32_t)comp;
}

void swap_in_heap(int a_i, int b_i) {
  irq_timer_t *temp = timer_heap[a_i];
  timer_heap[a_i] = timer_heap[b_i];
  timer_heap[b_i] = temp;
}

// first call should be, num_timers, 0
void min_heapify(int sz, int i) {
  int smallest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < sz &&
      timer_heap[left]->expires_at < timer_heap[smallest]->expires_at) {
    smallest = left;
  }

  if (right < sz &&
      timer_heap[right]->expires_at < timer_heap[smallest]->expires_at) {
    smallest = right;
  }

  if (smallest != i) {
    swap_in_heap(i, smallest);
    min_heapify(sz, smallest);
  }
}

void sift_up(int i) {
  int parent = (i - 1) / 2;
  while (i > 0 && timer_heap[i]->expires_at < timer_heap[parent]->expires_at) {
    swap_in_heap(i, parent);

    // Move up the tree
    i = parent;
    parent = (i - 1) / 2;
  }
}

irq_timer_handler register_isr_periodic(uint64_t period, void *cb) {

  if (num_timers == MAX_TIMERS) {
    return (irq_timer_handler){};
  }

  int i = 0;
  while (1) {
    if (timer_pool[i].active == false) {
      break;
    } else {
      i++;
    }
  }

  timer_pool[i].expires_at = read_time() + period;
  timer_pool[i].period = period;
  timer_pool[i].callback_function = cb;
  timer_pool[i].active = true;

  num_timers++;

  timer_heap[num_timers - 1] = &timer_pool[i];
  sift_up(num_timers - 1);

  if (timer_heap[0] == &timer_pool[i]) {
    set_compare(timer_heap[0]->expires_at);
  }

  irq_timer_handler new_handler = {.ptr = &timer_pool[i]};
  return new_handler;
}

bool register_isr_abs(uint64_t offset, void *cb) {

  if (num_timers == MAX_TIMERS) {
    return false;
  }

  int i = 0;
  while (1) {
    if (timer_pool[i].active == false) {
      break;
    } else {
      i++;
    }
  }

  timer_pool[i].expires_at = read_time() + offset;
  timer_pool[i].period = 0;
  timer_pool[i].callback_function = cb;
  timer_pool[i].active = true;

  num_timers++;

  timer_heap[num_timers - 1] = &timer_pool[i];
  sift_up(num_timers - 1);

  if (timer_heap[0] == &timer_pool[i]) {
    set_compare(timer_heap[0]->expires_at);
  }

  return true;
}

bool deactivate_timer(irq_timer_handler targ) {
  return _deactivate_timer(targ.ptr);
}

bool _deactivate_timer(irq_timer_t *timer) {
  if (timer == NULL || !timer->active) {
    return false;
  }

  // 1. Mark as inactive so the pool slot can be reused
  timer->active = false;

  // 2. Find the timer in the heap (O(N) search, but MAX_TIMERS is small)
  int heap_idx = -1;
  for (int i = 0; i < num_timers; i++) {
    if (timer_heap[i] == timer) {
      heap_idx = i;
      break;
    }
  }

  if (heap_idx == -1) {
    return false; // Timer was active but not in heap (state error)
  }

  // 3. Replace the removed timer with the last timer in the heap
  timer_heap[heap_idx] = timer_heap[num_timers - 1];
  num_timers--;

  // 4. Restore the heap property
  if (heap_idx < num_timers) {
    int parent = (heap_idx - 1) / 2;

    // If the new node is smaller than its parent, it needs to bubble up
    if (heap_idx > 0 &&
        timer_heap[heap_idx]->expires_at < timer_heap[parent]->expires_at) {
      sift_up(heap_idx);
    }
    // Otherwise, it might need to bubble down
    else {
      min_heapify(num_timers, heap_idx);
    }
  }

  // 5. If we just removed the root (or the heap is now empty),
  //    we must update the hardware timer compare register.
  if (heap_idx == 0 || num_timers == 0) {
    if (num_timers > 0) {
      set_compare(timer_heap[0]->expires_at);
    } else {
      // No timers left, set compare to maximum 64-bit value to prevent
      // interrupts
      set_compare(0xFFFFFFFFFFFFFFFFULL);
    }
  }

  return true;
}

void master_timer_isr() {
  // Loop to handle cases where multiple timers expire at the same time,
  // or if a callback execution delays us past the next timer's expiration.
  while (num_timers > 0 && timer_heap[0]->expires_at <= read_time()) {

    // 1. Get the timer at the top of the heap
    irq_timer_t *top_timer = timer_heap[0];

    // 2. Run the callback function
    if (top_timer->callback_function != NULL) {
      // Cast the void* to a function pointer and execute it
      void (*callback)(void) = (void (*)(void))top_timer->callback_function;
      callback();
    }

    // 3. Handle periodic vs absolute
    if (top_timer->period > 0) {
      // Periodic: Update expires_at
      // (Adding period to the *previous* expires_at prevents timing drift over
      // time)
      top_timer->expires_at += top_timer->period;

      // Push the modified top timer down to its new correct position
      min_heapify(num_timers, 0);
    } else {
      _deactivate_timer(top_timer);
    }
  }

  if (num_timers > 0) {
    set_compare(timer_heap[0]->expires_at);
  }
}
