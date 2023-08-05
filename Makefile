# Makefile to build the project

# The boot file is boot.asm
BOOTFILE = boot.asm

all: boot.bin run

boot.bin: $(BOOTFILE)
	nasm $(BOOTFILE) -f bin -o boot.bin

run: boot.bin
	qemu-system-x86_64 -hda boot.bin

clean:
	rm -f boot.bin