#include <main.h>

unsigned int gTickCount = 0;

extern "C"
void SysTick_Handler(void) {
	gTickCount++;
}

void initClockInternal() {
	RCC->CR |= RCC_CR_HSION;							// enable internal clock
	while (!(RCC->CR & RCC_CR_HSIRDY)) {}
	
	RCC->CR |= RCC_CR_PLLON;							// enable PLL
	while (!(RCC->CR & RCC_CR_PLLRDY)) {}
	
	RCC->CFGR |= (0x02 << RCC_CFGR_SW_Pos);				// select PLL as system clock
	while ((RCC->CFGR & RCC_CFGR_SWS) != (0x02 << RCC_CFGR_SWS_Pos)) {}
	
//	RCC->CR2 |= RCC_CR2_HSI14ON;						// enable internal 14-meg clock for ADC
//	while (!(RCC->CR2 & RCC_CR2_HSI14RDY)) {}
	
	RCC->CFGR |= RCC_CFGR_PLLMUL12;						// PLL input clock x12
	
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN |					// enable clock for GPIOA
				   RCC_AHBENR_GPIOBEN |					// enable clock for GPIOB
				   RCC_AHBENR_GPIOFEN;					// enable clock for GPIOF

	RCC->APB2ENR |= RCC_APB2ENR_TIM1EN |				// enable timer 1
				    //RCC_APB2ENR_ADCEN |					// enable ADC
					RCC_APB2ENR_USART1EN |				// enable USART
		            RCC_APB2ENR_SPI1EN;					// enable SPI
}
void initClockExternal() {
	RCC->CR |= RCC_CR_HSION;							// enable internal clock (aparently required for FLASH)
	while (!(RCC->CR & RCC_CR_HSIRDY)) {}
	
	RCC->CR |= RCC_CR_HSEON;							// enable external clock	
	while (!(RCC->CR & RCC_CR_HSERDY)) {}
	
	RCC->CR |= RCC_CR_PLLON;							// enable PLL
	while (!(RCC->CR & RCC_CR_PLLRDY)) {}
	
	RCC->CFGR |= (0x02 << RCC_CFGR_SW_Pos);				// select PLL as system clock
	while ((RCC->CFGR & RCC_CFGR_SWS) != (0x02 << RCC_CFGR_SWS_Pos)) {}
	
//	RCC->CR2 |= RCC_CR2_HSI14ON;						// enable internal 14-meg clock for ADC
//	while (!(RCC->CR2 & RCC_CR2_HSI14RDY)) {}
	
	RCC->CFGR |= RCC_CFGR_PLLMUL6;						// PLL input clock x6
	
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN |					// enable clock for GPIOA
				   RCC_AHBENR_GPIOBEN |					// enable clock for GPIOB
				   RCC_AHBENR_GPIOFEN;					// enable clock for GPIOF

	RCC->APB2ENR |= RCC_APB2ENR_TIM1EN |				// enable timer 1
				    RCC_APB2ENR_ADCEN |					// enable ADC
					RCC_APB2ENR_USART1EN |				// enable USART
				    RCC_APB2ENR_SPI1EN;					// enable SPI
}
void initSysTick() {
	SysTick->LOAD = (SysTick->CALIB & SysTick_CALIB_TENMS_Msk) - 1;	// 1 ms period
	SysTick->VAL = 0;
	SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |		// enable source
	                 SysTick_CTRL_TICKINT_Msk   |		// enable interrupt
	                 SysTick_CTRL_ENABLE_Msk;			// enable systick
}
void delay(int ms) {
	int tick = gTickCount;
	while (gTickCount - tick < ms) {}
}
