/*
  Copyright (c) 2011 Arduino.  All right reserved.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the GNU Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#ifdef __cplusplus
 extern "C" {
#endif

#include "basic_types.h"
#include "pin_names.h"
#include "section_config.h"
#include "wiring_digital.h"
#include "gpio.h"
#include "hal_peri_on.h"


static const u8 _GPIO_SWPORT_DR_TBL[] = {
    GPIO_PORTA_DR,
    GPIO_PORTB_DR,
    GPIO_PORTC_DR
};

static const u8 _GPIO_EXT_PORT_TBL[] = {
    GPIO_EXT_PORTA,
    GPIO_EXT_PORTB,
    GPIO_EXT_PORTC
};


typedef struct {
	gpio_t 	sGpio_t;
	u8		pin_num;
	u8		port_num;
	u8 		port_write;
	u8 		port_read;
} gpio_pin_t;


typedef struct _PinDescription
{
	uint32_t	pinname;
	uint32_t	ulPinType;
	uint32_t	ulPinMode;
} PinDescription;

/*
 * Pins descriptions
 */
PinDescription g_APinDescription[]=
{
  
  {PA_6, NOT_INITIAL, NOT_INITIAL}, //D0
  {PA_7, NOT_INITIAL, NOT_INITIAL}, //D1
  {PA_5, NOT_INITIAL, NOT_INITIAL}, //D2
  {PD_4, NOT_INITIAL, NOT_INITIAL}, //D3 : PWM1
  {PD_5, NOT_INITIAL, NOT_INITIAL}, //D4 : PWM2
  {PA_4, NOT_INITIAL, NOT_INITIAL}, //D5
  {PA_3, NOT_INITIAL, NOT_INITIAL}, //D6
  {PA_2, NOT_INITIAL, NOT_INITIAL}, //D7
  {PB_4, NOT_INITIAL, NOT_INITIAL}, //D8 : PWM0
  {PB_5, NOT_INITIAL, NOT_INITIAL}, //D9 : PWM1
  {PC_0, NOT_INITIAL, NOT_INITIAL}, //D10 : PWM0
  {PC_2, NOT_INITIAL, NOT_INITIAL}, //D11 : PWM2
  {PC_3, NOT_INITIAL, NOT_INITIAL}, //D12 : PWM3
  {PC_1, NOT_INITIAL, NOT_INITIAL},  //D13 : PWM1
  {PB_3, NOT_INITIAL, NOT_INITIAL},  //D14 : 
  {PB_2, NOT_INITIAL, NOT_INITIAL},  //D15 :
  {PA_1, NOT_INITIAL, NOT_INITIAL},  //D16 :
  {PA_0, NOT_INITIAL, NOT_INITIAL},  //D17 :
  {PE_5, NOT_INITIAL, NOT_INITIAL}  //D18 :

};


IMAGE2_DATA_SECTION
gpio_pin_t gpio_pin_struct[TOTAL_GPIO_PIN_NUM];


