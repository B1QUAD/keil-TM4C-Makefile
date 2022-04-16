# You may need to change this. 
# Run "sudo dmesg | grep tty " to get available serial ports.
tty-port := /dev/ttyACM0
proj-file := $(shell ls) *.uvprojx
keil-base-cmd := wine ~/.wine/drive_c/Keil_v5/UV4/UV4.exe 
fromelf-base-cmd := wine ~/.wine/drive_c/Keil_v5/ARM/ARMCLANG/bin/fromelf.exe

all:
	$(keil-base-cmd) -b $(proj-file)

flash:
	echo $(fromelf-base-cmd)
	wine ~/.wine/drive_c/Keil_v5/ARM/ARMCLANG/bin/fromelf.exe --bin *.axf --output out.bin
	lm4flash -S $(tty-port) *.bin
