#include "irq_handler.h"

typedef struct ll {
  void_func_t func; // function pointer
  struct ll* next; // pointer to next element; NULL is last element
} ll_t;

result_t ll_insert(ll_t** ll, void_func_t func);
result_t ll_remove(ll_t** ll, void_func_t func);
void ll_execute(ll_t* ll);

static ll_t* exti4_15 = NULL;
static ll_t* dma_c1 = NULL;
static ll_t* dma_c2_c3 = NULL;
static ll_t* dma_c4_c5 = NULL;

result_t add_handler(IRQn_Type num, void_func_t func) {
  switch (num) {
    case DMA1_Channel1_IRQn:
      return ll_insert(&dma_c1, func);
    case DMA1_Channel2_3_IRQn:
      return ll_insert(&dma_c2_c3, func);
    case DMA1_Channel4_5_IRQn:
      return ll_insert(&dma_c4_c5, func);
    case EXTI4_15_IRQn:
      return ll_insert(&exti4_15, func);
    default:
      return RESULT_ERROR;
  }
}

result_t remove_handler(IRQn_Type num, void_func_t func) {
  switch (num) {
    case DMA1_Channel1_IRQn:
      return ll_remove(&dma_c1, func);
    case DMA1_Channel2_3_IRQn:
      return ll_remove(&dma_c2_c3, func);
    case DMA1_Channel4_5_IRQn:
      return ll_remove(&dma_c4_c5, func);
    case EXTI4_15_IRQn:
      return ll_remove(&exti4_15, func);
    default:
      return RESULT_ERROR;
  }
}

result_t ll_insert(ll_t** ll, void_func_t func) {
  if (ll == NULL) {
    return RESULT_ERROR;
  }

  ll_t* tmp = malloc(sizeof(ll_t));

  if (tmp == NULL) {
    return RESULT_ERROR;
  }

  tmp->func = func;
  tmp->next = *ll;
  *ll = tmp;

  return RESULT_OK;
}

result_t ll_remove(ll_t** ll, void_func_t func) {
  if (ll == NULL) {
    return RESULT_ERROR;
  }

  for (ll_t *curr = *ll, *last = NULL; curr != NULL; last = curr, curr = curr->next) {
    if (curr->func == func) {
      ll_t* next = curr->next;

      free(curr);

      if (last != NULL) {
        last->next = next;
      } else {
        *ll = next;
      }

      return RESULT_OK;
    }
  }

  return RESULT_ERROR;
}

void ll_execute(ll_t* ll) {
  for (ll_t* curr = ll; curr != NULL; curr = curr->next) {
    (*curr->func)();
  }
}

void DMA1_Channel1_IRQHandler() {
  ll_execute(dma_c1);
}

void DMA1_Channel2_3_IRQHandler() {
  ll_execute(dma_c2_c3);
}

void DMA1_Channel4_5_IRQHandler() {
  ll_execute(dma_c4_c5);
}

void EXTI4_15_IRQHandler() {
  ll_execute(exti4_15);
}