IMAGE2_TEXT_SECTION
void pinMode( uint32_t ulPin, uint32_t ulMode )
{
	//NeoJou
	PinName pinname;

	gpio_t *pGpio_t;
	gpio_pin_t *pGpio_pin_t;
	HAL_GPIO_PIN *pHal_gpio_pin;


	//DiagPrintf("[pinMode] ulPin=%d, ulMode=%d\r\n", ulPin, ulMode);
	if ( ulPin < 0 || ulPin > TOTAL_GPIO_PIN_NUM ) return;

	pGpio_pin_t = &gpio_pin_struct[ulPin];
	pGpio_t = &gpio_pin_struct[ulPin].sGpio_t;
	pHal_gpio_pin = &pGpio_t->hal_pin;

	if ( g_APinDescription[ulPin].ulPinType == PIO_GPIO && 
		 g_APinDescription[ulPin].ulPinMode == ulMode ) {
		 return;
	}

	if ( g_APinDescription[ulPin].ulPinType != PIO_GPIO ) {
		pinname = g_APinDescription[ulPin].pinname;
		//pinname = digital_pinMap[ulPin];
		//gpio_init(pGpio_t, pinname);
		
		pGpio_t->pin = pinname;
		pGpio_t->mode = PullNone;
		pGpio_t->direction = PIN_INPUT;
		pGpio_t->hal_pin.pin_name = gpio_set(pinname); // get the IP pin name
		pGpio_t->hal_pin.pin_mode = DIN_PULL_NONE;
		g_APinDescription[ulPin].ulPinType = PIO_GPIO;
	}


	switch ( ulMode )
	{
		case INPUT:
			pGpio_t->direction = PIN_INPUT;
			pGpio_t->mode = PullNone;
			//gpio_dir(pGpio_t, PIN_INPUT);	// Direction: Input
			//gpio_mode(pGpio_t, PullNone); 	// No pull

			break ;

		case INPUT_PULLUP:
			pGpio_t->direction = PIN_INPUT;
			pGpio_t->mode = PullUp;
			//gpio_dir(pGpio_t, PIN_INPUT);	// Direction: Input
			//gpio_mode(pGpio_t, PullUp); 	// Pull Up
			break ;

		case INPUT_PULLDN:
			pGpio_t->direction = PIN_INPUT;
			pGpio_t->mode = PullDown;
			break ;

		case OUTPUT:
			pGpio_t->direction = PIN_OUTPUT;
			pGpio_t->mode = PullNone;
			break ;

		case OUTPUT_OPENDRAIN:
			pGpio_t->direction = PIN_OUTPUT;
			pGpio_t->mode = OpenDrain;
			break;

		default:
		break ;
	}

	gpio_set_hal_pin_mode(pGpio_t);
	HAL_GPIO_Init(&(pGpio_t->hal_pin));
    pGpio_t->hal_port_num = HAL_GPIO_GET_PORT_BY_NAME(pHal_gpio_pin->pin_name);
    pGpio_t->hal_pin_num = HAL_GPIO_GET_PIN_BY_NAME(pHal_gpio_pin->pin_name);
	
	g_APinDescription[ulPin].ulPinMode = ulMode;

	//
	
	pGpio_pin_t->pin_num = pGpio_t->hal_pin_num;
	pGpio_pin_t->port_num = pGpio_t->hal_port_num;
	pGpio_pin_t->port_write = _GPIO_SWPORT_DR_TBL[pGpio_pin_t->port_num];
	pGpio_pin_t->port_read = _GPIO_EXT_PORT_TBL[pGpio_pin_t->port_num];

	//DiagPrintf(" %s : pin_num = %d \r\n", __FUNCTION__, pGpio_pin_t->pin_num);
}


IMAGE2_TEXT_SECTION
void digitalWrite( uint32_t ulPin, uint32_t ulVal )
{

	gpio_pin_t *pGpio_pin_t;
	gpio_t *pGpio_t;
    u32 RegValue;

	if ( ulPin < 0 || ulPin > TOTAL_GPIO_PIN_NUM ) return;

	/* Handle */
	if ( g_APinDescription[ulPin].ulPinType != PIO_GPIO )
	{
	  return ;
	}

	pGpio_pin_t = &gpio_pin_struct[ulPin];

	pGpio_t = &gpio_pin_struct[ulPin].sGpio_t;

	{
	    u8 port_num;
	    u8 pin_num;
		u8 port_write;

	    port_num = pGpio_pin_t->port_num;
	    pin_num = pGpio_pin_t->pin_num;
		port_write = pGpio_pin_t->port_write;
	    
		RegValue =	HAL_READ32(GPIO_REG_BASE, port_write);
		RegValue &= ~(1 << pin_num);
		RegValue |= ((ulVal&0x01)<< pin_num);
		HAL_WRITE32(GPIO_REG_BASE, port_write, RegValue);			
	}

}

#ifdef __cplusplus
}
#endif

