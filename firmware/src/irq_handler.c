#include "irq_handler.h"

static ll_t* exti4_15 = NULL;
static ll_t* dma_c1 = NULL;
static ll_t* dma_c2_c3 = NULL;
static ll_t* dma_c4_c5 = NULL;

void irq_ll_callback(void *data) {
  (*(void_func_t)data)();
}

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

void DMA1_Channel1_IRQHandler() {
  ll_execute(dma_c1, irq_ll_callback);
}

void DMA1_Channel2_3_IRQHandler() {
  ll_execute(dma_c2_c3, irq_ll_callback);
}

void DMA1_Channel4_5_IRQHandler() {
  ll_execute(dma_c4_c5, irq_ll_callback);
}

void EXTI4_15_IRQHandler() {
  ll_execute(exti4_15, irq_ll_callback);
}
