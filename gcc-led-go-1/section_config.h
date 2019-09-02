#ifndef __SECTION_CONFIG_H__
#define __SECTION_CONFIG_H__


#define SECTION(_name) __attribute__((__section__(_name)))

#define START_RAM_FUNC_SECTION \
	SECTION(".start.ram.data")

#define IMAGE2_TEXT_SECTION \
	SECTION(".img2.ram.text")

#define IMAGE2_DATA_SECTION \
	SECTION(".img2.ram.data")

#endif // __SECTION_CONFIG_H__

