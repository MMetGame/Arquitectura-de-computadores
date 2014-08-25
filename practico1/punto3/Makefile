all: run

run: multp_tb
	ghdl -r multp_tb --stop-time=100ns --vcd=multp.vcd

multp: multp.vhd
	ghdl -a multp.vhd

multp_tb: multp multp_tb.vhd
	ghdl -a multp_tb.vhd
	ghdl -e multp_tb

clean: 
	rm -rf multp_tb	rm -rf *.o rm -rf *.cf rm -rf *.vcd rm *.vhd~ rm Makefile~
