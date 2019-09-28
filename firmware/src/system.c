#include "system.h"

result_t switch_to_hsi16() {
  RCC->CR |= RCC_CR_HSION;

  while ((RCC->CR & RCC_CR_HSIRDY) != RCC_CR_HSIRDY) {
    __NOP();
  }

  RCC->CICR |= RCC_CICR_HSIRDYC;
  RCC->CFGR = ((RCC->CFGR & ~(RCC_CFGR_SW)) | RCC_CFGR_SW_HSI);

  while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_HSI) {
    __NOP();
  }

  return RESULT_OK;
}

void switch_to_external() {
  // RCC->CIER |= RCC_CIER_HSERDYIE;
  // PA1 = OSC_EN => set high
  // set IOPCEN of RCC_IOPENR (GPIO port A enable)
  RCC->IOPENR |= RCC_IOPENR_IOPAEN;
  // set MODE1 of GPIOA_MODER to 01 (output push-pull on PA1)
  GPIOA->MODER = (GPIOA->MODER & ~GPIO_MODER_MODE1) | GPIO_MODER_MODE1_0;
  // set OT1 of GPIOA_OTYPER to 0 (set PA1 to output push-pull)
  GPIOA->OTYPER &= ~GPIO_OTYPER_OT_1;
  // set OSPEED3 of GPIOC_OSPEEDR to 11 (set very high speed for PA1)
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & ~GPIO_OSPEEDER_OSPEED1) | GPIO_OSPEEDER_OSPEED1_1 | GPIO_OSPEEDER_OSPEED1_1;
  // set pin
  GPIOA->BSRR = GPIO_BSRR_BS_1;

  while((GPIOA->ODR & GPIO_ODR_OD1) != GPIO_ODR_OD1) {
    __NOP();
  }

  RCC->CR |= 0x00080000 | RCC_CR_HSEBYP | RCC_CR_HSEON;

  while ((RCC->CR & RCC_CR_HSERDY) != RCC_CR_HSERDY) {
    __NOP;
  }

  if ((RCC->CR & RCC_CR_HSERDY) != 0) {
    volatile uint8_t tmp = 5;
    // RCC->CICR |= RCC_CICR_HSERDYC;
    // RCC->CFGR = ((RCC->CFGR & (~RCC_CFGR_SW)) | RCC_CFGR_SW_HSE);
  }
}

void stop_enable() {
  SCB->SCR |= (1 << SCB_SCR_SLEEPDEEP_Pos);
  PWR->CR |= (PWR_CR_ULP) | (PWR_CR_LPDS_Pos);
}

void stop_disable() {
  PWR->CR &= ~((PWR_CR_ULP) | (PWR_CR_LPDS_Pos));
  SCB->SCR &= ~(1 << SCB_SCR_SLEEPDEEP_Pos);
}
