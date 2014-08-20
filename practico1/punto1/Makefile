all: run

run: adder_tb
	ghdl -r adder_tb --stop-time=50ns --vcd=adder.vcd

adder: adder.vhd
	ghdl -a -Wc, -m32 -Wa, --32 adder.vhd

adder_tb: adder adder_tb.vhd
	ghdl -a -Wc, -m32 -Wa, --32 adder_tb.vhd
	ghdl -e  -Wa, --32 -Wl, -m32 adder_tb

clean: 
	rm -rf adder_tb	rm -rf *.o rm -rf *.cf rm -rf *.vcd 

