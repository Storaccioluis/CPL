ghdl -a ../Fuentes/negador.vhd ../Fuentes/negador_tb.vhd
ghdl -s ../Fuentes/negador.vhd ../Fuentes/negador_tb.vhd
ghdl -e negador_tb
ghdl -r negador_tb --vcd=negador_tb.vcd --stop-time=1000ns
gtkwave negador_tb.vcd



