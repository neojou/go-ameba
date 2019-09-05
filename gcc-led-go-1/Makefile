CC=arm-none-eabi-gcc
GO=gccgo

CFLAGS=-c -g -w -mthumb -mcpu=cortex-m3 -Os  
CFLAGS+=-fno-short-enums -fno-common -fmessage-length=0 -Wall 
CFLAGS+=-fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer
CFLAGS+=-MMD -MP

GOFLAGS=-c -g -w -Os --with-arch=armv7-m 
GOFLAGS+=-fno-short-enums -fno-common -fmessage-length=0 -Wall 
GOFLAGS+=-fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer
GOFLAGS+=-MMD -MP

LDFLAGS=-Os -mcpu=cortex-m3 -mthumb --specs=nano.specs
LDFLAGS+= -Wl,--cref -Wl,--gc-sections -Wl,--entry=InfraStart -Wl,--no-enum-size-warning -Wl,--no-wchar-size-warning

OBJS= cmain.o wiring_digital.o main.goo

all: $(OBJS)
	$(CC) $(LDFLAGS) -T rtl8195a.ld -Wl,-Map=target.map -o target.axf $(OBJS) ./librt_ameba.a -lm -lc -lgcc -lnosys
	./binfiletool
	arm-none-eabi-objdump -d target.axf > target.asm

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@ 

%.goo: %.go
	$(GO) $(GOFLAGS) $< -o $@

clean:
	rm -f *.o *.d *.bin *.map *.asm *.pad *.nm *.axf

