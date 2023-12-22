TARGET = main
PLATFORM = MSP432


# Architecture Specific Flags
CPU = cortex-m0plus
ARCH = thumb
SPECS = nosys.specs

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE) 
CFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -Wall -Werror -g -O0 -std=c99


SOURCES = main.c misc.c 
OBJECTS = $(SOURCES:.c=.o)

LINKER_FILE = msp432p401r.lds

%.o: %.c
	$(CC) -c $< $(CFLAGS) -o $@

.PHONY: all
all: $(TARGET).out

$(TARGET).out: $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) $(LDFLAGS) -o $@


.PHONY: clean
clean: 
	rm -f $(TARGET) $(OBJECTS) $(TARGET).map $(TARGET).out *.s *.txt

.PHONY: analyze
analyze: $(TARGET).out
	nm -n $(TARGET).out > symbols.txt
	arm-none-eabi-objdump -d $(TARGET).out > assembly_dump.s
	readelf -a $(TARGET).out > elf_info.txt


