#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# <Put a Description Here>
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <Put a description of the supported targets here>
#
# Platform Overrides:
#      <Put a description of the supported Overrides here
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST
CFLAGS_BOTH = -Wall -Werror -g -O0 -std=c99
CFLAGS_ARM = -mcpu=cortex-m4 -mthumb -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16 --specs=nosys.specs

CC = gcc
LD = ld
CFLAGS = $(CFLAGS_BOTH)
CPPFLAGS = -DHOST

OBJS = $(SOURCES:.c=.o)
PREPRO = $(SOURCES:.c=.i)
ASM = $(SOURCES:.c=.asm)

GCC_LDFlags = -Wl, -Map=$(TARGET).map

TARGET = run

%.i: %.c
	$(CC) -E $(INCLUDES) $(CFLAGS) $(CPPFLAGS)$< -o $@ 

%.asm: %.c
	$(CC) -S $(INCLUDES) $(CFLAGS) $(CPPFLAGS)$< -o $@ 

%.o: %.c 
	$(CC) -c $(INCLUDES) $(CFLAGS) $(CPPFLAGS) $< -o $@

.PHONY: build
build: all

.PHONY: all
all: $(TARGET).out

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(INCLUDES) $(CFLAGS) $(CPPFLAGS) $(GCC_LDFlags) -o $@ 

.PHONY: clean
clean:
	rm -rf *.o *.i *.asm *.map

# # Architectures Specific Flags
# LINKER_FILE = ../msp432p401r.lds
# CPU = 
# ARCH = 
# SPECS = 

# # Compiler Flags and Defines
# CC = 
# LD = 
# LDFLAGS = 
# CFLAGS = 
# CPPFLAGs = 

