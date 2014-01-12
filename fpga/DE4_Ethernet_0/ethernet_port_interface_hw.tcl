# TCL File Generated by Component Editor 12.0
# Tue Dec 25 17:57:20 EST 2012
# DO NOT MODIFY


# 
# ethernet_port_interface "ethernet_port_interface" v1.0
# null 2012.12.25.17:57:20
# 
# 

# 
# request TCL package from ACDS 12.0
# 
package require -exact qsys 12.0


# 
# module ethernet_port_interface
# 
set_module_property NAME ethernet_port_interface
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME ethernet_port_interface
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ethernet_port_interface
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file ethernet_port_interface.v VERILOG PATH ethernet_port_interface.v


# 
# parameters
# 
add_parameter WORKER_ADDR_WIDTH INTEGER 2
set_parameter_property WORKER_ADDR_WIDTH DEFAULT_VALUE 2
set_parameter_property WORKER_ADDR_WIDTH DISPLAY_NAME WORKER_ADDR_WIDTH
set_parameter_property WORKER_ADDR_WIDTH TYPE INTEGER
set_parameter_property WORKER_ADDR_WIDTH UNITS None
set_parameter_property WORKER_ADDR_WIDTH ALLOWED_RANGES -2147483648:2147483647
add_parameter TOTAL_DATA INTEGER 8
set_parameter_property TOTAL_DATA DEFAULT_VALUE 8
set_parameter_property TOTAL_DATA DISPLAY_NAME TOTAL_DATA
set_parameter_property TOTAL_DATA TYPE INTEGER
set_parameter_property TOTAL_DATA UNITS None
set_parameter_property TOTAL_DATA ALLOWED_RANGES -2147483648:2147483647


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1


# 
# connection point control_port
# 
add_interface control_port avalon end
set_interface_property control_port addressAlignment DYNAMIC
set_interface_property control_port addressUnits WORDS
set_interface_property control_port associatedClock clock
set_interface_property control_port associatedReset reset
set_interface_property control_port burstOnBurstBoundariesOnly false
set_interface_property control_port explicitAddressSpan 0
set_interface_property control_port holdTime 0
set_interface_property control_port isMemoryDevice false
set_interface_property control_port isNonVolatileStorage false
set_interface_property control_port linewrapBursts false
set_interface_property control_port maximumPendingReadTransactions 0
set_interface_property control_port printableDevice false
set_interface_property control_port readLatency 0
set_interface_property control_port readWaitTime 1
set_interface_property control_port setupTime 0
set_interface_property control_port timingUnits Cycles
set_interface_property control_port writeWaitTime 0
set_interface_property control_port ENABLED true

add_interface_port control_port control_port_address address Input 27
add_interface_port control_port control_port_read read Input 1
add_interface_port control_port control_port_readdata readdata Output 32
add_interface_port control_port control_port_write write Input 1
add_interface_port control_port control_port_writedata writedata Input 32
add_interface_port control_port control_port_waitrequest waitrequest Output 1


# 
# connection point avalon_streaming_sink
# 
add_interface avalon_streaming_sink avalon_streaming end
set_interface_property avalon_streaming_sink associatedClock clock
set_interface_property avalon_streaming_sink associatedReset reset
set_interface_property avalon_streaming_sink dataBitsPerSymbol 8
set_interface_property avalon_streaming_sink errorDescriptor ""
set_interface_property avalon_streaming_sink firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink maxChannel 0
set_interface_property avalon_streaming_sink readyLatency 0
set_interface_property avalon_streaming_sink ENABLED true

add_interface_port avalon_streaming_sink sink_data0 data Input 8
add_interface_port avalon_streaming_sink sink_ready0 ready Output 1
add_interface_port avalon_streaming_sink sink_valid0 valid Input 1
add_interface_port avalon_streaming_sink sink_error0 error Input 6
add_interface_port avalon_streaming_sink sink_startofpacket0 startofpacket Input 1
add_interface_port avalon_streaming_sink sink_endofpacket0 endofpacket Input 1


