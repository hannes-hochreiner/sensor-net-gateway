#include "uart.h"
// 2.097 MHz

static uart_tx_t* tx; // Transmission buffer
static uint32_t txCntr = 0; // Transmission buffer counter
static bool txPending = false;
static uart_rx_t* rx; // Reception buffer
static uint32_t rxCntr = 0; // Reception buffer counter

void uart_irq_handler();

result_t uart_init() {
  // set up pins (push-pull, very high speed)
  // RX  ... PA10
  // TX  ... PA9
  // CTS ... PA11 (PA0)
  // RTS ... PA12 (PA1)
  // set IOPCEN of RCC_IOPENR (GPIO port A enable)
  RCC->IOPENR |= RCC_IOPENR_IOPAEN;
  // set MODE9 and MODE10 of GPIOA_MODER to 10 (alternate function on PA9 and PA10)
  GPIOA->MODER = (GPIOA->MODER & ~GPIO_MODER_MODE9) | GPIO_MODER_MODE9_1;
  GPIOA->MODER = (GPIOA->MODER & ~GPIO_MODER_MODE10) | GPIO_MODER_MODE10_1;
  // GPIOA->MODER = (GPIOA->MODER & ~GPIO_MODER_MODE11) | GPIO_MODER_MODE11_1;
  // GPIOA->MODER = (GPIOA->MODER & ~GPIO_MODER_MODE12) | GPIO_MODER_MODE12_1;
  // reset OT9 and OT10 of GPIOA_OTYPER to 0 (set PA9 and PA10 to output push-pull)
  GPIOA->OTYPER &= ~(GPIO_OTYPER_OT_9 | GPIO_OTYPER_OT_10 | GPIO_OTYPER_OT_11 | GPIO_OTYPER_OT_12);
  // set OSPEED9 and OSPEED10 of GPIOC_OSPEEDR to 11 (set very high speed for PA9 and PA10)
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & ~GPIO_OSPEEDER_OSPEED9) | GPIO_OSPEEDER_OSPEED9_0 | GPIO_OSPEEDER_OSPEED9_1;
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & ~GPIO_OSPEEDER_OSPEED10) | GPIO_OSPEEDER_OSPEED10_0 | GPIO_OSPEEDER_OSPEED10_1;
  // GPIOA->OSPEEDR = (GPIOA->OSPEEDR & ~GPIO_OSPEEDER_OSPEED11) | GPIO_OSPEEDER_OSPEED11_0 | GPIO_OSPEEDER_OSPEED11_1;
  // GPIOA->OSPEEDR = (GPIOA->OSPEEDR & ~GPIO_OSPEEDER_OSPEED12) | GPIO_OSPEEDER_OSPEED12_0 | GPIO_OSPEEDER_OSPEED12_1;
  // set alternative function 4 for PA9 and PA10
  GPIOA->AFR[1] = (GPIOA->AFR[1] & ~(GPIO_AFRH_AFSEL9)) | (0b0100 << GPIO_AFRH_AFSEL9_Pos);
  GPIOA->AFR[1] = (GPIOA->AFR[1] & ~(GPIO_AFRH_AFSEL10)) | (0b0100 << GPIO_AFRH_AFSEL10_Pos);
  // GPIOA->AFR[1] = (GPIOA->AFR[1] & ~(GPIO_AFRH_AFSEL11)) | (0b0100 << GPIO_AFRH_AFSEL11_Pos);
  // GPIOA->AFR[1] = (GPIOA->AFR[1] & ~(GPIO_AFRH_AFSEL12)) | (0b0100 << GPIO_AFRH_AFSEL12_Pos);
  // GPIOA->AFR[0] = (GPIOA->AFR[0] & ~(GPIO_AFRL_AFSEL0)) | (0b0100 << GPIO_AFRL_AFSEL0_Pos);
  // GPIOA->AFR[0] = (GPIOA->AFR[0] & ~(GPIO_AFRL_AFSEL1)) | (0b0100 << GPIO_AFRL_AFSEL1_Pos);
  // set pull up for TX line => avoiding problems when TX is disabled
  // GPIOA->PUPDR = (GPIOA->PUPDR & ~GPIO_PUPDR_PUPD9) | (0b01 << GPIO_PUPDR_PUPD9_Pos);
  GPIOA->PUPDR = (GPIOA->PUPDR & ~GPIO_PUPDR_PUPD10) | (0b01 << GPIO_PUPDR_PUPD10_Pos);

  // set up interrupt on PA15
  // RCC->IOPENR |= RCC_IOPENR_GPIOAEN;
  // RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
  // GPIOA->MODER = (GPIOA->MODER & ~(GPIO_MODER_MODE15));
  // GPIOA->PUPDR = (GPIOA->PUPDR & ~GPIO_PUPDR_PUPD15_Msk) | GPIO_PUPDR_PUPD15_1;
  // SYSCFG->EXTICR[1] |= (uint16_t)SYSCFG_EXTICR2_EXTI5_PA;
  // EXTI->IMR |= EXTI_IMR_IM15;
  // EXTI->RTSR |= EXTI_RTSR_RT15;
  // EXTI->FTSR |= EXTI_FTSR_FT15;
  // add_handler(EXTI4_15_IRQn, &uart_irq_handler);
  // NVIC_EnableIRQ(EXTI4_15_IRQn);

  // enable UART2
  RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
  // USART_CR1 => word length
  // 8-bit is default
  // USART_BRR => baud rate (2.097 MHz / 20970 = 100d = 64x)
  // USART2->BRR = 0x64;
  // USART_BRR => baud rate (2.097 MHz / 9600 = 218d = DAx)
  USART2->BRR = 1600;
  // USART_CR2 => stop bits
  // one stop bit is default
  // USART2->CR3 |= USART_CR3_CTSE | USART_CR3_RTSE;
  // USART_CR1 set UE => enable USART
  USART2->CR2 |= USART_CR2_SWAP;
  USART2->CR1 |= USART_CR1_UE;
  // set up interrupt
  NVIC_EnableIRQ(USART2_IRQn);
  return RESULT_OK;
}

