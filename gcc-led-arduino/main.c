#include <stdint.h>
#include <string.h>
#include "basic_types.h"
#include "pin_names.h"
#include "section_config.h"
#include "hal_peri_on.h"
#include "wiring_constants.h"
#include "wiring_digital.h"
#include "gpio.h"
#include "cmsis_os.h"

typedef void (*HAL_VECTOR_FUN)(void);

extern HAL_VECTOR_FUN NewVectorTable[];

extern void SVC_Handler(void);
extern void PendSV_Handler(void);
extern void SysTick_Handler(void);

static inline void VectorTableSettingForOS(
	void *PortSVC,
	void *PortPendSVH,
	void *PortSysTick
)
{
	NewVectorTable[11] = (HAL_VECTOR_FUN)PortSVC;
	NewVectorTable[14] = (HAL_VECTOR_FUN)PortPendSVH;
	NewVectorTable[15] = (HAL_VECTOR_FUN)PortSysTick;
}

void _AppStart(void)
{
	VectorTableSettingForOS((void*)SVC_Handler, (void*)PendSV_Handler,
				(void*)SysTick_Handler);

	__asm (
		"ldr r0, =SystemInit\n"
		"blx r0\n"
		"ldr r0, =_start\n"
		"bx r0\n"
	);
}

IMAGE2_TEXT_SECTION
void delay(uint32_t ms)
{
	osStatus ret;

	ret = osDelay(ms);
}

void loop() {
	digitalWrite(13, HIGH);
	delay(1000);
	digitalWrite(13, LOW);
	delay(1000);
}

IMAGE2_TEXT_SECTION
int main(void)
{
	__libc_init_array();

	pinMode(13, OUTPUT);

	for (;;) {
		loop();
		osThreadYield();
	}

	return 0;
}

