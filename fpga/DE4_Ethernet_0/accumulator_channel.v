// multimaster.v

// Generated using ACDS version 12.0 178 at 2013.01.30.20:42:27

`timescale 1 ps / 1 ps
module accumulator_channel (
		output wire [30:0]  accumulator_wr_0_avalon_master_address,       // accumulator_wr_0_avalon_master.address
		output wire         accumulator_wr_0_avalon_master_write,         //                               .write
		output wire [31:0]  accumulator_wr_0_avalon_master_byteenable,    //                               .byteenable
		output wire [255:0] accumulator_wr_0_avalon_master_writedata,     //                               .writedata
		output wire [2:0]   accumulator_wr_0_avalon_master_burstcount,    //                               .burstcount
		input  wire         accumulator_wr_0_avalon_master_waitrequest,   //                               .waitrequest

		output wire [30:0]  accumulator_rd_0_avalon_master_address,       // accumulator_rd_0_avalon_master.address
		output wire         accumulator_rd_0_avalon_master_read,          //                               .read
		output wire [31:0]  accumulator_rd_0_avalon_master_byteenable,    //                               .byteenable
		input  wire [255:0] accumulator_rd_0_avalon_master_readdata,      //                               .readdata
		input  wire         accumulator_rd_0_avalon_master_readdatavalid, //                               .readdatavalid
		output wire [2:0]   accumulator_rd_0_avalon_master_burstcount,    //                               .burstcount
		input  wire         accumulator_rd_0_avalon_master_waitrequest,   //                               .waitrequest
	
		input  wire         accumulator_wr_0_user_write_buffer,           //          accumulator_wr_0_user.write_buffer
		input  wire [255:0] accumulator_wr_0_user_buffer_input_data,      //                               .buffer_input_data
		output wire         accumulator_wr_0_user_buffer_full,            //                               .buffer_full

		input  wire         accumulator_rd_0_user_read_buffer,            //          accumulator_rd_0_user.read_buffer
		output wire [255:0] accumulator_rd_0_user_buffer_output_data,     //                               .buffer_output_data
		output wire         accumulator_rd_0_user_data_available,         //                               .data_available

		input  wire         accumulator_wr_0_control_fixed_location,      //       accumulator_wr_0_control.fixed_location
		input  wire [30:0]  accumulator_wr_0_control_write_base,          //                               .write_base
		input  wire [30:0]  accumulator_wr_0_control_write_length,        //                               .write_length
		input  wire         accumulator_wr_0_control_go,                  //                               .go
		output wire         accumulator_wr_0_control_done,                //                               .done
	
		input  wire         accumulator_rd_0_control_fixed_location,      //       accumulator_rd_0_control.fixed_location
		input  wire [30:0]  accumulator_rd_0_control_read_base,           //                               .read_base
		input  wire [30:0]  accumulator_rd_0_control_read_length,         //                               .read_length
		input  wire         accumulator_rd_0_control_go,                  //                               .go
		output wire         accumulator_rd_0_control_done,                //                               .done
		output wire         accumulator_rd_0_control_early_done,           //                               .early_done

		input  wire         clk_clk,                                      //                            clk.clk
		input  wire         reset_reset_n                                //                          reset.reset_n
	);

	wire    rst_controller_reset_out_reset; // rst_controller:reset_out -> [accumulator_rd_0:reset, accumulator_wr_0:reset]

	custom_master #(
		.MASTER_DIRECTION    (1),
		.DATA_WIDTH          (256),
		.ADDRESS_WIDTH       (31),
		.BURST_CAPABLE       (1),
		.MAXIMUM_BURST_COUNT (2),
		.BURST_COUNT_WIDTH   (2),
		.FIFO_DEPTH          (4),
		.FIFO_DEPTH_LOG2     (2),
		.MEMORY_BASED_FIFO   (1)
	) accumulator_wr_0 (
		.clk                     (clk_clk),                                                                                                                                                                                                                                                               //       clock_reset.clk
		.reset                   (rst_controller_reset_out_reset),                                                                                                                                                                                                                                        // clock_reset_reset.reset
		.master_address          (accumulator_wr_0_avalon_master_address),                                                                                                                                                                                                                                //     avalon_master.address
		.master_write            (accumulator_wr_0_avalon_master_write),                                                                                                                                                                                                                                  //                  .write
		.master_byteenable       (accumulator_wr_0_avalon_master_byteenable),                                                                                                                                                                                                                             //                  .byteenable
		.master_writedata        (accumulator_wr_0_avalon_master_writedata),                                                                                                                                                                                                                              //                  .writedata
		.master_burstcount       (accumulator_wr_0_avalon_master_burstcount),                                                                                                                                                                                                                             //                  .burstcount
		.master_waitrequest      (accumulator_wr_0_avalon_master_waitrequest),                                                                                                                                                                                                                            //                  .waitrequest
		.control_fixed_location  (accumulator_wr_0_control_fixed_location),                                                                                                                                                                                                                               //           control.export
		.control_write_base      (accumulator_wr_0_control_write_base),                                                                                                                                                                                                                                   //                  .export
		.control_write_length    (accumulator_wr_0_control_write_length),                                                                                                                                                                                                                                 //                  .export
		.control_go              (accumulator_wr_0_control_go),                                                                                                                                                                                                                                           //                  .export
		.control_done            (accumulator_wr_0_control_done),                                                                                                                                                                                                                                         //                  .export
		.user_write_buffer       (accumulator_wr_0_user_write_buffer),                                                                                                                                                                                                                                    //              user.export
		.user_buffer_input_data  (accumulator_wr_0_user_buffer_input_data),                                                                                                                                                                                                                               //                  .export
		.user_buffer_full        (accumulator_wr_0_user_buffer_full),                                                                                                                                                                                                                                     //                  .export
		.master_read             (),                                                                                                                                                                                                                                                                      //       (terminated)
		.master_readdata         (256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), //       (terminated)
		.master_readdatavalid    (1'b0),                                                                                                                                                                                                                                                                  //       (terminated)
		.control_read_base       (31'b0000000000000000000000000000000),                                                                                                                                                                                                                                   //       (terminated)
		.control_read_length     (31'b0000000000000000000000000000000),                                                                                                                                                                                                                                   //       (terminated)
		.control_early_done      (),                                                                                                                                                                                                                                                                      //       (terminated)
		.user_read_buffer        (1'b0),                                                                                                                                                                                                                                                                  //       (terminated)
		.user_buffer_output_data (),                                                                                                                                                                                                                                                                      //       (terminated)
		.user_data_available     ()                                                                                                                                                                                                                                                                       //       (terminated)
	);

	custom_master #(
		.MASTER_DIRECTION    (0),
		.DATA_WIDTH          (256),
		.ADDRESS_WIDTH       (31),
		.BURST_CAPABLE       (1),
		.MAXIMUM_BURST_COUNT (2),
		.BURST_COUNT_WIDTH   (2),
		.FIFO_DEPTH          (4),
		.FIFO_DEPTH_LOG2     (2),
		.MEMORY_BASED_FIFO   (1)
	) accumulator_rd_0 (
		.clk                     (clk_clk),                                                                                                                                                                                                                                                               //       clock_reset.clk
		.reset                   (rst_controller_reset_out_reset),                                                                                                                                                                                                                                        // clock_reset_reset.reset
		.master_address          (accumulator_rd_0_avalon_master_address),                                                                                                                                                                                                                                //     avalon_master.address
		.master_read             (accumulator_rd_0_avalon_master_read),                                                                                                                                                                                                                                   //                  .read
		.master_byteenable       (accumulator_rd_0_avalon_master_byteenable),                                                                                                                                                                                                                             //                  .byteenable
		.master_readdata         (accumulator_rd_0_avalon_master_readdata),                                                                                                                                                                                                                               //                  .readdata
		.master_readdatavalid    (accumulator_rd_0_avalon_master_readdatavalid),                                                                                                                                                                                                                          //                  .readdatavalid
		.master_burstcount       (accumulator_rd_0_avalon_master_burstcount),                                                                                                                                                                                                                             //                  .burstcount
		.master_waitrequest      (accumulator_rd_0_avalon_master_waitrequest),                                                                                                                                                                                                                            //                  .waitrequest
		.control_fixed_location  (accumulator_rd_0_control_fixed_location),                                                                                                                                                                                                                               //           control.export
		.control_read_base       (accumulator_rd_0_control_read_base),                                                                                                                                                                                                                                    //                  .export
		.control_read_length     (accumulator_rd_0_control_read_length),                                                                                                                                                                                                                                  //                  .export
		.control_go              (accumulator_rd_0_control_go),                                                                                                                                                                                                                                           //                  .export
		.control_done            (accumulator_rd_0_control_done),                                                                                                                                                                                                                                         //                  .export
		.control_early_done      (accumulator_rd_0_control_early_done),                                                                                                                                                                                                                                   //                  .export
		.user_read_buffer        (accumulator_rd_0_user_read_buffer),                                                                                                                                                                                                                                     //              user.export
		.user_buffer_output_data (accumulator_rd_0_user_buffer_output_data),                                                                                                                                                                                                                              //                  .export
		.user_data_available     (accumulator_rd_0_user_data_available),                                                                                                                                                                                                                                  //                  .export
		.master_write            (),                                                                                                                                                                                                                                                                      //       (terminated)
		.master_writedata        (),                                                                                                                                                                                                                                                                      //       (terminated)
		.control_write_base      (31'b0000000000000000000000000000000),                                                                                                                                                                                                                                   //       (terminated)
		.control_write_length    (31'b0000000000000000000000000000000),                                                                                                                                                                                                                                   //       (terminated)
		.user_write_buffer       (1'b0),                                                                                                                                                                                                                                                                  //       (terminated)
		.user_buffer_input_data  (256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), //       (terminated)
		.user_buffer_full        ()                                                                                                                                                                                                                                                                       //       (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS        (1),
		.OUTPUT_RESET_SYNC_EDGES ("deassert"),
		.SYNC_DEPTH              (2)
	) rst_controller (
		.reset_in0  (~reset_reset_n),                 // reset_in0.reset
		.clk        (clk_clk),                        //       clk.clk
		.reset_out  (rst_controller_reset_out_reset), // reset_out.reset
		.reset_in1  (1'b0),                           // (terminated)
		.reset_in2  (1'b0),                           // (terminated)
		.reset_in3  (1'b0),                           // (terminated)
		.reset_in4  (1'b0),                           // (terminated)
		.reset_in5  (1'b0),                           // (terminated)
		.reset_in6  (1'b0),                           // (terminated)
		.reset_in7  (1'b0),                           // (terminated)
		.reset_in8  (1'b0),                           // (terminated)
		.reset_in9  (1'b0),                           // (terminated)
		.reset_in10 (1'b0),                           // (terminated)
		.reset_in11 (1'b0),                           // (terminated)
		.reset_in12 (1'b0),                           // (terminated)
		.reset_in13 (1'b0),                           // (terminated)
		.reset_in14 (1'b0),                           // (terminated)
		.reset_in15 (1'b0)                            // (terminated)
	);

endmodule
