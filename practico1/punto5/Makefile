all: run

run: signext_tb
	ghdl -r signext_tb --stop-time=100ns --vcd=signext.vcd

signext: signext.vhd
	ghdl -a signext.vhd

signext_tb: signext signext_tb.vhd
	ghdl -a signext_tb.vhd
	ghdl -e signext_tb

clean: 
	rm -rf signext_tb	rm -rf *.o rm -rf *.cf rm -rf *.vcd rm *.vhd~ rm Makefile~
