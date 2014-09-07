all: run

run: controller_tb
	ghdl -r controller_tb --stop-time=100ns --vcd=controller.vcd

controller: controller.vhd
	ghdl -a controller.vhd

controller_tb: controller controller_tb.vhd
	ghdl -a controller_tb.vhd
	ghdl -e controller_tb

clean: 
	rm -rf controller_tb rm -rf *.o rm -rf *.cf rm -rf *.vcd rm *.vhd~ rm Makefile~
