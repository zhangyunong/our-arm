CC = $(AMBER_CROSSTOOL)-gcc
LD = $(AMBER_CROSSTOOL)-ld

all:

%.mem: main.o %.o	# order matters
	$(LD) -o $*-test.o $^
	$(AMBER_CROSSTOOL)-objcopy -O binary $*-test.o $*.bin
	$(AMBER_BASE)/sw/tools/amber-bin2mem $*.bin > $@

clean:
	rm -f *.o *.bin *.mem

.PHONY: all clean
