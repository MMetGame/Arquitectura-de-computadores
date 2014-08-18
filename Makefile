all: run

run: adder_test_bench
	ghdl -r adder_test_bench --stop-time=50ns --vcd=adder.vcd

adder_test_bench:adder adder_test_bench.vhd
    ghdl -a adder_test_bench.vhd
    ghdl -e adder_test_bench	

adder: adder.vhd
    ghdl -a adder.vhd

clean:
	rm -rf adder_test_bench
	rm -rf *.o
	rm -rf *.cf
	rm -rf *.vcd