# 
# connection point avalon_streaming_source
# 
add_interface avalon_streaming_source avalon_streaming start
set_interface_property avalon_streaming_source associatedClock clock
set_interface_property avalon_streaming_source associatedReset reset
set_interface_property avalon_streaming_source dataBitsPerSymbol 8
set_interface_property avalon_streaming_source errorDescriptor ""
set_interface_property avalon_streaming_source firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source maxChannel 0
set_interface_property avalon_streaming_source readyLatency 0
set_interface_property avalon_streaming_source ENABLED true

add_interface_port avalon_streaming_source source_data0 data Output 8
add_interface_port avalon_streaming_source source_ready0 ready Input 1
add_interface_port avalon_streaming_source source_valid0 valid Output 1
add_interface_port avalon_streaming_source source_error0 error Output 1
add_interface_port avalon_streaming_source source_startofpacket0 startofpacket Output 1
add_interface_port avalon_streaming_source source_endofpacket0 endofpacket Output 1


# 
# connection point avalon_streaming_sink_1
# 
add_interface avalon_streaming_sink_1 avalon_streaming end
set_interface_property avalon_streaming_sink_1 associatedClock clock
set_interface_property avalon_streaming_sink_1 associatedReset reset
set_interface_property avalon_streaming_sink_1 dataBitsPerSymbol 8
set_interface_property avalon_streaming_sink_1 errorDescriptor ""
set_interface_property avalon_streaming_sink_1 firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink_1 maxChannel 0
set_interface_property avalon_streaming_sink_1 readyLatency 0
set_interface_property avalon_streaming_sink_1 ENABLED true

add_interface_port avalon_streaming_sink_1 sink_data1 data Input 8
add_interface_port avalon_streaming_sink_1 sink_ready1 ready Output 1
add_interface_port avalon_streaming_sink_1 sink_valid1 valid Input 1
add_interface_port avalon_streaming_sink_1 sink_error1 error Input 6
add_interface_port avalon_streaming_sink_1 sink_startofpacket1 startofpacket Input 1
add_interface_port avalon_streaming_sink_1 sink_endofpacket1 endofpacket Input 1

# 
# connection point avalon_streaming_source_1
# 
add_interface avalon_streaming_source_1 avalon_streaming start
set_interface_property avalon_streaming_source_1 associatedClock clock
set_interface_property avalon_streaming_source_1 associatedReset reset
set_interface_property avalon_streaming_source_1 dataBitsPerSymbol 8
set_interface_property avalon_streaming_source_1 errorDescriptor ""
set_interface_property avalon_streaming_source_1 firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source_1 maxChannel 0
set_interface_property avalon_streaming_source_1 readyLatency 0
set_interface_property avalon_streaming_source_1 ENABLED true

add_interface_port avalon_streaming_source_1 source_data1 data Output 8
add_interface_port avalon_streaming_source_1 source_ready1 ready Input 1
add_interface_port avalon_streaming_source_1 source_valid1 valid Output 1
add_interface_port avalon_streaming_source_1 source_error1 error Output 1
add_interface_port avalon_streaming_source_1 source_startofpacket1 startofpacket Output 1
add_interface_port avalon_streaming_source_1 source_endofpacket1 endofpacket Output 1


# 
# connection point avalon_streaming_sink_2
# 
add_interface avalon_streaming_sink_2 avalon_streaming end
set_interface_property avalon_streaming_sink_2 associatedClock clock
set_interface_property avalon_streaming_sink_2 associatedReset reset
set_interface_property avalon_streaming_sink_2 dataBitsPerSymbol 8
set_interface_property avalon_streaming_sink_2 errorDescriptor ""
set_interface_property avalon_streaming_sink_2 firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink_2 maxChannel 0
set_interface_property avalon_streaming_sink_2 readyLatency 0
set_interface_property avalon_streaming_sink_2 ENABLED true

