CC=arm-none-eabi-gcc

CFLAGS=-c -g -w -mthumb -mcpu=cortex-m3 -Os  
CFLAGS+=-fno-short-enums -fno-common -fmessage-length=0 -Wall 
CFLAGS+=-fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer
CFLAGS+=-MMD -MP

LDFLAGS=-Os -mcpu=cortex-m3 -mthumb --specs=nano.specs
LDFLAGS+= -Wl,--cref -Wl,--gc-sections -Wl,--entry=InfraStart -Wl,--no-enum-size-warning -Wl,--no-wchar-size-warning

OBJS= main.o wiring_digital.o

all: $(OBJS)
	$(CC) $(LDFLAGS) -T rtl8195a.ld -Wl,-Map=target.map -o target.axf $(OBJS) ./librt_ameba.a -lm -lc -lgcc -lnosys
	./binfiletool
	arm-none-eabi-objdump -d target.axf > target.asm

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@ 

clean:
	rm -f *.o *.d *.bin *.map *.asm *.pad *.nm *.axf