void uart_irq_handler() {
  volatile uint32_t pr = EXTI->PR;
  volatile uint32_t idr = GPIOA->IDR;

  EXTI->PR |= EXTI_PR_PIF15;
}

result_t uart_write(uart_tx_t* utx) {
  if (txPending) {
    return RESULT_ERROR;
  }

  txPending = true;
  tx = malloc(sizeof(uart_tx_t));

  if (tx == NULL) {
    return RESULT_ERROR;
  }

  tx->buffer = malloc(utx->length);

  if (tx->buffer == NULL) {
    return RESULT_ERROR;
  }

  memcpy(tx->buffer, utx->buffer, utx->length);
  tx->length = utx->length;

  txCntr = 0;

  USART2->CR1 |= (USART_CR1_TE | USART_CR1_TXEIE | USART_CR1_TCIE);

  return RESULT_OK;
}

result_t uart_read(uart_rx_t* urx) {
  rx = urx;
  rxCntr = 0;

  USART2->CR1 |= (USART_CR1_RE | USART_CR1_RXNEIE);

  return RESULT_OK;
}

void USART2_IRQHandler() {
  volatile uint32_t isr = USART2->ISR;

  if ((isr & USART_ISR_RXNE) == USART_ISR_RXNE) {
    if (rxCntr < rx->length) {
      rx->buffer[rxCntr++] = USART2->RDR;

      if (rx->buffer[rxCntr - 1] == '\n') {
        USART2->CR1 &= ~(USART_CR1_RE | USART_CR1_RXNEIE);
        (*rx->callback)(rxCntr - 1);
      }
    }
  }

  if ((isr & USART_ISR_TXE) == USART_ISR_TXE) {
    if (txCntr < tx->length) {
      USART2->TDR = tx->buffer[txCntr++];
    } else {
      if ((isr & USART_ISR_TC) == USART_ISR_TC) {
        USART2->CR1 &= ~(USART_CR1_TE | USART_CR1_TXEIE | USART_CR1_TCIE);
        free(tx->buffer);
        free(tx);
        tx = NULL;
        txPending = false;
      }
    }
  }
}
