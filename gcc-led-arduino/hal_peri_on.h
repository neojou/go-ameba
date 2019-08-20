#ifndef __HAL_PERI_ON_H__
#define __HAL_PERI_ON_H__


/* platform */
#define MASK_ALLON	0xFFFFFFFF

#define PERI_ON_BASE	0x40000000
#define GPIO_REG_BASE	0x40001000

/* register address definition */
#define REG_SOC_PERI_FUNC1_EN	0x021C
#define REG_PESOC_CLK_CTRL	0x0230
#define REG_GPIO_SHTDN_CTRL	0x0320

/* REG_SOC_PERI_FUNC1_EN */
#define BIT_PERI_GPIO_EN	BIT(8)

/* REG_PESOC_CLK_CTRL */
#define BIT_SOC_SLPCK_GPIO_EN	BIT(25)
#define BIT_SOC_ACTCK_GPIO_EN	BIT(24)


#define HAL_READ32(base, addr)		(*((volatile u32 *)(base + addr)))
#define HAL_WRITE32(base, addr, value32) \
	(*((volatile u32 *)(base + addr)) = value32)

//
#define HAL_PERI_ON_READ32(addr)		HAL_READ32(PERI_ON_BASE, addr)
#define HAL_PERI_ON_WRITE32(addr, value)	HAL_WRITE32(PERI_ON_BASE, addr, value)


//
#define HAL_PERI_ON_FUNC_CTRL(addr, value, ctrl) \
	HAL_PERI_ON_WRITE32(addr, ((HAL_PERI_ON_READ32(addr) & (~value)) | ((MASK_ALLON - ctrl + 1) & value)))

#define GPIO_FCTRL(ctrl) {\
		if (!ctrl) { \
			HAL_READ32(GPIO_REG_BASE, 0); \
		}\
		HAL_PERI_ON_FUNC_CTRL(REG_SOC_PERI_FUNC1_EN, BIT_PERI_GPIO_EN, ctrl); }

//
#define ACTCK_GPIO_CCTRL(ctrl) \
	HAL_PERI_ON_FUNC_CTRL(REG_PESOC_CLK_CTRL, BIT_SOC_ACTCK_GPIO_EN, ctrl)
#define SLPCK_GPIO_CCTRL(ctrl) \
	HAL_PERI_ON_FUNC_CTRL(REG_PESOC_CLK_CTRL, BIT_SOC_SLPCK_GPIO_EN, ctrl)


#endif // __HAL_PERI_ON_H__