add_interface_port avalon_streaming_sink_2 sink_data2 data Input 8
add_interface_port avalon_streaming_sink_2 sink_ready2 ready Output 1
add_interface_port avalon_streaming_sink_2 sink_valid2 valid Input 1
add_interface_port avalon_streaming_sink_2 sink_error2 error Input 6
add_interface_port avalon_streaming_sink_2 sink_startofpacket2 startofpacket Input 1
add_interface_port avalon_streaming_sink_2 sink_endofpacket2 endofpacket Input 1

# 
# connection point avalon_streaming_source_2
# 
add_interface avalon_streaming_source_2 avalon_streaming start
set_interface_property avalon_streaming_source_2 associatedClock clock
set_interface_property avalon_streaming_source_2 associatedReset reset
set_interface_property avalon_streaming_source_2 dataBitsPerSymbol 8
set_interface_property avalon_streaming_source_2 errorDescriptor ""
set_interface_property avalon_streaming_source_2 firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source_2 maxChannel 0
set_interface_property avalon_streaming_source_2 readyLatency 0
set_interface_property avalon_streaming_source_2 ENABLED true

add_interface_port avalon_streaming_source_2 source_data2 data Output 8
add_interface_port avalon_streaming_source_2 source_ready2 ready Input 1
add_interface_port avalon_streaming_source_2 source_valid2 valid Output 1
add_interface_port avalon_streaming_source_2 source_error2 error Output 1
add_interface_port avalon_streaming_source_2 source_startofpacket2 startofpacket Output 1
add_interface_port avalon_streaming_source_2 source_endofpacket2 endofpacket Output 1

# 
# connection point avalon_streaming_sink_3
# 
add_interface avalon_streaming_sink_3 avalon_streaming end
set_interface_property avalon_streaming_sink_3 associatedClock clock
set_interface_property avalon_streaming_sink_3 associatedReset reset
set_interface_property avalon_streaming_sink_3 dataBitsPerSymbol 8
set_interface_property avalon_streaming_sink_3 errorDescriptor ""
set_interface_property avalon_streaming_sink_3 firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink_3 maxChannel 0
set_interface_property avalon_streaming_sink_3 readyLatency 0
set_interface_property avalon_streaming_sink_3 ENABLED true

add_interface_port avalon_streaming_sink_3 sink_data3 data Input 8
add_interface_port avalon_streaming_sink_3 sink_ready3 ready Output 1
add_interface_port avalon_streaming_sink_3 sink_valid3 valid Input 1
add_interface_port avalon_streaming_sink_3 sink_error3 error Input 6
add_interface_port avalon_streaming_sink_3 sink_startofpacket3 startofpacket Input 1
add_interface_port avalon_streaming_sink_3 sink_endofpacket3 endofpacket Input 1

# 
# connection point avalon_streaming_source_3
# 
add_interface avalon_streaming_source_3 avalon_streaming start
set_interface_property avalon_streaming_source_3 associatedClock clock
set_interface_property avalon_streaming_source_3 associatedReset reset
set_interface_property avalon_streaming_source_3 dataBitsPerSymbol 8
set_interface_property avalon_streaming_source_3 errorDescriptor ""
set_interface_property avalon_streaming_source_3 firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source_3 maxChannel 0
set_interface_property avalon_streaming_source_3 readyLatency 0
set_interface_property avalon_streaming_source_3 ENABLED true

add_interface_port avalon_streaming_source_3 source_data3 data Output 8
add_interface_port avalon_streaming_source_3 source_ready3 ready Input 1
add_interface_port avalon_streaming_source_3 source_valid3 valid Output 1
add_interface_port avalon_streaming_source_3 source_error3 error Output 1
add_interface_port avalon_streaming_source_3 source_startofpacket3 startofpacket Output 1
add_interface_port avalon_streaming_source_3 source_endofpacket3 endofpacket Output 1


# 
# connection point start_update
# 
add_interface start_update conduit end
set_interface_property start_update associatedClock ""
set_interface_property start_update associatedReset ""
set_interface_property start_update ENABLED true

add_interface_port start_update start_update export Output 1


