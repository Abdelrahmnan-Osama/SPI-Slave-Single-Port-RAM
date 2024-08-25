vlib work
vlog ram.v spi_slave.v wrapper.v spi_tb.v
vsim -voptargs=+acc work.tb

add wave -position insertpoint  \
sim:/tb/wrapper/rst_n \
sim:/tb/wrapper/clk \
sim:/tb/wrapper/SS_n \
sim:/tb/wrapper/rx_data \
sim:/tb/wrapper/rx_valid \
sim:/tb/wrapper/tx_data \
sim:/tb/wrapper/tx_valid \
sim:/tb/wrapper/MISO \
sim:/tb/wrapper/MOSI 

add wave -position insertpoint  \
sim:/tb/wrapper/slave/cs \
sim:/tb/wrapper/slave/ns \
sim:/tb/wrapper/slave/read_addr_received \
sim:/tb/wrapper/slave/rd_counter \
sim:/tb/wrapper/slave/wr_counter \
sim:/tb/wrapper/slave/invalid_rd_addr \
sim:/tb/wrapper/slave/invalid_rd_data \
sim:/tb/wrapper/slave/invalid_wr

add wave -position insertpoint  \
sim:/tb/wrapper/ram/addr \
sim:/tb/wrapper/ram/mem

run -all
#quit -sim
