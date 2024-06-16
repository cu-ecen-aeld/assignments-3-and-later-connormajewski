PROGRAM = writer
OBJ = $(PROGRAM).o
CFLAGS = -Wall -g

CROSS_COMPILE ?=
ARM = aarch64-none-linux-gnu-

ifeq ($(CROSS_COMPILE), $(ARM))
	CC := $(ARM)gcc
else
	CC := gcc
endif

build:
	$(CC) $(CFLAGS) $(PROGRAM).c -o $(PROGRAM) 

clean:
	$(RM) $(PROGRAM)
	$(RM) $(OBJ)


