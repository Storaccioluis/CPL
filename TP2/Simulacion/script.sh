ghdl -a ../Fuentes/sumador1bit.vhd ../Fuentes/sumador1bit_tb.vhd
ghdl -s ../Fuentes/sumador1bit.vhd ../Fuentes/sumador1bit_tb.vhd
ghdl -e sumador1bit_tb
ghdl -r sumador1bit_tb --vcd=sumador1bit_tb.vcd --stop-time=1000ns
gtkwave sumador1bit_tb.vcd