# 
# connection point flush_ddr
# 
add_interface flush_ddr conduit end
set_interface_property flush_ddr associatedClock ""
set_interface_property flush_ddr associatedReset ""
set_interface_property flush_ddr ENABLED true

add_interface_port flush_ddr flush_ddr export Output 1


# 
# connection point start_load
# 
add_interface start_load conduit end
set_interface_property start_load associatedClock ""
set_interface_property start_load associatedReset ""
set_interface_property start_load ENABLED true

add_interface_port start_load start_load export Output 1


# 
# connection point iteration_accum_value
# 
add_interface iteration_accum_value conduit end
set_interface_property iteration_accum_value associatedClock ""
set_interface_property iteration_accum_value associatedReset ""
set_interface_property iteration_accum_value ENABLED true

add_interface_port iteration_accum_value iteration_accum_value export Input 32


# 
# connection point dram_rd_fifo
# 
add_interface dram_rd_fifo conduit end
set_interface_property dram_rd_fifo associatedClock clock
set_interface_property dram_rd_fifo associatedReset ""
set_interface_property dram_rd_fifo ENABLED true

add_interface_port dram_rd_fifo dram_fifo_readdata export Input 64
add_interface_port dram_rd_fifo dram_fifo_read export Output 1
add_interface_port dram_rd_fifo dram_fifo_empty export Input 1


# 
# connection point dram_wr_fifo
# 
add_interface dram_wr_fifo conduit end
set_interface_property dram_wr_fifo associatedClock clock
set_interface_property dram_wr_fifo associatedReset ""
set_interface_property dram_wr_fifo ENABLED true

add_interface_port dram_wr_fifo dram_fifo_writedata export Output 64
add_interface_port dram_wr_fifo dram_fifo_write export Output 1
add_interface_port dram_wr_fifo dram_fifo_full export Input 1


# 
# connection point num_keys
# 
add_interface num_keys conduit end
set_interface_property num_keys associatedClock clock
set_interface_property num_keys associatedReset ""
set_interface_property num_keys ENABLED true

add_interface_port num_keys num_keys export Output 32

# 
# connection point tx_ext_update_0
# 
add_interface tx_ext_update_0 conduit end
set_interface_property tx_ext_update_0 associatedClock clock
set_interface_property tx_ext_update_0 associatedReset ""
set_interface_property tx_ext_update_0 ENABLED true

add_interface_port tx_ext_update_0 tx_ext_update_0_q export Input 64
add_interface_port tx_ext_update_0 tx_ext_update_0_empty export Input 1
add_interface_port tx_ext_update_0 tx_ext_update_0_rdreq export Output 1
add_interface_port tx_ext_update_0 tx_ext_update_0_almost_full export Input 1

# 
# connection point tx_ext_update_1
# 
add_interface tx_ext_update_1 conduit end
set_interface_property tx_ext_update_1 associatedClock clock
set_interface_property tx_ext_update_1 associatedReset ""
set_interface_property tx_ext_update_1 ENABLED true

add_interface_port tx_ext_update_1 tx_ext_update_1_q export Input 64
add_interface_port tx_ext_update_1 tx_ext_update_1_empty export Input 1
add_interface_port tx_ext_update_1 tx_ext_update_1_rdreq export Output 1
add_interface_port tx_ext_update_1 tx_ext_update_1_almost_full export Input 1

# 
# connection point tx_ext_update_2
# 
add_interface tx_ext_update_2 conduit end
set_interface_property tx_ext_update_2 associatedClock clock
set_interface_property tx_ext_update_2 associatedReset ""
set_interface_property tx_ext_update_2 ENABLED true

add_interface_port tx_ext_update_2 tx_ext_update_2_q export Input 64
add_interface_port tx_ext_update_2 tx_ext_update_2_empty export Input 1
add_interface_port tx_ext_update_2 tx_ext_update_2_rdreq export Output 1
add_interface_port tx_ext_update_2 tx_ext_update_2_almost_full export Input 1

