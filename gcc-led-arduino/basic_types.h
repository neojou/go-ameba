#ifndef __BASIC_TYPES_H__
#define __BASIC_TYPES_H__

#include <stdint.h>

#ifndef u8 
#define u8 uint8_t
#endif
#ifndef u16
#define u16 uint16_t
#endif
#ifndef u32
#define u32 uint32_t
#endif

#define OFF	0
#define ON	1

#define BIT(x)		((u32)1 << (x))


// Arduino
#define NOT_INITIAL	0
#define PIO_GPIO	1
#define PIO_PWM		2
#define PIO_I2C		3

#endif

