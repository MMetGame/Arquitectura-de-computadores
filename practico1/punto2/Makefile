all: run

run: ff32_tb
	ghdl -r ff32_tb --stop-time=100ns --vcd=ff32.vcd

ff32: ff32.vhd
	ghdl -a ff32.vhd

ff32_tb: ff32 ff32_tb.vhd
	ghdl -a ff32_tb.vhd
	ghdl -e ff32_tb

clean: 
	rm -rf ff32_tb	rm -rf *.o rm -rf *.cf rm -rf *.vcd rm *.vhd~ rm Makefile~
