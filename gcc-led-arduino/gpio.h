/*
 *  Routines to access hardware
 *
 *  Copyright (c) 2013 Realtek Semiconductor Corp.
 *
 *  This module is a confidential and proprietary property of RealTek and
 *  possession or use of this module requires written permission of RealTek.
 */

#include "basic_types.h"
#include "pin_names.h"

#ifndef __GPIO_H__
#define __GPIO_H__


#define GPIO_PORTA_DR           0x00        // data register
#define GPIO_PORTA_DDR          0x04        // data direction
#define GPIO_PORTA_CTRL         0x08        // data source control, we should keep it as default: data source from software

#define GPIO_PORTB_DR           0x0c        // data register
#define GPIO_PORTB_DDR          0x10        // data direction
#define GPIO_PORTB_CTRL         0x14        // data source control, we should keep it as default: data source from software

#define GPIO_PORTC_DR           0x18        // data register
#define GPIO_PORTC_DDR          0x1c        // data direction
#define GPIO_PORTC_CTRL         0x20        // data source control, we should keep it as default: data source from software

//1 Only the PORTA can be configured to generate interrupts
#define GPIO_INT_EN             0x30        // Interrupt enable register
#define GPIO_INT_MASK           0x34        // Interrupt mask
#define GPIO_INT_TYPE           0x38        // Interrupt type(level/edge) register
#define GPIO_INT_POLARITY       0x3C        // Interrupt polarity(Active low/high) register
#define GPIO_INT_STATUS         0x40        // Interrupt status
#define GPIO_INT_RAWSTATUS      0x44        // Interrupt status without mask
#define GPIO_DEBOUNCE           0x48        // Interrupt signal debounce
#define GPIO_PORTA_EOI          0x4c        // Clear interrupt

#define GPIO_EXT_PORTA          0x50        // GPIO IN read or OUT read back
#define GPIO_EXT_PORTB          0x54        // GPIO IN read or OUT read back
#define GPIO_EXT_PORTC          0x58        // GPIO IN read or OUT read back

#define GPIO_INT_SYNC           0x60        // Is level-sensitive interrupt being sync sith PCLK

#define REG_GPIO_PULL_CTRL1	0x0334

#define HAL_GPIO_PIN_INT_MODE	0x80

#define HAL_GPIO_PIN_NAME(port, pin)	(((port)<<5)|pin)
#define HAL_GPIO_GET_PORT_BY_NAME(x)	((x>>5) & 0x03)
#define HAL_GPIO_GET_PIN_BY_NAME(x)	(x & 0x1f)

#define GPIO_PORTA_DR	0x0
#define GPIO_PORTB_DR	0xc

enum {
	GPIO_PORT_A = 0,
	GPIO_PORT_B = 1,
	GPIO_PORT_C = 2,
	GPIO_PORT_D = 3
};

typedef enum {
	DIN_PULL_NONE	= 0,
	DIN_PULL_LOW	= 1,
	DIN_PULL_HIGH	= 2,

	DOUT_PUSH_PULL	= 3,
	DOUT_OPEN_DRAIN	= 4,
	
	INT_LOW		= (5|HAL_GPIO_PIN_INT_MODE),
	INT_HIGH	= (6|HAL_GPIO_PIN_INT_MODE),
	INT_FALLING	= (7|HAL_GPIO_PIN_INT_MODE),
	INT_RISING	= (8|HAL_GPIO_PIN_INT_MODE),
} HAL_GPIO_PIN_MODE;

enum {
    HAL_GPIO_HIGHZ      = 0,
    HAL_GPIO_PULL_LOW   = 1,
    HAL_GPIO_PULL_HIGH  = 2
};

typedef struct _HAL_GPIO_PIN_ {
	HAL_GPIO_PIN_MODE	pin_mode;
	u32 pin_name;
} HAL_GPIO_PIN, *PHAL_GPIO_PIN;

struct gpio_s {
	PinName pin;
	PinMode mode;
	PinDirection direction;
	HAL_GPIO_PIN hal_pin;
	uint8_t hal_port_num;
	uint8_t hal_pin_num;
};

typedef struct gpio_s gpio_t;

#endif  // __GPIO_H__

