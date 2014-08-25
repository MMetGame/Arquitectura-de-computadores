all: run

run: desplazador_tb
	ghdl -r desplazador_tb --stop-time=100ns --vcd=desplazador.vcd

desplazador: desplazador.vhd
	ghdl -a desplazador.vhd

desplazador_tb: desplazador desplazador_tb.vhd
	ghdl -a desplazador_tb.vhd
	ghdl -e desplazador_tb

clean: 
	rm -rf desplazador_tb	rm -rf *.o rm -rf *.cf rm -rf *.vcd rm *.vhd~ rm Makefile~
