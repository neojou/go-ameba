#include <stdint.h>
#include <string.h>
#include "basic_types.h"
#include "pin_names.h"
#include "section_config.h"
#include "hal_peri_on.h"
#include "wiring_constants.h"
#include "wiring_digital.h"
#include "gpio.h"


void _AppStart(void)
{
	SystemInit();
	main();
}


IMAGE2_TEXT_SECTION
int main(void)
{
	__libc_init_array();

	pinMode(13, OUTPUT);
	digitalWrite(13, HIGH);

	for (;;) {
	}

	return 0;
}

