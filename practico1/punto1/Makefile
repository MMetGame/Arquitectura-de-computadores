all: run

run: adder_tb
	ghdl -r adder_tb --stop-time=100ns --vcd=adder.vcd

adder: adder.vhd
	ghdl -a adder.vhd

adder_tb: adder adder_tb.vhd
	ghdl -a adder_tb.vhd
	ghdl -e adder_tb

clean: 
	rm -rf adder_tb	rm -rf *.o rm -rf *.cf rm -rf *.vcd 