# 
# connection point tx_ext_update_3
# 
add_interface tx_ext_update_3 conduit end
set_interface_property tx_ext_update_3 associatedClock clock
set_interface_property tx_ext_update_3 associatedReset ""
set_interface_property tx_ext_update_3 ENABLED true

add_interface_port tx_ext_update_3 tx_ext_update_3_q export Input 64
add_interface_port tx_ext_update_3 tx_ext_update_3_empty export Input 1
add_interface_port tx_ext_update_3 tx_ext_update_3_rdreq export Output 1
add_interface_port tx_ext_update_3 tx_ext_update_3_almost_full export Input 1

# 
# connection point rx_ext_update
# 
add_interface rx_ext_update conduit end
set_interface_property rx_ext_update associatedClock clock
set_interface_property rx_ext_update associatedReset ""
set_interface_property rx_ext_update ENABLED true

add_interface_port rx_ext_update rx_ext_update_data export Output 64
add_interface_port rx_ext_update rx_ext_update_0_full export Input 1
add_interface_port rx_ext_update rx_ext_update_0_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_1_full export Input 1
add_interface_port rx_ext_update rx_ext_update_1_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_2_full export Input 1
add_interface_port rx_ext_update rx_ext_update_2_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_3_full export Input 1
add_interface_port rx_ext_update rx_ext_update_3_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_4_full export Input 1
add_interface_port rx_ext_update rx_ext_update_4_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_5_full export Input 1
add_interface_port rx_ext_update rx_ext_update_5_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_6_full export Input 1
add_interface_port rx_ext_update rx_ext_update_6_wrreq export Output 1
add_interface_port rx_ext_update rx_ext_update_7_full export Input 1
add_interface_port rx_ext_update rx_ext_update_7_wrreq export Output 1

# 
# connection point log_2_num_workers
# 
add_interface log_2_num_workers conduit end
set_interface_property log_2_num_workers associatedClock clock
set_interface_property log_2_num_workers associatedReset ""
set_interface_property log_2_num_workers ENABLED true

add_interface_port log_2_num_workers log_2_num_workers export Output 32


# 
# connection point shard_id
# 
add_interface shard_id conduit end
set_interface_property shard_id associatedClock clock
set_interface_property shard_id associatedReset ""
set_interface_property shard_id ENABLED true

add_interface_port shard_id shard_id export Output 32


# 
# connection point compute_system_reset
# 
add_interface compute_system_reset conduit end
set_interface_property compute_system_reset associatedClock ""
set_interface_property compute_system_reset associatedReset ""
set_interface_property compute_system_reset ENABLED true

add_interface_port compute_system_reset compute_system_reset export Output 1


# 
# connection point max_n_values
# 
add_interface max_n_values conduit end
set_interface_property max_n_values associatedClock clock
set_interface_property max_n_values associatedReset ""
set_interface_property max_n_values ENABLED true

add_interface_port max_n_values max_n_values export Output 32

# 
# connection point filter_threshold
# 
add_interface filter_threshold conduit end
set_interface_property filter_threshold associatedClock clock
set_interface_property filter_threshold associatedReset ""
set_interface_property filter_threshold ENABLED true

add_interface_port filter_threshold filter_threshold export Output 32


# 
# connection point max_fpga_procs
# 
add_interface max_fpga_procs conduit end
set_interface_property max_fpga_procs associatedClock clock
set_interface_property max_fpga_procs associatedReset ""
set_interface_property max_fpga_procs ENABLED true

add_interface_port max_fpga_procs max_fpga_procs export Output 4


# 
# connection point proc_bit_mask
# 
add_interface proc_bit_mask conduit end
set_interface_property proc_bit_mask associatedClock clock
set_interface_property proc_bit_mask associatedReset ""
set_interface_property proc_bit_mask ENABLED true

add_interface_port proc_bit_mask proc_bit_mask export Output 8

# 
# connection point algo_selection
# 
add_interface algo_selection conduit end
set_interface_property algo_selection associatedClock clock
set_interface_property algo_selection associatedReset ""
set_interface_property algo_selection ENABLED true

add_interface_port algo_selection algo_selection export Output 1
