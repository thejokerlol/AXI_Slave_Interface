// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Jun 02 03:53:49 2018
// Host        : G-TIRUPATHI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/vamsi/Desktop/AXI_Slave_Interface/AXI_RAM_SLAVE/AXI_RAM_SLAVE.sim/sim_1/impl/timing/AXI_RAM_Slave_tb_time_impl.v
// Design      : AXI_Slave_RAM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "dbb9f52b" *) (* HIGH = "1'b1" *) (* LOW = "1'b0" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* PUT_DATA_ON_BUS = "4'b0010" *) (* RAM_CONTROLLER_IDLE = "4'b0000" *) (* READ_ADDRESS_BUSY_STATE = "1'b1" *) 
(* READ_ADDRESS_IDLE_STATE = "1'b0" *) (* WAIT_FOR_BREADY = "4'b0101" *) (* WAIT_FOR_CLK_CYCLE = "4'b0001" *) 
(* WAIT_FOR_RREADY = "4'b0011" *) (* WAIT_FOR_WVALID = "4'b0100" *) 
(* NotValidForBitStream *)
module AXI_Slave_RAM
   (clk,
    reset,
    awid,
    awaddr,
    awlen,
    awsize,
    awburst,
    awvalid,
    awready,
    wid,
    wdata,
    wstrb,
    wlast,
    wvalid,
    wready,
    bid,
    bresp,
    bvalid,
    bready,
    arid,
    araddr,
    arlen,
    arsize,
    arburst,
    arvalid,
    arready,
    rid,
    rdata,
    rresp,
    rlast,
    rvalid,
    rready);
  input clk;
  input reset;
  input [3:0]awid;
  input [31:0]awaddr;
  input [3:0]awlen;
  input [1:0]awsize;
  input [1:0]awburst;
  input awvalid;
  output awready;
  input [3:0]wid;
  input [31:0]wdata;
  input [3:0]wstrb;
  input wlast;
  input wvalid;
  output wready;
  output [3:0]bid;
  output [1:0]bresp;
  output bvalid;
  input bready;
  input [3:0]arid;
  input [31:0]araddr;
  input [3:0]arlen;
  input [1:0]arsize;
  input [1:0]arburst;
  input arvalid;
  output arready;
  output [3:0]rid;
  output [31:0]rdata;
  output [1:0]rresp;
  output rlast;
  output rvalid;
  input rready;

  wire \FSM_sequential_ram_controller_state[0]_i_1_n_0 ;
  wire \FSM_sequential_ram_controller_state[0]_i_2_n_0 ;
  wire \FSM_sequential_ram_controller_state[0]_i_3_n_0 ;
  wire \FSM_sequential_ram_controller_state[0]_i_4_n_0 ;
  wire \FSM_sequential_ram_controller_state[1]_i_1_n_0 ;
  wire \FSM_sequential_ram_controller_state[2]_i_1_n_0 ;
  wire \FSM_sequential_ram_controller_state[2]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_ram_controller_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_ram_controller_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_ram_controller_state_reg_n_0_[2] ;
  wire [9:2]address;
  wire \address[0][2]_i_1_n_0 ;
  wire \address[0][2]_i_2_n_0 ;
  wire \address[0][2]_i_3_n_0 ;
  wire \address[0][2]_i_4_n_0 ;
  wire \address[0][2]_i_5_n_0 ;
  wire \address[0][2]_i_6_n_0 ;
  wire \address[0][3]_i_1_n_0 ;
  wire \address[0][3]_i_2_n_0 ;
  wire \address[0][3]_i_3_n_0 ;
  wire \address[0][3]_i_4_n_0 ;
  wire \address[0][3]_i_5_n_0 ;
  wire \address[0][3]_i_6_n_0 ;
  wire \address[0][3]_i_7_n_0 ;
  wire \address[0][4]_i_10_n_0 ;
  wire \address[0][4]_i_1_n_0 ;
  wire \address[0][4]_i_2_n_0 ;
  wire \address[0][4]_i_3_n_0 ;
  wire \address[0][4]_i_4_n_0 ;
  wire \address[0][4]_i_5_n_0 ;
  wire \address[0][4]_i_6_n_0 ;
  wire \address[0][4]_i_7_n_0 ;
  wire \address[0][4]_i_8_n_0 ;
  wire \address[0][4]_i_9_n_0 ;
  wire \address[0][5]_i_10_n_0 ;
  wire \address[0][5]_i_11_n_0 ;
  wire \address[0][5]_i_1_n_0 ;
  wire \address[0][5]_i_2_n_0 ;
  wire \address[0][5]_i_3_n_0 ;
  wire \address[0][5]_i_4_n_0 ;
  wire \address[0][5]_i_5_n_0 ;
  wire \address[0][5]_i_6_n_0 ;
  wire \address[0][5]_i_7_n_0 ;
  wire \address[0][5]_i_8_n_0 ;
  wire \address[0][5]_i_9_n_0 ;
  wire \address[0][6]_i_10_n_0 ;
  wire \address[0][6]_i_11_n_0 ;
  wire \address[0][6]_i_1_n_0 ;
  wire \address[0][6]_i_2_n_0 ;
  wire \address[0][6]_i_3_n_0 ;
  wire \address[0][6]_i_4_n_0 ;
  wire \address[0][6]_i_5_n_0 ;
  wire \address[0][6]_i_6_n_0 ;
  wire \address[0][6]_i_7_n_0 ;
  wire \address[0][6]_i_8_n_0 ;
  wire \address[0][6]_i_9_n_0 ;
  wire \address[0][7]_i_10_n_0 ;
  wire \address[0][7]_i_11_n_0 ;
  wire \address[0][7]_i_12_n_0 ;
  wire \address[0][7]_i_13_n_0 ;
  wire \address[0][7]_i_1_n_0 ;
  wire \address[0][7]_i_2_n_0 ;
  wire \address[0][7]_i_3_n_0 ;
  wire \address[0][7]_i_4_n_0 ;
  wire \address[0][7]_i_5_n_0 ;
  wire \address[0][7]_i_6_n_0 ;
  wire \address[0][7]_i_7_n_0 ;
  wire \address[0][7]_i_8_n_0 ;
  wire \address[0][7]_i_9_n_0 ;
  wire \address[0][8]_i_1_n_0 ;
  wire \address[0][8]_i_2_n_0 ;
  wire \address[0][8]_i_3_n_0 ;
  wire \address[0][8]_i_4_n_0 ;
  wire \address[0][8]_i_5_n_0 ;
  wire \address[0][8]_i_6_n_0 ;
  wire \address[0][8]_i_7_n_0 ;
  wire \address[0][8]_i_8_n_0 ;
  wire \address[0][8]_i_9_n_0 ;
  wire \address[0][9]_i_10_n_0 ;
  wire \address[0][9]_i_11_n_0 ;
  wire \address[0][9]_i_12_n_0 ;
  wire \address[0][9]_i_13_n_0 ;
  wire \address[0][9]_i_14_n_0 ;
  wire \address[0][9]_i_15_n_0 ;
  wire \address[0][9]_i_16_n_0 ;
  wire \address[0][9]_i_17_n_0 ;
  wire \address[0][9]_i_18_n_0 ;
  wire \address[0][9]_i_1_n_0 ;
  wire \address[0][9]_i_2_n_0 ;
  wire \address[0][9]_i_3_n_0 ;
  wire \address[0][9]_i_4_n_0 ;
  wire \address[0][9]_i_5_n_0 ;
  wire \address[0][9]_i_6_n_0 ;
  wire \address[0][9]_i_7_n_0 ;
  wire \address[0][9]_i_8_n_0 ;
  wire \address[0][9]_i_9_n_0 ;
  wire \address[1][2]_i_1_n_0 ;
  wire \address[1][2]_i_2_n_0 ;
  wire \address[1][2]_i_3_n_0 ;
  wire \address[1][2]_i_4_n_0 ;
  wire \address[1][3]_i_1_n_0 ;
  wire \address[1][3]_i_2_n_0 ;
  wire \address[1][3]_i_3_n_0 ;
  wire \address[1][3]_i_4_n_0 ;
  wire \address[1][4]_i_1_n_0 ;
  wire \address[1][4]_i_2_n_0 ;
  wire \address[1][4]_i_3_n_0 ;
  wire \address[1][4]_i_4_n_0 ;
  wire \address[1][4]_i_5_n_0 ;
  wire \address[1][4]_i_6_n_0 ;
  wire \address[1][5]_i_1_n_0 ;
  wire \address[1][5]_i_2_n_0 ;
  wire \address[1][5]_i_3_n_0 ;
  wire \address[1][5]_i_4_n_0 ;
  wire \address[1][5]_i_5_n_0 ;
  wire \address[1][5]_i_6_n_0 ;
  wire \address[1][5]_i_7_n_0 ;
  wire \address[1][5]_i_8_n_0 ;
  wire \address[1][6]_i_1_n_0 ;
  wire \address[1][6]_i_2_n_0 ;
  wire \address[1][6]_i_3_n_0 ;
  wire \address[1][6]_i_4_n_0 ;
  wire \address[1][6]_i_5_n_0 ;
  wire \address[1][6]_i_6_n_0 ;
  wire \address[1][6]_i_7_n_0 ;
  wire \address[1][6]_i_8_n_0 ;
  wire \address[1][7]_i_1_n_0 ;
  wire \address[1][7]_i_2_n_0 ;
  wire \address[1][7]_i_3_n_0 ;
  wire \address[1][7]_i_4_n_0 ;
  wire \address[1][7]_i_5_n_0 ;
  wire \address[1][7]_i_6_n_0 ;
  wire \address[1][7]_i_7_n_0 ;
  wire \address[1][8]_i_1_n_0 ;
  wire \address[1][8]_i_2_n_0 ;
  wire \address[1][8]_i_3_n_0 ;
  wire \address[1][8]_i_4_n_0 ;
  wire \address[1][8]_i_5_n_0 ;
  wire \address[1][8]_i_6_n_0 ;
  wire \address[1][8]_i_7_n_0 ;
  wire \address[1][8]_i_8_n_0 ;
  wire \address[1][9]_i_10_n_0 ;
  wire \address[1][9]_i_11_n_0 ;
  wire \address[1][9]_i_12_n_0 ;
  wire \address[1][9]_i_1_n_0 ;
  wire \address[1][9]_i_2_n_0 ;
  wire \address[1][9]_i_3_n_0 ;
  wire \address[1][9]_i_4_n_0 ;
  wire \address[1][9]_i_5_n_0 ;
  wire \address[1][9]_i_6_n_0 ;
  wire \address[1][9]_i_7_n_0 ;
  wire \address[1][9]_i_8_n_0 ;
  wire \address[1][9]_i_9_n_0 ;
  wire \address[2][2]_i_1_n_0 ;
  wire \address[2][2]_i_2_n_0 ;
  wire \address[2][2]_i_3_n_0 ;
  wire \address[2][3]_i_1_n_0 ;
  wire \address[2][3]_i_2_n_0 ;
  wire \address[2][3]_i_3_n_0 ;
  wire \address[2][3]_i_4_n_0 ;
  wire \address[2][3]_i_5_n_0 ;
  wire \address[2][3]_i_6_n_0 ;
  wire \address[2][3]_i_7_n_0 ;
  wire \address[2][4]_i_1_n_0 ;
  wire \address[2][4]_i_2_n_0 ;
  wire \address[2][4]_i_3_n_0 ;
  wire \address[2][5]_i_1_n_0 ;
  wire \address[2][5]_i_2_n_0 ;
  wire \address[2][5]_i_3_n_0 ;
  wire \address[2][5]_i_4_n_0 ;
  wire \address[2][6]_i_1_n_0 ;
  wire \address[2][6]_i_2_n_0 ;
  wire \address[2][6]_i_3_n_0 ;
  wire \address[2][6]_i_4_n_0 ;
  wire \address[2][7]_i_1_n_0 ;
  wire \address[2][7]_i_2_n_0 ;
  wire \address[2][7]_i_3_n_0 ;
  wire \address[2][7]_i_4_n_0 ;
  wire \address[2][8]_i_1_n_0 ;
  wire \address[2][8]_i_2_n_0 ;
  wire \address[2][8]_i_3_n_0 ;
  wire \address[2][8]_i_4_n_0 ;
  wire \address[2][9]_i_1_n_0 ;
  wire \address[2][9]_i_2_n_0 ;
  wire \address[2][9]_i_3_n_0 ;
  wire \address[2][9]_i_4_n_0 ;
  wire \address[2][9]_i_5_n_0 ;
  wire \address[2][9]_i_6_n_0 ;
  wire \address[2][9]_i_7_n_0 ;
  wire \address[2][9]_i_8_n_0 ;
  wire \address[2][9]_i_9_n_0 ;
  wire \address[3][9]_i_1_n_0 ;
  wire \address[3][9]_i_3_n_0 ;
  wire \address[3][9]_i_4_n_0 ;
  wire \address[3][9]_i_6_n_0 ;
  wire \address_reg_n_0_[0][2] ;
  wire \address_reg_n_0_[0][3] ;
  wire \address_reg_n_0_[0][4] ;
  wire \address_reg_n_0_[0][5] ;
  wire \address_reg_n_0_[0][6] ;
  wire \address_reg_n_0_[0][7] ;
  wire \address_reg_n_0_[0][8] ;
  wire \address_reg_n_0_[0][9] ;
  wire \address_reg_n_0_[1][2] ;
  wire \address_reg_n_0_[1][3] ;
  wire \address_reg_n_0_[1][4] ;
  wire \address_reg_n_0_[1][5] ;
  wire \address_reg_n_0_[1][6] ;
  wire \address_reg_n_0_[1][7] ;
  wire \address_reg_n_0_[1][8] ;
  wire \address_reg_n_0_[1][9] ;
  wire \address_reg_n_0_[2][2] ;
  wire \address_reg_n_0_[2][3] ;
  wire \address_reg_n_0_[2][4] ;
  wire \address_reg_n_0_[2][5] ;
  wire \address_reg_n_0_[2][6] ;
  wire \address_reg_n_0_[2][7] ;
  wire \address_reg_n_0_[2][8] ;
  wire \address_reg_n_0_[2][9] ;
  wire \address_reg_n_0_[3][2] ;
  wire \address_reg_n_0_[3][3] ;
  wire \address_reg_n_0_[3][4] ;
  wire \address_reg_n_0_[3][5] ;
  wire \address_reg_n_0_[3][6] ;
  wire \address_reg_n_0_[3][7] ;
  wire \address_reg_n_0_[3][8] ;
  wire \address_reg_n_0_[3][9] ;
  wire [31:0]araddr;
  wire [9:0]araddr_IBUF;
  wire [3:0]arid;
  wire [3:0]arid_IBUF;
  wire [3:0]arlen;
  wire [3:0]arlen_IBUF;
  wire arready;
  wire arready_OBUF;
  wire [1:0]arsize;
  wire [1:0]arsize_IBUF;
  wire arvalid;
  wire arvalid_IBUF;
  wire [31:0]awaddr;
  wire [9:0]awaddr_IBUF;
  wire [3:0]awid;
  wire [3:0]awid_IBUF;
  wire [3:0]awlen;
  wire [3:0]awlen_IBUF;
  wire awready;
  wire awready_OBUF;
  wire [1:0]awsize;
  wire [1:0]awsize_IBUF;
  wire awvalid;
  wire awvalid_IBUF;
  wire [3:0]bid;
  wire \bid[0]_i_1_n_0 ;
  wire \bid[1]_i_1_n_0 ;
  wire \bid[2]_i_1_n_0 ;
  wire \bid[3]_i_1_n_0 ;
  wire \bid[3]_i_2_n_0 ;
  wire [3:0]bid_OBUF;
  wire bready;
  wire bready_IBUF;
  wire [1:0]bresp;
  wire \bresp[1]_i_1_n_0 ;
  wire \bresp[1]_i_2_n_0 ;
  wire [0:0]bresp_OBUF;
  wire bvalid;
  wire bvalid_OBUF;
  wire bvalid_i_1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \data_in[0][0]_i_1_n_0 ;
  wire \data_in[0][0]_i_2_n_0 ;
  wire \data_in[0][1]_i_1_n_0 ;
  wire \data_in[0][1]_i_2_n_0 ;
  wire \data_in[0][2]_i_1_n_0 ;
  wire \data_in[0][2]_i_2_n_0 ;
  wire \data_in[0][3]_i_1_n_0 ;
  wire \data_in[0][3]_i_2_n_0 ;
  wire \data_in[0][4]_i_1_n_0 ;
  wire \data_in[0][4]_i_2_n_0 ;
  wire \data_in[0][5]_i_1_n_0 ;
  wire \data_in[0][5]_i_2_n_0 ;
  wire \data_in[0][6]_i_1_n_0 ;
  wire \data_in[0][6]_i_2_n_0 ;
  wire \data_in[0][7]_i_1_n_0 ;
  wire \data_in[0][7]_i_2_n_0 ;
  wire \data_in[0][7]_i_3_n_0 ;
  wire \data_in[0][7]_i_4_n_0 ;
  wire \data_in[0][7]_i_5_n_0 ;
  wire \data_in[1][0]_i_1_n_0 ;
  wire \data_in[1][0]_i_2_n_0 ;
  wire \data_in[1][1]_i_1_n_0 ;
  wire \data_in[1][1]_i_2_n_0 ;
  wire \data_in[1][1]_i_3_n_0 ;
  wire \data_in[1][2]_i_1_n_0 ;
  wire \data_in[1][3]_i_1_n_0 ;
  wire \data_in[1][3]_i_2_n_0 ;
  wire \data_in[1][3]_i_3_n_0 ;
  wire \data_in[1][3]_i_4_n_0 ;
  wire \data_in[1][3]_i_5_n_0 ;
  wire \data_in[1][4]_i_1_n_0 ;
  wire \data_in[1][5]_i_1_n_0 ;
  wire \data_in[1][5]_i_2_n_0 ;
  wire \data_in[1][6]_i_1_n_0 ;
  wire \data_in[1][6]_i_2_n_0 ;
  wire \data_in[1][7]_i_1_n_0 ;
  wire \data_in[1][7]_i_2_n_0 ;
  wire \data_in[2][0]_i_1_n_0 ;
  wire \data_in[2][1]_i_1_n_0 ;
  wire \data_in[2][2]_i_1_n_0 ;
  wire \data_in[2][2]_i_2_n_0 ;
  wire \data_in[2][2]_i_3_n_0 ;
  wire \data_in[2][3]_i_1_n_0 ;
  wire \data_in[2][4]_i_1_n_0 ;
  wire \data_in[2][5]_i_1_n_0 ;
  wire \data_in[2][6]_i_1_n_0 ;
  wire \data_in[2][7]_i_1_n_0 ;
  wire \data_in[2][7]_i_2_n_0 ;
  wire \data_in[3][0]_i_1_n_0 ;
  wire \data_in[3][1]_i_1_n_0 ;
  wire \data_in[3][2]_i_1_n_0 ;
  wire \data_in[3][2]_i_2_n_0 ;
  wire \data_in[3][3]_i_1_n_0 ;
  wire \data_in[3][4]_i_1_n_0 ;
  wire \data_in[3][5]_i_1_n_0 ;
  wire \data_in[3][6]_i_1_n_0 ;
  wire \data_in[3][7]_i_1_n_0 ;
  wire \data_in[3][7]_i_2_n_0 ;
  wire \data_in[3][7]_i_3_n_0 ;
  wire \data_in[3][7]_i_4_n_0 ;
  wire \data_in_reg_n_0_[0][0] ;
  wire \data_in_reg_n_0_[0][1] ;
  wire \data_in_reg_n_0_[0][2] ;
  wire \data_in_reg_n_0_[0][3] ;
  wire \data_in_reg_n_0_[0][4] ;
  wire \data_in_reg_n_0_[0][5] ;
  wire \data_in_reg_n_0_[0][6] ;
  wire \data_in_reg_n_0_[0][7] ;
  wire \data_in_reg_n_0_[1][0] ;
  wire \data_in_reg_n_0_[1][1] ;
  wire \data_in_reg_n_0_[1][2] ;
  wire \data_in_reg_n_0_[1][3] ;
  wire \data_in_reg_n_0_[1][4] ;
  wire \data_in_reg_n_0_[1][5] ;
  wire \data_in_reg_n_0_[1][6] ;
  wire \data_in_reg_n_0_[1][7] ;
  wire \data_in_reg_n_0_[2][0] ;
  wire \data_in_reg_n_0_[2][1] ;
  wire \data_in_reg_n_0_[2][2] ;
  wire \data_in_reg_n_0_[2][3] ;
  wire \data_in_reg_n_0_[2][4] ;
  wire \data_in_reg_n_0_[2][5] ;
  wire \data_in_reg_n_0_[2][6] ;
  wire \data_in_reg_n_0_[2][7] ;
  wire \data_in_reg_n_0_[3][0] ;
  wire \data_in_reg_n_0_[3][1] ;
  wire \data_in_reg_n_0_[3][2] ;
  wire \data_in_reg_n_0_[3][3] ;
  wire \data_in_reg_n_0_[3][4] ;
  wire \data_in_reg_n_0_[3][5] ;
  wire \data_in_reg_n_0_[3][6] ;
  wire \data_in_reg_n_0_[3][7] ;
  wire [7:0]\data_out[0] ;
  wire [7:0]\data_out[1] ;
  wire [7:0]\data_out[2] ;
  wire [7:0]\data_out[3] ;
  wire [3:3]enable_RW;
  wire \enable_RW[0]_i_1_n_0 ;
  wire \enable_RW[0]_i_2_n_0 ;
  wire \enable_RW[0]_i_3_n_0 ;
  wire \enable_RW[1]_i_1_n_0 ;
  wire \enable_RW[1]_i_2_n_0 ;
  wire \enable_RW[1]_i_3_n_0 ;
  wire \enable_RW[1]_i_4_n_0 ;
  wire \enable_RW[1]_i_5_n_0 ;
  wire \enable_RW[1]_i_6_n_0 ;
  wire \enable_RW[1]_i_7_n_0 ;
  wire \enable_RW[2]_i_1_n_0 ;
  wire \enable_RW[2]_i_2_n_0 ;
  wire \enable_RW[2]_i_3_n_0 ;
  wire \enable_RW[2]_i_4_n_0 ;
  wire \enable_RW[3]_i_1_n_0 ;
  wire \enable_RW[3]_i_3_n_0 ;
  wire \enable_RW[3]_i_4_n_0 ;
  wire \enable_RW[3]_i_5_n_0 ;
  wire \enable_RW[3]_i_6_n_0 ;
  wire \enable_RW_reg_n_0_[0] ;
  wire \enable_RW_reg_n_0_[1] ;
  wire \enable_RW_reg_n_0_[2] ;
  wire \enable_RW_reg_n_0_[3] ;
  wire flip_i_1_n_0;
  wire flip_i_2_n_0;
  wire flip_i_3_n_0;
  wire flip_i_4_n_0;
  wire flip_i_5_n_0;
  wire flip_i_6_n_0;
  wire flip_i_7_n_0;
  wire flip_reg_n_0;
  wire [2:0]no_of_transfers;
  wire \no_of_transfers[0]_i_1_n_0 ;
  wire \no_of_transfers[1]_i_1_n_0 ;
  wire \no_of_transfers[2]_i_1_n_0 ;
  wire \no_of_transfers[2]_i_2_n_0 ;
  wire \no_of_transfers[2]_i_3_n_0 ;
  wire [9:0]p_0_in;
  wire [31:31]ram_controller_state2;
  wire [31:0]rdata;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[20]_i_1_n_0 ;
  wire \rdata[21]_i_1_n_0 ;
  wire \rdata[22]_i_1_n_0 ;
  wire \rdata[23]_i_1_n_0 ;
  wire \rdata[24]_i_1_n_0 ;
  wire \rdata[25]_i_1_n_0 ;
  wire \rdata[26]_i_1_n_0 ;
  wire \rdata[27]_i_1_n_0 ;
  wire \rdata[28]_i_1_n_0 ;
  wire \rdata[29]_i_1_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[30]_i_1_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_2_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire [31:0]rdata_OBUF;
  wire [3:3]read;
  wire \read[0]_i_1_n_0 ;
  wire \read[0]_i_2_n_0 ;
  wire \read[0]_i_3_n_0 ;
  wire \read[0]_i_4_n_0 ;
  wire \read[0]_i_5_n_0 ;
  wire \read[1]_i_1_n_0 ;
  wire \read[1]_i_2_n_0 ;
  wire \read[1]_i_3_n_0 ;
  wire \read[1]_i_4_n_0 ;
  wire \read[1]_i_5_n_0 ;
  wire \read[1]_i_6_n_0 ;
  wire \read[1]_i_7_n_0 ;
  wire \read[1]_i_8_n_0 ;
  wire \read[1]_i_9_n_0 ;
  wire \read[2]_i_1_n_0 ;
  wire \read[2]_i_2_n_0 ;
  wire \read[2]_i_3_n_0 ;
  wire \read[2]_i_4_n_0 ;
  wire \read[2]_i_5_n_0 ;
  wire \read[2]_i_6_n_0 ;
  wire \read[2]_i_7_n_0 ;
  wire \read[3]_i_10_n_0 ;
  wire \read[3]_i_11_n_0 ;
  wire \read[3]_i_12_n_0 ;
  wire \read[3]_i_13_n_0 ;
  wire \read[3]_i_14_n_0 ;
  wire \read[3]_i_15_n_0 ;
  wire \read[3]_i_16_n_0 ;
  wire \read[3]_i_17_n_0 ;
  wire \read[3]_i_1_n_0 ;
  wire \read[3]_i_3_n_0 ;
  wire \read[3]_i_4_n_0 ;
  wire \read[3]_i_5_n_0 ;
  wire \read[3]_i_6_n_0 ;
  wire \read[3]_i_7_n_0 ;
  wire \read[3]_i_8_n_0 ;
  wire \read[3]_i_9_n_0 ;
  wire [9:0]read_address;
  wire [9:0]read_address0;
  wire \read_address[3]_i_5_n_0 ;
  wire \read_address[3]_i_6_n_0 ;
  wire \read_address[3]_i_7_n_0 ;
  wire \read_address[3]_i_8_n_0 ;
  wire \read_address[7]_i_3_n_0 ;
  wire \read_address[7]_i_4_n_0 ;
  wire \read_address[7]_i_5_n_0 ;
  wire \read_address[7]_i_6_n_0 ;
  wire \read_address[9]_i_1_n_0 ;
  wire \read_address[9]_i_3_n_0 ;
  wire \read_address[9]_i_5_n_0 ;
  wire \read_address[9]_i_6_n_0 ;
  wire [9:0]\read_address_queue_reg[0]__0 ;
  wire [9:0]\read_address_queue_reg[1]__0 ;
  wire read_address_read_pointer_i_1_n_0;
  wire read_address_read_pointer_i_2_n_0;
  wire read_address_read_pointer_i_3_n_0;
  wire read_address_read_pointer_i_4_n_0;
  wire read_address_read_pointer_i_5_n_0;
  wire read_address_read_pointer_i_6_n_0;
  wire read_address_read_pointer_reg_n_0;
  wire \read_address_reg[3]_i_2_n_0 ;
  wire \read_address_reg[7]_i_2_n_0 ;
  wire \read_address_reg_n_0_[0] ;
  wire \read_address_reg_n_0_[1] ;
  wire \read_address_reg_n_0_[2] ;
  wire \read_address_reg_n_0_[3] ;
  wire \read_address_reg_n_0_[4] ;
  wire \read_address_reg_n_0_[5] ;
  wire \read_address_reg_n_0_[6] ;
  wire \read_address_reg_n_0_[7] ;
  wire \read_address_reg_n_0_[8] ;
  wire \read_address_reg_n_0_[9] ;
  wire read_address_write_pointer_i_1_n_0;
  wire read_address_write_pointer_reg_n_0;
  wire \read_id_queue_reg_n_0_[0][0] ;
  wire \read_id_queue_reg_n_0_[0][1] ;
  wire \read_id_queue_reg_n_0_[0][2] ;
  wire \read_id_queue_reg_n_0_[0][3] ;
  wire \read_id_queue_reg_n_0_[1][0] ;
  wire \read_id_queue_reg_n_0_[1][1] ;
  wire \read_id_queue_reg_n_0_[1][2] ;
  wire \read_id_queue_reg_n_0_[1][3] ;
  wire \read_len_queue[0][3]_i_1_n_0 ;
  wire \read_len_queue[1][3]_i_1_n_0 ;
  wire \read_len_queue_reg_n_0_[0][0] ;
  wire \read_len_queue_reg_n_0_[0][1] ;
  wire \read_len_queue_reg_n_0_[0][2] ;
  wire \read_len_queue_reg_n_0_[0][3] ;
  wire \read_len_queue_reg_n_0_[1][0] ;
  wire \read_len_queue_reg_n_0_[1][1] ;
  wire \read_len_queue_reg_n_0_[1][2] ;
  wire \read_len_queue_reg_n_0_[1][3] ;
  wire \read_reg_n_0_[0] ;
  wire \read_reg_n_0_[1] ;
  wire \read_reg_n_0_[2] ;
  wire \read_reg_n_0_[3] ;
  wire \read_size_queue_reg_n_0_[0][0] ;
  wire \read_size_queue_reg_n_0_[0][1] ;
  wire \read_size_queue_reg_n_0_[1][0] ;
  wire \read_size_queue_reg_n_0_[1][1] ;
  wire reset;
  wire reset_IBUF;
  wire [3:0]rid;
  wire \rid[0]_i_1_n_0 ;
  wire \rid[1]_i_1_n_0 ;
  wire \rid[2]_i_1_n_0 ;
  wire \rid[3]_i_1_n_0 ;
  wire \rid[3]_i_2_n_0 ;
  wire [3:0]rid_OBUF;
  wire rlast;
  wire rlast_OBUF;
  wire rlast_i_10_n_0;
  wire rlast_i_11_n_0;
  wire rlast_i_12_n_0;
  wire rlast_i_13_n_0;
  wire rlast_i_14_n_0;
  wire rlast_i_15_n_0;
  wire rlast_i_16_n_0;
  wire rlast_i_17_n_0;
  wire rlast_i_18_n_0;
  wire rlast_i_1_n_0;
  wire rlast_i_3_n_0;
  wire rlast_i_5_n_0;
  wire rlast_i_6_n_0;
  wire rlast_i_7_n_0;
  wire rlast_i_9_n_0;
  wire rlast_reg_i_2_n_1;
  wire rlast_reg_i_4_n_0;
  wire rlast_reg_i_8_n_0;
  wire rready;
  wire rready_IBUF;
  wire [1:0]rresp;
  wire rvalid;
  wire rvalid_OBUF;
  wire rvalid_i_1_n_0;
  wire [31:0]wdata;
  wire [31:0]wdata_IBUF;
  wire wready;
  wire wready7_out;
  wire wready_OBUF;
  wire wready_i_1_n_0;
  wire wready_i_2_n_0;
  wire [9:0]write_address;
  wire \write_address[3]_i_3_n_0 ;
  wire \write_address[3]_i_4_n_0 ;
  wire \write_address[3]_i_5_n_0 ;
  wire \write_address[3]_i_6_n_0 ;
  wire \write_address[9]_i_10_n_0 ;
  wire \write_address[9]_i_11_n_0 ;
  wire \write_address[9]_i_12_n_0 ;
  wire \write_address[9]_i_16_n_0 ;
  wire \write_address[9]_i_17_n_0 ;
  wire \write_address[9]_i_18_n_0 ;
  wire \write_address[9]_i_19_n_0 ;
  wire \write_address[9]_i_1_n_0 ;
  wire \write_address[9]_i_20_n_0 ;
  wire \write_address[9]_i_22_n_0 ;
  wire \write_address[9]_i_23_n_0 ;
  wire \write_address[9]_i_24_n_0 ;
  wire \write_address[9]_i_25_n_0 ;
  wire \write_address[9]_i_26_n_0 ;
  wire \write_address[9]_i_27_n_0 ;
  wire \write_address[9]_i_28_n_0 ;
  wire \write_address[9]_i_29_n_0 ;
  wire \write_address[9]_i_30_n_0 ;
  wire \write_address[9]_i_31_n_0 ;
  wire \write_address[9]_i_32_n_0 ;
  wire \write_address[9]_i_33_n_0 ;
  wire \write_address[9]_i_3_n_0 ;
  wire \write_address[9]_i_5_n_0 ;
  wire \write_address[9]_i_9_n_0 ;
  wire [9:0]\write_address_queue_reg[0]__0 ;
  wire [9:0]\write_address_queue_reg[1]__0 ;
  wire write_address_read_pointer;
  wire write_address_read_pointer_i_1_n_0;
  wire write_address_read_pointer_reg_n_0;
  wire \write_address_reg[3]_i_2_n_0 ;
  wire \write_address_reg[3]_i_2_n_4 ;
  wire \write_address_reg[3]_i_2_n_5 ;
  wire \write_address_reg[3]_i_2_n_6 ;
  wire \write_address_reg[3]_i_2_n_7 ;
  wire \write_address_reg[7]_i_2_n_0 ;
  wire \write_address_reg[7]_i_2_n_4 ;
  wire \write_address_reg[7]_i_2_n_5 ;
  wire \write_address_reg[7]_i_2_n_6 ;
  wire \write_address_reg[7]_i_2_n_7 ;
  wire \write_address_reg[9]_i_15_n_0 ;
  wire \write_address_reg[9]_i_21_n_0 ;
  wire \write_address_reg[9]_i_4_n_0 ;
  wire \write_address_reg[9]_i_6_n_6 ;
  wire \write_address_reg[9]_i_6_n_7 ;
  wire \write_address_reg[9]_i_7_n_0 ;
  wire \write_address_reg_n_0_[0] ;
  wire \write_address_reg_n_0_[1] ;
  wire \write_address_reg_n_0_[2] ;
  wire \write_address_reg_n_0_[3] ;
  wire \write_address_reg_n_0_[4] ;
  wire \write_address_reg_n_0_[5] ;
  wire \write_address_reg_n_0_[6] ;
  wire \write_address_reg_n_0_[7] ;
  wire \write_address_reg_n_0_[8] ;
  wire \write_address_reg_n_0_[9] ;
  wire write_address_write_pointer_i_1_n_0;
  wire write_address_write_pointer_reg_n_0;
  wire write_flip;
  wire write_flip_i_1_n_0;
  wire \write_id_queue_reg_n_0_[0][0] ;
  wire \write_id_queue_reg_n_0_[0][1] ;
  wire \write_id_queue_reg_n_0_[0][2] ;
  wire \write_id_queue_reg_n_0_[0][3] ;
  wire \write_id_queue_reg_n_0_[1][0] ;
  wire \write_id_queue_reg_n_0_[1][1] ;
  wire \write_id_queue_reg_n_0_[1][2] ;
  wire \write_id_queue_reg_n_0_[1][3] ;
  wire \write_len_queue_reg_n_0_[0][0] ;
  wire \write_len_queue_reg_n_0_[0][1] ;
  wire \write_len_queue_reg_n_0_[0][2] ;
  wire \write_len_queue_reg_n_0_[0][3] ;
  wire \write_len_queue_reg_n_0_[1][0] ;
  wire \write_len_queue_reg_n_0_[1][1] ;
  wire \write_len_queue_reg_n_0_[1][2] ;
  wire \write_len_queue_reg_n_0_[1][3] ;
  wire \write_size_queue[0][1]_i_1_n_0 ;
  wire \write_size_queue[1][1]_i_1_n_0 ;
  wire \write_size_queue_reg_n_0_[0][0] ;
  wire \write_size_queue_reg_n_0_[0][1] ;
  wire \write_size_queue_reg_n_0_[1][0] ;
  wire \write_size_queue_reg_n_0_[1][1] ;
  wire wvalid;
  wire wvalid_IBUF;
  wire [1:0]\NLW_genblk1[0].R_address_UNCONNECTED ;
  wire [1:0]\NLW_genblk1[1].R_address_UNCONNECTED ;
  wire [1:0]\NLW_genblk1[2].R_address_UNCONNECTED ;
  wire [1:0]\NLW_genblk1[3].R_address_UNCONNECTED ;
  wire [2:0]\NLW_read_address_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_read_address_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_read_address_reg[9]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_read_address_reg[9]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_rlast_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_rlast_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_rlast_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_rlast_reg_i_4_O_UNCONNECTED;
  wire [2:0]NLW_rlast_reg_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_rlast_reg_i_8_O_UNCONNECTED;
  wire [2:0]\NLW_write_address_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_write_address_reg[7]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_write_address_reg[9]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_address_reg[9]_i_15_O_UNCONNECTED ;
  wire [2:0]\NLW_write_address_reg[9]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_address_reg[9]_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_write_address_reg[9]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_address_reg[9]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_write_address_reg[9]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_write_address_reg[9]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_write_address_reg[9]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_address_reg[9]_i_7_O_UNCONNECTED ;

initial begin
 $sdf_annotate("AXI_RAM_Slave_tb_time_impl.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'hF0BAAAAA)) 
    \FSM_sequential_ram_controller_state[0]_i_1 
       (.I0(\FSM_sequential_ram_controller_state[0]_i_2_n_0 ),
        .I1(bready_IBUF),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\FSM_sequential_ram_controller_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEEFFEEFFEE)) 
    \FSM_sequential_ram_controller_state[0]_i_2 
       (.I0(\FSM_sequential_ram_controller_state[0]_i_3_n_0 ),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(read_address_read_pointer_i_2_n_0),
        .I3(\FSM_sequential_ram_controller_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(rready_IBUF),
        .O(\FSM_sequential_ram_controller_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_ram_controller_state[0]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(\write_address_reg[9]_i_4_n_0 ),
        .O(\FSM_sequential_ram_controller_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h11110110)) 
    \FSM_sequential_ram_controller_state[0]_i_4 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I2(read_address_write_pointer_reg_n_0),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(flip_reg_n_0),
        .O(\FSM_sequential_ram_controller_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF07A)) 
    \FSM_sequential_ram_controller_state[1]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(rready_IBUF),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\FSM_sequential_ram_controller_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF3F000A)) 
    \FSM_sequential_ram_controller_state[2]_i_1 
       (.I0(wready7_out),
        .I1(bready_IBUF),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\FSM_sequential_ram_controller_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_ram_controller_state[2]_i_2 
       (.I0(reset_IBUF),
        .O(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0909090900090900)) 
    \FSM_sequential_ram_controller_state[2]_i_3 
       (.I0(read_address_write_pointer_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(flip_reg_n_0),
        .I3(write_address_read_pointer_reg_n_0),
        .I4(write_address_write_pointer_reg_n_0),
        .I5(write_flip),
        .O(wready7_out));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ram_controller_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_ram_controller_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_ram_controller_state_reg_n_0_[0] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ram_controller_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_ram_controller_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_ram_controller_state_reg_n_0_[1] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ram_controller_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_ram_controller_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_ram_controller_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000F0F0FF004444)) 
    \address[0][2]_i_1 
       (.I0(\address[0][2]_i_2_n_0 ),
        .I1(\address[0][2]_i_3_n_0 ),
        .I2(\address[0][2]_i_4_n_0 ),
        .I3(\address[0][2]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0A3A30BB3B3B33B)) 
    \address[0][2]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\address[0][2]_i_6_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\read_size_queue_reg_n_0_[1][0] ),
        .O(\address[0][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFB4)) 
    \address[0][2]_i_3 
       (.I0(\read[3]_i_17_n_0 ),
        .I1(\read_size_queue_reg_n_0_[0][0] ),
        .I2(\read_address_queue_reg[0]__0 [2]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .O(\address[0][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h4B5A5AF0)) 
    \address[0][2]_i_4 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\read[3]_i_11_n_0 ),
        .I2(\read_address_reg_n_0_[2] ),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .O(\address[0][2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h1757E8A8)) 
    \address[0][2]_i_5 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_4_n_0 ),
        .I4(\write_address_reg_n_0_[2] ),
        .O(\address[0][2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBBFB)) 
    \address[0][2]_i_6 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[1]__0 [2]),
        .I3(\read_size_queue_reg_n_0_[1][0] ),
        .O(\address[0][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0F0FF00EEEE)) 
    \address[0][3]_i_1 
       (.I0(\address[0][3]_i_2_n_0 ),
        .I1(\address[0][3]_i_3_n_0 ),
        .I2(\address[0][3]_i_4_n_0 ),
        .I3(\address[0][3]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \address[0][3]_i_2 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_size_queue_reg_n_0_[0][1] ),
        .I2(\address[0][3]_i_6_n_0 ),
        .I3(\read_size_queue_reg_n_0_[0][0] ),
        .I4(\read_address_queue_reg[0]__0 [3]),
        .I5(\address[0][3]_i_7_n_0 ),
        .O(\address[0][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \address[0][3]_i_3 
       (.I0(\read_address_queue_reg[1]__0 [3]),
        .I1(\read_size_queue_reg_n_0_[1][0] ),
        .I2(\address[0][3]_i_6_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .O(\address[0][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4BF05AF05AF0F0F0)) 
    \address[0][3]_i_4 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\read[3]_i_11_n_0 ),
        .I2(\read_address_reg_n_0_[3] ),
        .I3(\read_address_reg_n_0_[2] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\read_address_reg_n_0_[0] ),
        .O(\address[0][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h17FFE80057FFA800)) 
    \address[0][3]_i_5 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[2] ),
        .I4(\write_address_reg_n_0_[3] ),
        .I5(\data_in[0][7]_i_4_n_0 ),
        .O(\address[0][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC3CCA5A5C3CCAAAA)) 
    \address[0][3]_i_6 
       (.I0(\read_address_queue_reg[0]__0 [3]),
        .I1(\read_address_queue_reg[1]__0 [3]),
        .I2(\read[3]_i_17_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [2]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [2]),
        .O(\address[0][3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h222A8880)) 
    \address[0][3]_i_7 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .O(\address[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0F0FF00EEEE)) 
    \address[0][4]_i_1 
       (.I0(\address[0][4]_i_2_n_0 ),
        .I1(\address[0][4]_i_3_n_0 ),
        .I2(\address[0][4]_i_4_n_0 ),
        .I3(\address[0][4]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[0][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \address[0][4]_i_10 
       (.I0(\write_address_reg_n_0_[2] ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(\write_address_reg_n_0_[3] ),
        .O(\address[0][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000003A)) 
    \address[0][4]_i_2 
       (.I0(\read_address_queue_reg[0]__0 [4]),
        .I1(\address[0][4]_i_6_n_0 ),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[0][4]_i_7_n_0 ),
        .O(\address[0][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04440040)) 
    \address[0][4]_i_3 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\address[0][4]_i_6_n_0 ),
        .I4(\read_address_queue_reg[1]__0 [4]),
        .O(\address[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB44BB44B847BB44)) 
    \address[0][4]_i_4 
       (.I0(\address[0][4]_i_8_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read[3]_i_11_n_0 ),
        .I3(\read_address_reg_n_0_[4] ),
        .I4(\read_address_reg_n_0_[0] ),
        .I5(\address[0][4]_i_9_n_0 ),
        .O(\address[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB8BBBBB44744444)) 
    \address[0][4]_i_5 
       (.I0(\address[0][4]_i_10_n_0 ),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(\address[1][5]_i_3_n_0 ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\write_address_reg_n_0_[4] ),
        .O(\address[0][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \address[0][4]_i_6 
       (.I0(\read_address_queue_reg[0]__0 [4]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[1]__0 [4]),
        .I3(p_0_in[2]),
        .I4(\read[3]_i_17_n_0 ),
        .I5(p_0_in[3]),
        .O(\address[0][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h665A6600005A0000)) 
    \address[0][4]_i_7 
       (.I0(\address[0][9]_i_18_n_0 ),
        .I1(\read_address_queue_reg[1]__0 [4]),
        .I2(\read_address_queue_reg[0]__0 [4]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\read_size_queue_reg_n_0_[1][1] ),
        .O(\address[0][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \address[0][4]_i_8 
       (.I0(\read_address_reg_n_0_[2] ),
        .I1(\read_address_reg_n_0_[1] ),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\read_address_reg_n_0_[3] ),
        .O(\address[0][4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \address[0][4]_i_9 
       (.I0(\read_address_reg_n_0_[2] ),
        .I1(\read_address_reg_n_0_[1] ),
        .I2(\read_address_reg_n_0_[3] ),
        .O(\address[0][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0F0FF00EEEE)) 
    \address[0][5]_i_1 
       (.I0(\address[0][5]_i_2_n_0 ),
        .I1(\address[0][5]_i_3_n_0 ),
        .I2(\address[0][5]_i_4_n_0 ),
        .I3(\address[0][5]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \address[0][5]_i_10 
       (.I0(\read_address_reg_n_0_[5] ),
        .I1(\read_address_reg_n_0_[4] ),
        .I2(\read_address_reg_n_0_[3] ),
        .I3(\read_address_reg_n_0_[1] ),
        .I4(\read_address_reg_n_0_[2] ),
        .I5(\read_address_reg_n_0_[0] ),
        .O(\address[0][5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    \address[0][5]_i_11 
       (.I0(\write_address_reg_n_0_[3] ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[2] ),
        .I4(\write_address_reg_n_0_[4] ),
        .O(\address[0][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3A003A003A00)) 
    \address[0][5]_i_2 
       (.I0(\read_address_queue_reg[0]__0 [5]),
        .I1(\address[0][5]_i_6_n_0 ),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\address[0][5]_i_7_n_0 ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\address[0][5]_i_8_n_0 ),
        .O(\address[0][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04440040)) 
    \address[0][5]_i_3 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\address[0][5]_i_6_n_0 ),
        .I4(\read_address_queue_reg[1]__0 [5]),
        .O(\address[0][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB4B7B484)) 
    \address[0][5]_i_4 
       (.I0(\address[0][5]_i_9_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[5] ),
        .I3(\read[3]_i_11_n_0 ),
        .I4(\address[0][5]_i_10_n_0 ),
        .O(\address[0][5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BB7444)) 
    \address[0][5]_i_5 
       (.I0(\address[0][5]_i_11_n_0 ),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\address[2][5]_i_3_n_0 ),
        .I3(\data_in[0][7]_i_4_n_0 ),
        .I4(\write_address_reg_n_0_[5] ),
        .O(\address[0][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h59555555)) 
    \address[0][5]_i_6 
       (.I0(p_0_in[5]),
        .I1(p_0_in[3]),
        .I2(\read[3]_i_17_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .O(\address[0][5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \address[0][5]_i_7 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_size_queue_reg_n_0_[0][1] ),
        .O(\address[0][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \address[0][5]_i_8 
       (.I0(\read_address_queue_reg[0]__0 [5]),
        .I1(\read_address_queue_reg[1]__0 [5]),
        .I2(\address[0][9]_i_18_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [4]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [4]),
        .O(\address[0][5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    \address[0][5]_i_9 
       (.I0(\read_address_reg_n_0_[3] ),
        .I1(\read_address_reg_n_0_[0] ),
        .I2(\read_address_reg_n_0_[1] ),
        .I3(\read_address_reg_n_0_[2] ),
        .I4(\read_address_reg_n_0_[4] ),
        .O(\address[0][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0F0FF00EEEE)) 
    \address[0][6]_i_1 
       (.I0(\address[0][6]_i_2_n_0 ),
        .I1(\address[0][6]_i_3_n_0 ),
        .I2(\address[0][6]_i_4_n_0 ),
        .I3(\address[0][6]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \address[0][6]_i_10 
       (.I0(\read_address_reg_n_0_[4] ),
        .I1(\read_address_reg_n_0_[3] ),
        .I2(\read_address_reg_n_0_[1] ),
        .I3(\read_address_reg_n_0_[2] ),
        .I4(\read_address_reg_n_0_[0] ),
        .I5(\read_address_reg_n_0_[5] ),
        .O(\address[0][6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    \address[0][6]_i_11 
       (.I0(\write_address_reg_n_0_[4] ),
        .I1(\write_address_reg_n_0_[2] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\write_address_reg_n_0_[3] ),
        .I5(\write_address_reg_n_0_[5] ),
        .O(\address[0][6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3A003A003A00)) 
    \address[0][6]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [6]),
        .I1(\address[0][6]_i_6_n_0 ),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\address[0][6]_i_7_n_0 ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\address[0][6]_i_8_n_0 ),
        .O(\address[0][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01110010)) 
    \address[0][6]_i_3 
       (.I0(\read_size_queue_reg_n_0_[0][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\address[0][6]_i_6_n_0 ),
        .I4(\read_address_queue_reg[0]__0 [6]),
        .O(\address[0][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB44B847)) 
    \address[0][6]_i_4 
       (.I0(\address[0][6]_i_9_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read[3]_i_11_n_0 ),
        .I3(\read_address_reg_n_0_[6] ),
        .I4(\address[0][6]_i_10_n_0 ),
        .O(\address[0][6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B4474)) 
    \address[0][6]_i_5 
       (.I0(\address[0][6]_i_11_n_0 ),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\address[2][6]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[6] ),
        .O(\address[0][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5595555555555555)) 
    \address[0][6]_i_6 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[2]),
        .I3(\read[3]_i_17_n_0 ),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(\address[0][6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[0][6]_i_7 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_size_queue_reg_n_0_[1][1] ),
        .O(\address[0][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1DE2E2E2E2E2E2E2)) 
    \address[0][6]_i_8 
       (.I0(\read_address_queue_reg[0]__0 [6]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[1]__0 [6]),
        .I3(p_0_in[4]),
        .I4(\address[0][9]_i_18_n_0 ),
        .I5(p_0_in[5]),
        .O(\address[0][6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    \address[0][6]_i_9 
       (.I0(\read_address_reg_n_0_[4] ),
        .I1(\read_address_reg_n_0_[2] ),
        .I2(\read_address_reg_n_0_[1] ),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[3] ),
        .I5(\read_address_reg_n_0_[5] ),
        .O(\address[0][6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
    \address[0][7]_i_1 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[0][7]_i_2_n_0 ),
        .I2(\address[0][7]_i_3_n_0 ),
        .I3(\address[0][7]_i_4_n_0 ),
        .I4(\address[0][7]_i_5_n_0 ),
        .I5(\address[0][7]_i_6_n_0 ),
        .O(\address[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \address[0][7]_i_10 
       (.I0(\write_address_reg_n_0_[7] ),
        .I1(\write_address_reg_n_0_[6] ),
        .I2(\write_address_reg_n_0_[4] ),
        .I3(\address[1][5]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(\write_address_reg_n_0_[5] ),
        .O(\address[0][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \address[0][7]_i_11 
       (.I0(\write_address_reg_n_0_[5] ),
        .I1(\write_address_reg_n_0_[3] ),
        .I2(\data_in[1][1]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[2] ),
        .I4(\write_address_reg_n_0_[4] ),
        .I5(\write_address_reg_n_0_[6] ),
        .O(\address[0][7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \address[0][7]_i_12 
       (.I0(p_0_in[5]),
        .I1(p_0_in[3]),
        .I2(\read[3]_i_17_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .O(\address[0][7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \address[0][7]_i_13 
       (.I0(\read_address_reg_n_0_[1] ),
        .I1(\read_address_reg_n_0_[0] ),
        .O(\address[0][7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \address[0][7]_i_2 
       (.I0(\read_address_queue_reg[0]__0 [7]),
        .I1(\read_size_queue_reg_n_0_[0][0] ),
        .I2(\address[0][7]_i_7_n_0 ),
        .I3(\read_size_queue_reg_n_0_[0][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .O(\address[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h665A6600005A0000)) 
    \address[0][7]_i_3 
       (.I0(\address[0][9]_i_12_n_0 ),
        .I1(\read_address_queue_reg[1]__0 [7]),
        .I2(\read_address_queue_reg[0]__0 [7]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\read_size_queue_reg_n_0_[1][1] ),
        .O(\address[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \address[0][7]_i_4 
       (.I0(\read_address_queue_reg[1]__0 [7]),
        .I1(\read_size_queue_reg_n_0_[1][0] ),
        .I2(\address[0][7]_i_7_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .O(\address[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA00A80800AAA808)) 
    \address[0][7]_i_5 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\address[0][7]_i_8_n_0 ),
        .I2(\read[3]_i_11_n_0 ),
        .I3(\read_address_reg_n_0_[7] ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\address[0][7]_i_9_n_0 ),
        .O(\address[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8888A8082222A808)) 
    \address[0][7]_i_6 
       (.I0(\write_address[9]_i_5_n_0 ),
        .I1(\write_address_reg_n_0_[7] ),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\address[0][7]_i_10_n_0 ),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\address[0][7]_i_11_n_0 ),
        .O(\address[0][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC3CCA5A5C3CCAAAA)) 
    \address[0][7]_i_7 
       (.I0(\read_address_queue_reg[0]__0 [7]),
        .I1(\read_address_queue_reg[1]__0 [7]),
        .I2(\address[0][7]_i_12_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [6]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [6]),
        .O(\address[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \address[0][7]_i_8 
       (.I0(\read_address_reg_n_0_[7] ),
        .I1(\read_address_reg_n_0_[6] ),
        .I2(\read_address_reg_n_0_[4] ),
        .I3(\address[0][4]_i_9_n_0 ),
        .I4(\read_address_reg_n_0_[0] ),
        .I5(\read_address_reg_n_0_[5] ),
        .O(\address[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \address[0][7]_i_9 
       (.I0(\read_address_reg_n_0_[5] ),
        .I1(\read_address_reg_n_0_[3] ),
        .I2(\address[0][7]_i_13_n_0 ),
        .I3(\read_address_reg_n_0_[2] ),
        .I4(\read_address_reg_n_0_[4] ),
        .I5(\read_address_reg_n_0_[6] ),
        .O(\address[0][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
    \address[0][8]_i_1 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[0][8]_i_2_n_0 ),
        .I2(\address[0][8]_i_3_n_0 ),
        .I3(\address[0][8]_i_4_n_0 ),
        .I4(\address[0][8]_i_5_n_0 ),
        .I5(\address[0][8]_i_6_n_0 ),
        .O(\address[0][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04440040)) 
    \address[0][8]_i_2 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\address[0][8]_i_7_n_0 ),
        .I4(\read_address_queue_reg[1]__0 [8]),
        .O(\address[0][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7877788800000000)) 
    \address[0][8]_i_3 
       (.I0(p_0_in[7]),
        .I1(\address[0][9]_i_12_n_0 ),
        .I2(\read_address_queue_reg[1]__0 [8]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_address_queue_reg[0]__0 [8]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\address[0][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h01110010)) 
    \address[0][8]_i_4 
       (.I0(\read_size_queue_reg_n_0_[0][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\address[0][8]_i_7_n_0 ),
        .I4(\read_address_queue_reg[0]__0 [8]),
        .O(\address[0][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0280A0AA028)) 
    \address[0][8]_i_5 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\address[2][8]_i_3_n_0 ),
        .I2(\read_address_reg_n_0_[8] ),
        .I3(\read[3]_i_11_n_0 ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\address[0][8]_i_8_n_0 ),
        .O(\address[0][8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8888288822222888)) 
    \address[0][8]_i_6 
       (.I0(\write_address[9]_i_5_n_0 ),
        .I1(\write_address_reg_n_0_[8] ),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\address[0][8]_i_9_n_0 ),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\address[0][9]_i_16_n_0 ),
        .O(\address[0][8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC333A5A5C3335555)) 
    \address[0][8]_i_7 
       (.I0(\read_address_queue_reg[0]__0 [8]),
        .I1(\read_address_queue_reg[1]__0 [8]),
        .I2(\address[0][9]_i_17_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [7]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [7]),
        .O(\address[0][8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \address[0][8]_i_8 
       (.I0(\read_address_reg_n_0_[6] ),
        .I1(\address[0][6]_i_9_n_0 ),
        .I2(\read_address_reg_n_0_[7] ),
        .O(\address[0][8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \address[0][8]_i_9 
       (.I0(\write_address_reg_n_0_[7] ),
        .I1(\write_address_reg_n_0_[6] ),
        .I2(\write_address_reg_n_0_[4] ),
        .I3(\address[1][5]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(\write_address_reg_n_0_[5] ),
        .O(\address[0][8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888A888)) 
    \address[0][9]_i_1 
       (.I0(reset_IBUF),
        .I1(\address[0][9]_i_3_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\write_address[9]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\address[0][9]_i_4_n_0 ),
        .O(\address[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A808A80808A808)) 
    \address[0][9]_i_10 
       (.I0(\write_address[9]_i_5_n_0 ),
        .I1(\address[0][9]_i_15_n_0 ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[8] ),
        .I4(\address[0][9]_i_16_n_0 ),
        .I5(\write_address_reg_n_0_[9] ),
        .O(\address[0][9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1DE2E2E2E2E2E2E2)) 
    \address[0][9]_i_11 
       (.I0(\read_address_queue_reg[0]__0 [9]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[1]__0 [9]),
        .I3(p_0_in[7]),
        .I4(\address[0][9]_i_17_n_0 ),
        .I5(p_0_in[8]),
        .O(\address[0][9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE200000000000000)) 
    \address[0][9]_i_12 
       (.I0(\read_address_queue_reg[0]__0 [6]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[1]__0 [6]),
        .I3(p_0_in[4]),
        .I4(\address[0][9]_i_18_n_0 ),
        .I5(p_0_in[5]),
        .O(\address[0][9]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h55955555)) 
    \address[0][9]_i_13 
       (.I0(\read_address_reg_n_0_[9] ),
        .I1(\read_address_reg_n_0_[7] ),
        .I2(\read_address_reg_n_0_[6] ),
        .I3(\address[0][6]_i_10_n_0 ),
        .I4(\read_address_reg_n_0_[8] ),
        .O(\address[0][9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \address[0][9]_i_14 
       (.I0(\read_address_reg_n_0_[8] ),
        .I1(\read_address_reg_n_0_[7] ),
        .I2(\address[0][6]_i_9_n_0 ),
        .I3(\read_address_reg_n_0_[6] ),
        .O(\address[0][9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \address[0][9]_i_15 
       (.I0(\write_address_reg_n_0_[8] ),
        .I1(\write_address_reg_n_0_[7] ),
        .I2(\write_address_reg_n_0_[6] ),
        .I3(\address[2][6]_i_3_n_0 ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\write_address_reg_n_0_[9] ),
        .O(\address[0][9]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \address[0][9]_i_16 
       (.I0(\write_address_reg_n_0_[6] ),
        .I1(\address[0][6]_i_11_n_0 ),
        .I2(\write_address_reg_n_0_[7] ),
        .O(\address[0][9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \address[0][9]_i_17 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[2]),
        .I3(\read[3]_i_17_n_0 ),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(\address[0][9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAA888A800000000)) 
    \address[0][9]_i_18 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(\read_address_queue_reg[0]__0 [0]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_address_queue_reg[1]__0 [0]),
        .I5(p_0_in[2]),
        .O(\address[0][9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
    \address[0][9]_i_2 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[0][9]_i_6_n_0 ),
        .I2(\address[0][9]_i_7_n_0 ),
        .I3(\address[0][9]_i_8_n_0 ),
        .I4(\address[0][9]_i_9_n_0 ),
        .I5(\address[0][9]_i_10_n_0 ),
        .O(\address[0][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A00000C)) 
    \address[0][9]_i_3 
       (.I0(\read[0]_i_5_n_0 ),
        .I1(\read[0]_i_4_n_0 ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\address[0][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDFFD7775)) 
    \address[0][9]_i_4 
       (.I0(wvalid_IBUF),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .O(\address[0][9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \address[0][9]_i_5 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[0][9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \address[0][9]_i_6 
       (.I0(\read_address_queue_reg[1]__0 [9]),
        .I1(\read_size_queue_reg_n_0_[1][0] ),
        .I2(\address[0][9]_i_11_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .O(\address[0][9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \address[0][9]_i_7 
       (.I0(\read_address_queue_reg[0]__0 [9]),
        .I1(\read_size_queue_reg_n_0_[0][0] ),
        .I2(\address[0][9]_i_11_n_0 ),
        .I3(\read_size_queue_reg_n_0_[0][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .O(\address[0][9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h7F800000)) 
    \address[0][9]_i_8 
       (.I0(p_0_in[8]),
        .I1(\address[0][9]_i_12_n_0 ),
        .I2(p_0_in[7]),
        .I3(p_0_in[9]),
        .I4(\rdata[31]_i_4_n_0 ),
        .O(\address[0][9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2222880A8888880A)) 
    \address[0][9]_i_9 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\read_address_reg_n_0_[9] ),
        .I2(\address[0][9]_i_13_n_0 ),
        .I3(\read[3]_i_11_n_0 ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\address[0][9]_i_14_n_0 ),
        .O(\address[0][9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAAAAA)) 
    \address[1][2]_i_1 
       (.I0(\address[1][2]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007878FF00)) 
    \address[1][2]_i_2 
       (.I0(\read_address_reg_n_0_[1] ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[2] ),
        .I3(\address[1][2]_i_3_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFEAEAAAAAAAA)) 
    \address[1][2]_i_3 
       (.I0(\address[1][2]_i_4_n_0 ),
        .I1(\read_address_queue_reg[0]__0 [1]),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_address_queue_reg[1]__0 [1]),
        .I4(p_0_in[2]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\address[1][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02F20202)) 
    \address[1][2]_i_4 
       (.I0(\read_address_queue_reg[0]__0 [2]),
        .I1(\read_size_queue_reg_n_0_[0][1] ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_size_queue_reg_n_0_[1][1] ),
        .I4(\read_address_queue_reg[1]__0 [2]),
        .O(\address[1][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFEAAAAAAAAAAA)) 
    \address[1][3]_i_1 
       (.I0(\address[1][3]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[2] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[3] ),
        .I5(\write_address[9]_i_5_n_0 ),
        .O(\address[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F800000)) 
    \address[1][3]_i_2 
       (.I0(\read_address_reg_n_0_[2] ),
        .I1(\read_address_reg_n_0_[1] ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_address_reg_n_0_[3] ),
        .I4(\rdata[31]_i_3_n_0 ),
        .I5(\address[1][3]_i_3_n_0 ),
        .O(\address[1][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222200022222222)) 
    \address[1][3]_i_3 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[1][3]_i_4_n_0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\address[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \address[1][3]_i_4 
       (.I0(p_0_in[3]),
        .I1(\read_size_queue_reg_n_0_[1][0] ),
        .I2(\read_address_queue_reg[1]__0 [3]),
        .I3(\address[0][6]_i_7_n_0 ),
        .I4(\address[2][3]_i_7_n_0 ),
        .I5(\address[0][5]_i_7_n_0 ),
        .O(\address[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFBAAAAA)) 
    \address[1][4]_i_1 
       (.I0(\address[1][4]_i_2_n_0 ),
        .I1(\address[1][5]_i_3_n_0 ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[4] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B4B4FF00)) 
    \address[1][4]_i_2 
       (.I0(\address[0][4]_i_9_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[4] ),
        .I3(\address[1][4]_i_3_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[1][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[1][4]_i_3 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[1][4]_i_4_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[1][4]_i_5_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[1][4]_i_6_n_0 ),
        .O(\address[1][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[1][4]_i_4 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [4]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [4]),
        .O(\address[1][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DE2E2E2E2E2E2E2)) 
    \address[1][4]_i_5 
       (.I0(\read_address_queue_reg[0]__0 [4]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[1]__0 [4]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\address[1][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[1][4]_i_6 
       (.I0(\read_address_queue_reg[1]__0 [4]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [4]),
        .O(\address[1][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFBAAAAAAAAAAA)) 
    \address[1][5]_i_1 
       (.I0(\address[1][5]_i_2_n_0 ),
        .I1(\address[1][5]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[4] ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[5] ),
        .I5(\write_address[9]_i_5_n_0 ),
        .O(\address[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007878FF00)) 
    \address[1][5]_i_2 
       (.I0(\address[1][5]_i_4_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[5] ),
        .I3(\address[1][5]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[1][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \address[1][5]_i_3 
       (.I0(\write_address_reg_n_0_[2] ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[3] ),
        .O(\address[1][5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \address[1][5]_i_4 
       (.I0(\read_address_reg_n_0_[4] ),
        .I1(\read_address_reg_n_0_[3] ),
        .I2(\read_address_reg_n_0_[1] ),
        .I3(\read_address_reg_n_0_[2] ),
        .O(\address[1][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[1][5]_i_5 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[1][5]_i_6_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[1][5]_i_7_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[1][5]_i_8_n_0 ),
        .O(\address[1][5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[1][5]_i_6 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [5]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [5]),
        .O(\address[1][5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \address[1][5]_i_7 
       (.I0(p_0_in[5]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[4]),
        .O(\address[1][5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[1][5]_i_8 
       (.I0(\read_address_queue_reg[1]__0 [5]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [5]),
        .O(\address[1][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAAAAA)) 
    \address[1][6]_i_1 
       (.I0(\address[1][6]_i_2_n_0 ),
        .I1(\address[1][6]_i_3_n_0 ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[6] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007878FF00)) 
    \address[1][6]_i_2 
       (.I0(\address[1][6]_i_4_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[6] ),
        .I3(\address[1][6]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[1][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \address[1][6]_i_3 
       (.I0(\write_address_reg_n_0_[2] ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[3] ),
        .I3(\write_address_reg_n_0_[4] ),
        .I4(\write_address_reg_n_0_[5] ),
        .O(\address[1][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \address[1][6]_i_4 
       (.I0(\read_address_reg_n_0_[2] ),
        .I1(\read_address_reg_n_0_[1] ),
        .I2(\read_address_reg_n_0_[3] ),
        .I3(\read_address_reg_n_0_[4] ),
        .I4(\read_address_reg_n_0_[5] ),
        .O(\address[1][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[1][6]_i_5 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[1][6]_i_6_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[1][6]_i_7_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[1][6]_i_8_n_0 ),
        .O(\address[1][6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[1][6]_i_6 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [6]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [6]),
        .O(\address[1][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \address[1][6]_i_7 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(\address[1][6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[1][6]_i_8 
       (.I0(\read_address_queue_reg[1]__0 [6]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [6]),
        .O(\address[1][6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[1][7]_i_1 
       (.I0(\address[1][7]_i_2_n_0 ),
        .I1(\address[1][7]_i_3_n_0 ),
        .I2(\address[1][7]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[1][7]_i_2 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[1][7]_i_5_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[1][7]_i_6_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[1][7]_i_7_n_0 ),
        .O(\address[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \address[1][7]_i_3 
       (.I0(\read_address_reg_n_0_[6] ),
        .I1(\address[0][4]_i_9_n_0 ),
        .I2(\read_address_reg_n_0_[4] ),
        .I3(\read_address_reg_n_0_[5] ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\read_address_reg_n_0_[7] ),
        .O(\address[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \address[1][7]_i_4 
       (.I0(\write_address_reg_n_0_[6] ),
        .I1(\address[1][5]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[4] ),
        .I3(\write_address_reg_n_0_[5] ),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\write_address_reg_n_0_[7] ),
        .O(\address[1][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[1][7]_i_5 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [7]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [7]),
        .O(\address[1][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \address[1][7]_i_6 
       (.I0(\read_address_queue_reg[0]__0 [7]),
        .I1(\read_address_queue_reg[1]__0 [7]),
        .I2(\address[1][9]_i_12_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [6]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [6]),
        .O(\address[1][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[1][7]_i_7 
       (.I0(\read_address_queue_reg[1]__0 [7]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [7]),
        .O(\address[1][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[1][8]_i_1 
       (.I0(\address[1][8]_i_2_n_0 ),
        .I1(\address[1][8]_i_3_n_0 ),
        .I2(\address[1][8]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[1][8]_i_2 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[1][8]_i_5_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[1][8]_i_6_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[1][8]_i_7_n_0 ),
        .O(\address[1][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F77FF80808800)) 
    \address[1][8]_i_3 
       (.I0(\read_address_reg_n_0_[7] ),
        .I1(\address[1][9]_i_10_n_0 ),
        .I2(\read_size_queue_reg_n_0_[1][1] ),
        .I3(\read_size_queue_reg_n_0_[0][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_reg_n_0_[8] ),
        .O(\address[1][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F777FFF80888000)) 
    \address[1][8]_i_4 
       (.I0(\write_address_reg_n_0_[7] ),
        .I1(\address[1][9]_i_11_n_0 ),
        .I2(\write_size_queue_reg_n_0_[1][1] ),
        .I3(write_address_read_pointer_reg_n_0),
        .I4(\write_size_queue_reg_n_0_[0][1] ),
        .I5(\write_address_reg_n_0_[8] ),
        .O(\address[1][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[1][8]_i_5 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [8]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [8]),
        .O(\address[1][8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \address[1][8]_i_6 
       (.I0(\read_address_queue_reg[0]__0 [8]),
        .I1(\read_address_queue_reg[1]__0 [8]),
        .I2(\address[1][8]_i_8_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [7]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [7]),
        .O(\address[1][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[1][8]_i_7 
       (.I0(\read_address_queue_reg[1]__0 [8]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [8]),
        .O(\address[1][8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \address[1][8]_i_8 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(\address[1][8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888A888)) 
    \address[1][9]_i_1 
       (.I0(reset_IBUF),
        .I1(\address[1][9]_i_3_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\write_address[9]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\address[1][9]_i_4_n_0 ),
        .O(\address[1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \address[1][9]_i_10 
       (.I0(\read_address_reg_n_0_[5] ),
        .I1(\read_address_reg_n_0_[4] ),
        .I2(\read_address_reg_n_0_[3] ),
        .I3(\read_address_reg_n_0_[1] ),
        .I4(\read_address_reg_n_0_[2] ),
        .I5(\read_address_reg_n_0_[6] ),
        .O(\address[1][9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \address[1][9]_i_11 
       (.I0(\write_address_reg_n_0_[5] ),
        .I1(\write_address_reg_n_0_[4] ),
        .I2(\write_address_reg_n_0_[3] ),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(\write_address_reg_n_0_[2] ),
        .I5(\write_address_reg_n_0_[6] ),
        .O(\address[1][9]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \address[1][9]_i_12 
       (.I0(p_0_in[5]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[4]),
        .O(\address[1][9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA808)) 
    \address[1][9]_i_2 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[1][9]_i_5_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[1][9]_i_6_n_0 ),
        .I4(\address[1][9]_i_7_n_0 ),
        .I5(\address[1][9]_i_8_n_0 ),
        .O(\address[1][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A00000C)) 
    \address[1][9]_i_3 
       (.I0(\read[1]_i_5_n_0 ),
        .I1(\read[1]_i_4_n_0 ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\address[1][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE4E5FFFF)) 
    \address[1][9]_i_4 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(wvalid_IBUF),
        .O(\address[1][9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F807F8F7F807080)) 
    \address[1][9]_i_5 
       (.I0(\address[1][9]_i_9_n_0 ),
        .I1(p_0_in[8]),
        .I2(\read_size_queue_reg_n_0_[0][1] ),
        .I3(p_0_in[9]),
        .I4(\read_size_queue_reg_n_0_[0][0] ),
        .I5(\read_address_queue_reg[0]__0 [9]),
        .O(\address[1][9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7F807F8F7F807080)) 
    \address[1][9]_i_6 
       (.I0(\address[1][9]_i_9_n_0 ),
        .I1(p_0_in[8]),
        .I2(\read_size_queue_reg_n_0_[1][1] ),
        .I3(p_0_in[9]),
        .I4(\read_size_queue_reg_n_0_[1][0] ),
        .I5(\read_address_queue_reg[1]__0 [9]),
        .O(\address[1][9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \address[1][9]_i_7 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\read_address_reg_n_0_[9] ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_address_reg_n_0_[8] ),
        .I4(\read_address_reg_n_0_[7] ),
        .I5(\address[1][9]_i_10_n_0 ),
        .O(\address[1][9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \address[1][9]_i_8 
       (.I0(\write_address[9]_i_5_n_0 ),
        .I1(\write_address_reg_n_0_[9] ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[7] ),
        .I4(\address[1][9]_i_11_n_0 ),
        .I5(\write_address_reg_n_0_[8] ),
        .O(\address[1][9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \address[1][9]_i_9 
       (.I0(\read_address_queue_reg[0]__0 [7]),
        .I1(\read_address_queue_reg[1]__0 [7]),
        .I2(\address[1][9]_i_12_n_0 ),
        .I3(\read_address_queue_reg[1]__0 [6]),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_queue_reg[0]__0 [6]),
        .O(\address[1][9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFEAAAAAAAAAAA)) 
    \address[2][2]_i_1 
       (.I0(\address[2][2]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[2] ),
        .I5(\write_address[9]_i_5_n_0 ),
        .O(\address[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007878FF00)) 
    \address[2][2]_i_2 
       (.I0(\address[2][3]_i_4_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[2] ),
        .I3(\address[2][2]_i_3_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA9590000)) 
    \address[2][2]_i_3 
       (.I0(\read[3]_i_17_n_0 ),
        .I1(\read_address_queue_reg[0]__0 [2]),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_address_queue_reg[1]__0 [2]),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\address[1][2]_i_4_n_0 ),
        .O(\address[2][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEEEEEEEAAAAAAAA)) 
    \address[2][3]_i_1 
       (.I0(\address[2][3]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[3] ),
        .I2(\write_address_reg_n_0_[2] ),
        .I3(\address[2][3]_i_3_n_0 ),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\write_address[9]_i_5_n_0 ),
        .O(\address[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F800000)) 
    \address[2][3]_i_2 
       (.I0(\read_address_reg_n_0_[2] ),
        .I1(\address[2][3]_i_4_n_0 ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_address_reg_n_0_[3] ),
        .I4(\rdata[31]_i_3_n_0 ),
        .I5(\address[2][3]_i_5_n_0 ),
        .O(\address[2][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \address[2][3]_i_3 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .O(\address[2][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \address[2][3]_i_4 
       (.I0(\read_address_reg_n_0_[1] ),
        .I1(\read_address_reg_n_0_[0] ),
        .O(\address[2][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8A8080808A80)) 
    \address[2][3]_i_5 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[2][3]_i_6_n_0 ),
        .I2(\address[0][6]_i_7_n_0 ),
        .I3(\address[0][3]_i_6_n_0 ),
        .I4(\address[0][5]_i_7_n_0 ),
        .I5(\address[2][3]_i_7_n_0 ),
        .O(\address[2][3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[2][3]_i_6 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [3]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [3]),
        .O(\address[2][3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[2][3]_i_7 
       (.I0(\read_address_queue_reg[1]__0 [3]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [3]),
        .O(\address[2][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFAEAAAAAAAAAA)) 
    \address[2][4]_i_1 
       (.I0(\address[2][4]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\address[1][5]_i_3_n_0 ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[4] ),
        .I5(\write_address[9]_i_5_n_0 ),
        .O(\address[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDF200000)) 
    \address[2][4]_i_2 
       (.I0(\read_address_reg_n_0_[0] ),
        .I1(\address[0][4]_i_9_n_0 ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_address_reg_n_0_[4] ),
        .I4(\rdata[31]_i_3_n_0 ),
        .I5(\address[2][4]_i_3_n_0 ),
        .O(\address[2][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA88AA0A8888000A)) 
    \address[2][4]_i_3 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[1][4]_i_6_n_0 ),
        .I2(\address[0][4]_i_6_n_0 ),
        .I3(\address[0][6]_i_7_n_0 ),
        .I4(\address[0][5]_i_7_n_0 ),
        .I5(\address[1][4]_i_4_n_0 ),
        .O(\address[2][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEAAAAA)) 
    \address[2][5]_i_1 
       (.I0(\address[2][5]_i_2_n_0 ),
        .I1(\address[2][5]_i_3_n_0 ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[5] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \address[2][5]_i_2 
       (.I0(\address[0][5]_i_10_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[5] ),
        .I3(\address[2][5]_i_4_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[2][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \address[2][5]_i_3 
       (.I0(\write_address_reg_n_0_[5] ),
        .I1(\write_address_reg_n_0_[4] ),
        .I2(\write_address_reg_n_0_[3] ),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(\write_address_reg_n_0_[2] ),
        .I5(\write_address_reg_n_0_[0] ),
        .O(\address[2][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h038BFFBB0088FCB8)) 
    \address[2][5]_i_4 
       (.I0(\address[1][5]_i_6_n_0 ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][1] ),
        .I3(\read_size_queue_reg_n_0_[1][1] ),
        .I4(\address[0][5]_i_6_n_0 ),
        .I5(\address[1][5]_i_8_n_0 ),
        .O(\address[2][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFBAAAAA)) 
    \address[2][6]_i_1 
       (.I0(\address[2][6]_i_2_n_0 ),
        .I1(\address[2][6]_i_3_n_0 ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[6] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B4B4FF00)) 
    \address[2][6]_i_2 
       (.I0(\address[0][6]_i_10_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_reg_n_0_[6] ),
        .I3(\address[2][6]_i_4_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\address[2][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \address[2][6]_i_3 
       (.I0(\write_address_reg_n_0_[4] ),
        .I1(\write_address_reg_n_0_[3] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[2] ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(\write_address_reg_n_0_[5] ),
        .O(\address[2][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555C555CFF5C005C)) 
    \address[2][6]_i_4 
       (.I0(\address[0][6]_i_6_n_0 ),
        .I1(\address[1][6]_i_8_n_0 ),
        .I2(\read_size_queue_reg_n_0_[0][1] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\address[1][6]_i_6_n_0 ),
        .I5(\read_size_queue_reg_n_0_[1][1] ),
        .O(\address[2][6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[2][7]_i_1 
       (.I0(\address[2][7]_i_2_n_0 ),
        .I1(\address[2][7]_i_3_n_0 ),
        .I2(\address[2][7]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[2][7]_i_2 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[1][7]_i_5_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[0][7]_i_7_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[1][7]_i_7_n_0 ),
        .O(\address[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDDFF20202200)) 
    \address[2][7]_i_3 
       (.I0(\read_address_reg_n_0_[6] ),
        .I1(\address[0][6]_i_10_n_0 ),
        .I2(\read_size_queue_reg_n_0_[1][1] ),
        .I3(\read_size_queue_reg_n_0_[0][1] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_address_reg_n_0_[7] ),
        .O(\address[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFFF20222000)) 
    \address[2][7]_i_4 
       (.I0(\write_address_reg_n_0_[6] ),
        .I1(\address[2][6]_i_3_n_0 ),
        .I2(\write_size_queue_reg_n_0_[1][1] ),
        .I3(write_address_read_pointer_reg_n_0),
        .I4(\write_size_queue_reg_n_0_[0][1] ),
        .I5(\write_address_reg_n_0_[7] ),
        .O(\address[2][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAEA)) 
    \address[2][8]_i_1 
       (.I0(\address[2][8]_i_2_n_0 ),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(\read_address_reg_n_0_[8] ),
        .I3(\rdata[31]_i_4_n_0 ),
        .I4(\address[2][8]_i_3_n_0 ),
        .I5(\address[2][8]_i_4_n_0 ),
        .O(\address[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA88AA0A8888000A)) 
    \address[2][8]_i_2 
       (.I0(\address[0][9]_i_5_n_0 ),
        .I1(\address[1][8]_i_7_n_0 ),
        .I2(\address[0][8]_i_7_n_0 ),
        .I3(\address[0][6]_i_7_n_0 ),
        .I4(\address[0][5]_i_7_n_0 ),
        .I5(\address[1][8]_i_5_n_0 ),
        .O(\address[2][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \address[2][8]_i_3 
       (.I0(\read_address_reg_n_0_[7] ),
        .I1(\read_address_reg_n_0_[6] ),
        .I2(\read_address_reg_n_0_[4] ),
        .I3(\address[0][4]_i_9_n_0 ),
        .I4(\read_address_reg_n_0_[0] ),
        .I5(\read_address_reg_n_0_[5] ),
        .O(\address[2][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \address[2][8]_i_4 
       (.I0(\write_address[9]_i_5_n_0 ),
        .I1(\write_address_reg_n_0_[8] ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\write_address_reg_n_0_[7] ),
        .I4(\write_address_reg_n_0_[6] ),
        .I5(\address[2][6]_i_3_n_0 ),
        .O(\address[2][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888A888)) 
    \address[2][9]_i_1 
       (.I0(reset_IBUF),
        .I1(\address[2][9]_i_3_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\write_address[9]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\address[2][9]_i_4_n_0 ),
        .O(\address[2][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[2][9]_i_2 
       (.I0(\address[2][9]_i_5_n_0 ),
        .I1(\address[2][9]_i_6_n_0 ),
        .I2(\address[2][9]_i_7_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\address[2][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A00000C)) 
    \address[2][9]_i_3 
       (.I0(\read[2]_i_7_n_0 ),
        .I1(\read[2]_i_6_n_0 ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\address[2][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFD77DF57)) 
    \address[2][9]_i_4 
       (.I0(wvalid_IBUF),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_4_n_0 ),
        .I4(\write_address_reg_n_0_[0] ),
        .O(\address[2][9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \address[2][9]_i_5 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\address[2][9]_i_8_n_0 ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\address[0][9]_i_11_n_0 ),
        .I4(\read_size_queue_reg_n_0_[0][1] ),
        .I5(\address[2][9]_i_9_n_0 ),
        .O(\address[2][9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \address[2][9]_i_6 
       (.I0(\read_address_reg_n_0_[7] ),
        .I1(\read_address_reg_n_0_[6] ),
        .I2(\address[0][6]_i_10_n_0 ),
        .I3(\read_address_reg_n_0_[8] ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\read_address_reg_n_0_[9] ),
        .O(\address[2][9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \address[2][9]_i_7 
       (.I0(\write_address_reg_n_0_[8] ),
        .I1(\write_address_reg_n_0_[7] ),
        .I2(\write_address_reg_n_0_[6] ),
        .I3(\address[2][6]_i_3_n_0 ),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\write_address_reg_n_0_[9] ),
        .O(\address[2][9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \address[2][9]_i_8 
       (.I0(read_address_read_pointer_reg_n_0),
        .I1(\read_address_queue_reg[0]__0 [9]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(\read_address_queue_reg[1]__0 [9]),
        .O(\address[2][9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \address[2][9]_i_9 
       (.I0(\read_address_queue_reg[1]__0 [9]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .I3(\read_address_queue_reg[0]__0 [9]),
        .O(\address[2][9]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][2]_i_1 
       (.I0(p_0_in[2]),
        .I1(\read_address_reg_n_0_[2] ),
        .I2(\write_address_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][2]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [2]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][3]_i_1 
       (.I0(p_0_in[3]),
        .I1(\read_address_reg_n_0_[3] ),
        .I2(\write_address_reg_n_0_[3] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][3]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [3]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][4]_i_1 
       (.I0(p_0_in[4]),
        .I1(\read_address_reg_n_0_[4] ),
        .I2(\write_address_reg_n_0_[4] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][4]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [4]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][5]_i_1 
       (.I0(p_0_in[5]),
        .I1(\read_address_reg_n_0_[5] ),
        .I2(\write_address_reg_n_0_[5] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][5]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [5]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][6]_i_1 
       (.I0(p_0_in[6]),
        .I1(\read_address_reg_n_0_[6] ),
        .I2(\write_address_reg_n_0_[6] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][6]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [6]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][7]_i_1 
       (.I0(p_0_in[7]),
        .I1(\read_address_reg_n_0_[7] ),
        .I2(\write_address_reg_n_0_[7] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][7]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [7]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][8]_i_1 
       (.I0(p_0_in[8]),
        .I1(\read_address_reg_n_0_[8] ),
        .I2(\write_address_reg_n_0_[8] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][8]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [8]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h888888888888A888)) 
    \address[3][9]_i_1 
       (.I0(reset_IBUF),
        .I1(\address[3][9]_i_3_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\write_address[9]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\address[3][9]_i_4_n_0 ),
        .O(\address[3][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \address[3][9]_i_2 
       (.I0(p_0_in[9]),
        .I1(\read_address_reg_n_0_[9] ),
        .I2(\write_address_reg_n_0_[9] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(address[9]));
  LUT5 #(
    .INIT(32'h0A00000C)) 
    \address[3][9]_i_3 
       (.I0(\read[3]_i_9_n_0 ),
        .I1(\address[3][9]_i_6_n_0 ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\address[3][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB1B5FFFF)) 
    \address[3][9]_i_4 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(wvalid_IBUF),
        .O(\address[3][9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3][9]_i_5 
       (.I0(\read_address_queue_reg[1]__0 [9]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [9]),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'h50504404)) 
    \address[3][9]_i_6 
       (.I0(\read_address[9]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(\read[3]_i_11_n_0 ),
        .I3(p_0_in[0]),
        .I4(\rdata[31]_i_4_n_0 ),
        .O(\address[3][9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][2]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][3]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][4]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][5]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][6]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][7]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][8]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[0][9]_i_1_n_0 ),
        .D(\address[0][9]_i_2_n_0 ),
        .Q(\address_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][2]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][3]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][4]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][5]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][6]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][7]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][8]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[1][9]_i_1_n_0 ),
        .D(\address[1][9]_i_2_n_0 ),
        .Q(\address_reg_n_0_[1][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][2]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][3]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][4]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][5]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][6]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][7]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][8]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[2][9]_i_1_n_0 ),
        .D(\address[2][9]_i_2_n_0 ),
        .Q(\address_reg_n_0_[2][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[2]),
        .Q(\address_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[3]),
        .Q(\address_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[4]),
        .Q(\address_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[5]),
        .Q(\address_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[6]),
        .Q(\address_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[7]),
        .Q(\address_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[8]),
        .Q(\address_reg_n_0_[3][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[3][9]_i_1_n_0 ),
        .D(address[9]),
        .Q(\address_reg_n_0_[3][9] ),
        .R(1'b0));
  IBUF \araddr_IBUF[0]_inst 
       (.I(araddr[0]),
        .O(araddr_IBUF[0]));
  IBUF \araddr_IBUF[1]_inst 
       (.I(araddr[1]),
        .O(araddr_IBUF[1]));
  IBUF \araddr_IBUF[2]_inst 
       (.I(araddr[2]),
        .O(araddr_IBUF[2]));
  IBUF \araddr_IBUF[3]_inst 
       (.I(araddr[3]),
        .O(araddr_IBUF[3]));
  IBUF \araddr_IBUF[4]_inst 
       (.I(araddr[4]),
        .O(araddr_IBUF[4]));
  IBUF \araddr_IBUF[5]_inst 
       (.I(araddr[5]),
        .O(araddr_IBUF[5]));
  IBUF \araddr_IBUF[6]_inst 
       (.I(araddr[6]),
        .O(araddr_IBUF[6]));
  IBUF \araddr_IBUF[7]_inst 
       (.I(araddr[7]),
        .O(araddr_IBUF[7]));
  IBUF \araddr_IBUF[8]_inst 
       (.I(araddr[8]),
        .O(araddr_IBUF[8]));
  IBUF \araddr_IBUF[9]_inst 
       (.I(araddr[9]),
        .O(araddr_IBUF[9]));
  IBUF \arid_IBUF[0]_inst 
       (.I(arid[0]),
        .O(arid_IBUF[0]));
  IBUF \arid_IBUF[1]_inst 
       (.I(arid[1]),
        .O(arid_IBUF[1]));
  IBUF \arid_IBUF[2]_inst 
       (.I(arid[2]),
        .O(arid_IBUF[2]));
  IBUF \arid_IBUF[3]_inst 
       (.I(arid[3]),
        .O(arid_IBUF[3]));
  IBUF \arlen_IBUF[0]_inst 
       (.I(arlen[0]),
        .O(arlen_IBUF[0]));
  IBUF \arlen_IBUF[1]_inst 
       (.I(arlen[1]),
        .O(arlen_IBUF[1]));
  IBUF \arlen_IBUF[2]_inst 
       (.I(arlen[2]),
        .O(arlen_IBUF[2]));
  IBUF \arlen_IBUF[3]_inst 
       (.I(arlen[3]),
        .O(arlen_IBUF[3]));
  OBUF arready_OBUF_inst
       (.I(arready_OBUF),
        .O(arready));
  LUT3 #(
    .INIT(8'h6F)) 
    arready_OBUF_inst_i_1
       (.I0(read_address_write_pointer_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(flip_reg_n_0),
        .O(arready_OBUF));
  IBUF \arsize_IBUF[0]_inst 
       (.I(arsize[0]),
        .O(arsize_IBUF[0]));
  IBUF \arsize_IBUF[1]_inst 
       (.I(arsize[1]),
        .O(arsize_IBUF[1]));
  IBUF arvalid_IBUF_inst
       (.I(arvalid),
        .O(arvalid_IBUF));
  IBUF \awaddr_IBUF[0]_inst 
       (.I(awaddr[0]),
        .O(awaddr_IBUF[0]));
  IBUF \awaddr_IBUF[1]_inst 
       (.I(awaddr[1]),
        .O(awaddr_IBUF[1]));
  IBUF \awaddr_IBUF[2]_inst 
       (.I(awaddr[2]),
        .O(awaddr_IBUF[2]));
  IBUF \awaddr_IBUF[3]_inst 
       (.I(awaddr[3]),
        .O(awaddr_IBUF[3]));
  IBUF \awaddr_IBUF[4]_inst 
       (.I(awaddr[4]),
        .O(awaddr_IBUF[4]));
  IBUF \awaddr_IBUF[5]_inst 
       (.I(awaddr[5]),
        .O(awaddr_IBUF[5]));
  IBUF \awaddr_IBUF[6]_inst 
       (.I(awaddr[6]),
        .O(awaddr_IBUF[6]));
  IBUF \awaddr_IBUF[7]_inst 
       (.I(awaddr[7]),
        .O(awaddr_IBUF[7]));
  IBUF \awaddr_IBUF[8]_inst 
       (.I(awaddr[8]),
        .O(awaddr_IBUF[8]));
  IBUF \awaddr_IBUF[9]_inst 
       (.I(awaddr[9]),
        .O(awaddr_IBUF[9]));
  IBUF \awid_IBUF[0]_inst 
       (.I(awid[0]),
        .O(awid_IBUF[0]));
  IBUF \awid_IBUF[1]_inst 
       (.I(awid[1]),
        .O(awid_IBUF[1]));
  IBUF \awid_IBUF[2]_inst 
       (.I(awid[2]),
        .O(awid_IBUF[2]));
  IBUF \awid_IBUF[3]_inst 
       (.I(awid[3]),
        .O(awid_IBUF[3]));
  IBUF \awlen_IBUF[0]_inst 
       (.I(awlen[0]),
        .O(awlen_IBUF[0]));
  IBUF \awlen_IBUF[1]_inst 
       (.I(awlen[1]),
        .O(awlen_IBUF[1]));
  IBUF \awlen_IBUF[2]_inst 
       (.I(awlen[2]),
        .O(awlen_IBUF[2]));
  IBUF \awlen_IBUF[3]_inst 
       (.I(awlen[3]),
        .O(awlen_IBUF[3]));
  OBUF awready_OBUF_inst
       (.I(awready_OBUF),
        .O(awready));
  LUT3 #(
    .INIT(8'h6F)) 
    awready_OBUF_inst_i_1
       (.I0(write_address_read_pointer_reg_n_0),
        .I1(write_address_write_pointer_reg_n_0),
        .I2(write_flip),
        .O(awready_OBUF));
  IBUF \awsize_IBUF[0]_inst 
       (.I(awsize[0]),
        .O(awsize_IBUF[0]));
  IBUF \awsize_IBUF[1]_inst 
       (.I(awsize[1]),
        .O(awsize_IBUF[1]));
  IBUF awvalid_IBUF_inst
       (.I(awvalid),
        .O(awvalid_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bid[0]_i_1 
       (.I0(\write_id_queue_reg_n_0_[1][0] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_id_queue_reg_n_0_[0][0] ),
        .O(\bid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bid[1]_i_1 
       (.I0(\write_id_queue_reg_n_0_[1][1] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_id_queue_reg_n_0_[0][1] ),
        .O(\bid[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bid[2]_i_1 
       (.I0(\write_id_queue_reg_n_0_[1][2] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_id_queue_reg_n_0_[0][2] ),
        .O(\bid[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000300)) 
    \bid[3]_i_1 
       (.I0(bready_IBUF),
        .I1(\write_address_reg[9]_i_4_n_0 ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\bid[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bid[3]_i_2 
       (.I0(\write_id_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_id_queue_reg_n_0_[0][3] ),
        .O(\bid[3]_i_2_n_0 ));
  OBUF \bid_OBUF[0]_inst 
       (.I(bid_OBUF[0]),
        .O(bid[0]));
  OBUF \bid_OBUF[1]_inst 
       (.I(bid_OBUF[1]),
        .O(bid[1]));
  OBUF \bid_OBUF[2]_inst 
       (.I(bid_OBUF[2]),
        .O(bid[2]));
  OBUF \bid_OBUF[3]_inst 
       (.I(bid_OBUF[3]),
        .O(bid[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bid_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\bid[0]_i_1_n_0 ),
        .Q(bid_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bid_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\bid[1]_i_1_n_0 ),
        .Q(bid_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bid_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\bid[2]_i_1_n_0 ),
        .Q(bid_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bid_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\bid[3]_i_2_n_0 ),
        .Q(bid_OBUF[3]));
  IBUF bready_IBUF_inst
       (.I(bready),
        .O(bready_IBUF));
  LUT6 #(
    .INIT(64'h337FFFFF337F0000)) 
    \bresp[1]_i_1 
       (.I0(bready_IBUF),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\bresp[1]_i_2_n_0 ),
        .I5(bresp_OBUF),
        .O(\bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA003000)) 
    \bresp[1]_i_2 
       (.I0(bready_IBUF),
        .I1(\write_address_reg[9]_i_4_n_0 ),
        .I2(reset_IBUF),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\bresp[1]_i_2_n_0 ));
  OBUF \bresp_OBUF[0]_inst 
       (.I(bresp_OBUF),
        .O(bresp[0]));
  OBUF \bresp_OBUF[1]_inst 
       (.I(bresp_OBUF),
        .O(bresp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bresp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\bresp[1]_i_1_n_0 ),
        .Q(bresp_OBUF));
  OBUF bvalid_OBUF_inst
       (.I(bvalid_OBUF),
        .O(bvalid));
  LUT6 #(
    .INIT(64'h337FFFFF337F0000)) 
    bvalid_i_1
       (.I0(bready_IBUF),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\bresp[1]_i_2_n_0 ),
        .I5(bvalid_OBUF),
        .O(bvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    bvalid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(bvalid_i_1_n_0),
        .Q(bvalid_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    \data_in[0][0]_i_1 
       (.I0(wdata_IBUF[0]),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][0]_i_2_n_0 ),
        .O(\data_in[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \data_in[0][0]_i_2 
       (.I0(wdata_IBUF[8]),
        .I1(wdata_IBUF[24]),
        .I2(wdata_IBUF[16]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(wdata_IBUF[0]),
        .O(\data_in[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDDDDDDDC8888888)) 
    \data_in[0][1]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[1]),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(\data_in[0][1]_i_2_n_0 ),
        .O(\data_in[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \data_in[0][1]_i_2 
       (.I0(wdata_IBUF[9]),
        .I1(wdata_IBUF[25]),
        .I2(wdata_IBUF[17]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(wdata_IBUF[1]),
        .O(\data_in[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDDCDDDDC88C8888)) 
    \data_in[0][2]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[2]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][2]_i_2_n_0 ),
        .O(\data_in[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    \data_in[0][2]_i_2 
       (.I0(wdata_IBUF[26]),
        .I1(wdata_IBUF[2]),
        .I2(wdata_IBUF[10]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(wdata_IBUF[18]),
        .O(\data_in[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00EB28FF00AAAA)) 
    \data_in[0][3]_i_1 
       (.I0(\data_in[0][3]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(wdata_IBUF[3]),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\data_in[0][7]_i_4_n_0 ),
        .O(\data_in[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCAAAAF0F0FF00)) 
    \data_in[0][3]_i_2 
       (.I0(wdata_IBUF[11]),
        .I1(wdata_IBUF[27]),
        .I2(wdata_IBUF[19]),
        .I3(wdata_IBUF[3]),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(\write_address_reg_n_0_[0] ),
        .O(\data_in[0][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDDCDDDDC88C8888)) 
    \data_in[0][4]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[4]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][4]_i_2_n_0 ),
        .O(\data_in[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in[0][4]_i_2 
       (.I0(wdata_IBUF[28]),
        .I1(wdata_IBUF[12]),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[20]),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(wdata_IBUF[4]),
        .O(\data_in[0][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDDCDDDDC88C8888)) 
    \data_in[0][5]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[5]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][5]_i_2_n_0 ),
        .O(\data_in[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2FFE2CCE233E200)) 
    \data_in[0][5]_i_2 
       (.I0(wdata_IBUF[13]),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(wdata_IBUF[29]),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(wdata_IBUF[5]),
        .I5(wdata_IBUF[21]),
        .O(\data_in[0][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDDCDDDDC88C8888)) 
    \data_in[0][6]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[6]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][6]_i_2_n_0 ),
        .O(\data_in[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \data_in[0][6]_i_2 
       (.I0(wdata_IBUF[30]),
        .I1(wdata_IBUF[22]),
        .I2(wdata_IBUF[14]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(wdata_IBUF[6]),
        .O(\data_in[0][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \data_in[0][7]_i_1 
       (.I0(\write_address_reg[9]_i_4_n_0 ),
        .I1(reset_IBUF),
        .I2(\address[0][9]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\data_in[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDDCDDDDC88C8888)) 
    \data_in[0][7]_i_2 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[7]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][7]_i_5_n_0 ),
        .O(\data_in[0][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[0][7]_i_3 
       (.I0(\write_size_queue_reg_n_0_[1][1] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_size_queue_reg_n_0_[0][1] ),
        .O(\data_in[0][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[0][7]_i_4 
       (.I0(\write_size_queue_reg_n_0_[1][0] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_size_queue_reg_n_0_[0][0] ),
        .O(\data_in[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \data_in[0][7]_i_5 
       (.I0(wdata_IBUF[23]),
        .I1(wdata_IBUF[7]),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[31]),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(wdata_IBUF[15]),
        .O(\data_in[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDDD88DDC8DD88)) 
    \data_in[1][0]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[8]),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\data_in[1][0]_i_2_n_0 ),
        .I4(\data_in[1][1]_i_3_n_0 ),
        .I5(wdata_IBUF[0]),
        .O(\data_in[1][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \data_in[1][0]_i_2 
       (.I0(wdata_IBUF[16]),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(wdata_IBUF[24]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(wdata_IBUF[8]),
        .O(\data_in[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDDD88DDC8DD88)) 
    \data_in[1][1]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[9]),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\data_in[1][1]_i_2_n_0 ),
        .I4(\data_in[1][1]_i_3_n_0 ),
        .I5(wdata_IBUF[1]),
        .O(\data_in[1][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \data_in[1][1]_i_2 
       (.I0(wdata_IBUF[17]),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(wdata_IBUF[25]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(wdata_IBUF[9]),
        .O(\data_in[1][1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_in[1][1]_i_3 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .O(\data_in[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBABFBB808A8088)) 
    \data_in[1][2]_i_1 
       (.I0(wdata_IBUF[10]),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][2]_i_2_n_0 ),
        .O(\data_in[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \data_in[1][3]_i_1 
       (.I0(\data_in[1][3]_i_2_n_0 ),
        .I1(\data_in[1][3]_i_3_n_0 ),
        .I2(wdata_IBUF[11]),
        .I3(\data_in[1][3]_i_4_n_0 ),
        .I4(\data_in[0][3]_i_2_n_0 ),
        .I5(\data_in[1][3]_i_5_n_0 ),
        .O(\data_in[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFE20000)) 
    \data_in[1][3]_i_2 
       (.I0(\write_size_queue_reg_n_0_[0][0] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_size_queue_reg_n_0_[1][0] ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(\write_address_reg_n_0_[1] ),
        .O(\data_in[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \data_in[1][3]_i_3 
       (.I0(wdata_IBUF[19]),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(wdata_IBUF[27]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(wdata_IBUF[11]),
        .O(\data_in[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FFFFFF1D)) 
    \data_in[1][3]_i_4 
       (.I0(\write_size_queue_reg_n_0_[0][0] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_size_queue_reg_n_0_[1][0] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(\data_in[0][7]_i_3_n_0 ),
        .O(\data_in[1][3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \data_in[1][3]_i_5 
       (.I0(\write_size_queue_reg_n_0_[0][0] ),
        .I1(\write_size_queue_reg_n_0_[1][0] ),
        .I2(\write_size_queue_reg_n_0_[0][1] ),
        .I3(write_address_read_pointer_reg_n_0),
        .I4(\write_size_queue_reg_n_0_[1][1] ),
        .O(\data_in[1][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00ABA8FF00AAAA)) 
    \data_in[1][4]_i_1 
       (.I0(\data_in[0][4]_i_2_n_0 ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(wdata_IBUF[12]),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\data_in[0][7]_i_4_n_0 ),
        .O(\data_in[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB1B0FFFF00004E4F)) 
    \data_in[1][5]_i_1 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(\data_in[0][7]_i_3_n_0 ),
        .I3(\data_in[0][7]_i_4_n_0 ),
        .I4(\data_in[1][5]_i_2_n_0 ),
        .I5(wdata_IBUF[13]),
        .O(\data_in[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_in[1][5]_i_2 
       (.I0(wdata_IBUF[21]),
        .I1(wdata_IBUF[5]),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[29]),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(wdata_IBUF[13]),
        .O(\data_in[1][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFABBFAFBFAAAFAEA)) 
    \data_in[1][6]_i_1 
       (.I0(\data_in[1][6]_i_2_n_0 ),
        .I1(\data_in[0][7]_i_4_n_0 ),
        .I2(wdata_IBUF[14]),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\write_address_reg_n_0_[1] ),
        .I5(\data_in[0][6]_i_2_n_0 ),
        .O(\data_in[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0C000000000)) 
    \data_in[1][6]_i_2 
       (.I0(wdata_IBUF[30]),
        .I1(wdata_IBUF[22]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_3_n_0 ),
        .I5(\data_in[0][7]_i_4_n_0 ),
        .O(\data_in[1][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \data_in[1][7]_i_1 
       (.I0(\write_address_reg[9]_i_4_n_0 ),
        .I1(reset_IBUF),
        .I2(\address[1][9]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\data_in[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDCDDDD888C8888)) 
    \data_in[1][7]_i_2 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[15]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][7]_i_5_n_0 ),
        .O(\data_in[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF41FF55BE00AA00)) 
    \data_in[2][0]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[16]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][0]_i_2_n_0 ),
        .O(\data_in[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF41FF55BE00AA00)) 
    \data_in[2][1]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[17]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][1]_i_2_n_0 ),
        .O(\data_in[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF44FF55EF44AA00)) 
    \data_in[2][2]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\data_in[2][2]_i_2_n_0 ),
        .I2(\data_in[2][2]_i_3_n_0 ),
        .I3(wdata_IBUF[18]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][2]_i_2_n_0 ),
        .O(\data_in[2][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8380)) 
    \data_in[2][2]_i_2 
       (.I0(wdata_IBUF[26]),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[2]),
        .O(\data_in[2][2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_in[2][2]_i_3 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .O(\data_in[2][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF41FF55BE00AA00)) 
    \data_in[2][3]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[19]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][3]_i_2_n_0 ),
        .O(\data_in[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF41FF55BE00AA00)) 
    \data_in[2][4]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[20]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][4]_i_2_n_0 ),
        .O(\data_in[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF41FF55BE00AA00)) 
    \data_in[2][5]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[21]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][5]_i_2_n_0 ),
        .O(\data_in[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \data_in[2][6]_i_1 
       (.I0(wdata_IBUF[22]),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_4_n_0 ),
        .I4(\write_address_reg_n_0_[0] ),
        .I5(\data_in[0][6]_i_2_n_0 ),
        .O(\data_in[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \data_in[2][7]_i_1 
       (.I0(\write_address_reg[9]_i_4_n_0 ),
        .I1(reset_IBUF),
        .I2(\address[2][9]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\data_in[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF41FF55BE00AA00)) 
    \data_in[2][7]_i_2 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(\write_address_reg_n_0_[1] ),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(wdata_IBUF[23]),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][7]_i_5_n_0 ),
        .O(\data_in[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDDDDD88C88888)) 
    \data_in[3][0]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[24]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][0]_i_2_n_0 ),
        .O(\data_in[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDDDDD88C88888)) 
    \data_in[3][1]_i_1 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[25]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\write_address_reg_n_0_[0] ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][1]_i_2_n_0 ),
        .O(\data_in[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECC0200FFFF3333)) 
    \data_in[3][2]_i_1 
       (.I0(wdata_IBUF[18]),
        .I1(\data_in[0][7]_i_3_n_0 ),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(\data_in[3][7]_i_4_n_0 ),
        .I4(wdata_IBUF[26]),
        .I5(\data_in[3][2]_i_2_n_0 ),
        .O(\data_in[3][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F53FF53)) 
    \data_in[3][2]_i_2 
       (.I0(wdata_IBUF[10]),
        .I1(wdata_IBUF[2]),
        .I2(\write_address_reg_n_0_[0] ),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(wdata_IBUF[26]),
        .O(\data_in[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FDF020F0FFF000)) 
    \data_in[3][3]_i_1 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(wdata_IBUF[27]),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\data_in[0][3]_i_2_n_0 ),
        .I5(\data_in[0][7]_i_4_n_0 ),
        .O(\data_in[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FDF0FFF020F000)) 
    \data_in[3][4]_i_1 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(wdata_IBUF[28]),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[0][4]_i_2_n_0 ),
        .O(\data_in[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4C404C00ECEFECFF)) 
    \data_in[3][5]_i_1 
       (.I0(\write_address_reg_n_0_[0] ),
        .I1(wdata_IBUF[29]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\data_in[0][7]_i_4_n_0 ),
        .I5(\data_in[1][5]_i_2_n_0 ),
        .O(\data_in[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hECEF4C40ECFF4C00)) 
    \data_in[3][6]_i_1 
       (.I0(\write_address_reg_n_0_[0] ),
        .I1(wdata_IBUF[30]),
        .I2(\write_address_reg_n_0_[1] ),
        .I3(\data_in[0][7]_i_3_n_0 ),
        .I4(\data_in[0][6]_i_2_n_0 ),
        .I5(\data_in[0][7]_i_4_n_0 ),
        .O(\data_in[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \data_in[3][7]_i_1 
       (.I0(\write_address_reg[9]_i_4_n_0 ),
        .I1(reset_IBUF),
        .I2(\address[3][9]_i_4_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\data_in[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCDC8DDDD8888)) 
    \data_in[3][7]_i_2 
       (.I0(\data_in[0][7]_i_3_n_0 ),
        .I1(wdata_IBUF[31]),
        .I2(\data_in[0][7]_i_4_n_0 ),
        .I3(wdata_IBUF[23]),
        .I4(\data_in[3][7]_i_3_n_0 ),
        .I5(\data_in[3][7]_i_4_n_0 ),
        .O(\data_in[3][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0EEC022)) 
    \data_in[3][7]_i_3 
       (.I0(wdata_IBUF[7]),
        .I1(\write_address_reg_n_0_[0] ),
        .I2(wdata_IBUF[31]),
        .I3(\write_address_reg_n_0_[1] ),
        .I4(wdata_IBUF[15]),
        .O(\data_in[3][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_in[3][7]_i_4 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_address_reg_n_0_[0] ),
        .O(\data_in[3][7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][0]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][1]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][2]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][3]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][4]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][5]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][6]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[0][7]_i_1_n_0 ),
        .D(\data_in[0][7]_i_2_n_0 ),
        .Q(\data_in_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][0]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][1]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][2]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][3]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][4]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][5]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][6]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[1][7]_i_1_n_0 ),
        .D(\data_in[1][7]_i_2_n_0 ),
        .Q(\data_in_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][0]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][1]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][2]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][3]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][4]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][5]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][6]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[2][7]_i_1_n_0 ),
        .D(\data_in[2][7]_i_2_n_0 ),
        .Q(\data_in_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][0]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][1]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][2]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][3]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][4]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][5]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][6]_i_1_n_0 ),
        .Q(\data_in_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in[3][7]_i_1_n_0 ),
        .D(\data_in[3][7]_i_2_n_0 ),
        .Q(\data_in_reg_n_0_[3][7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \enable_RW[0]_i_1 
       (.I0(\read[0]_i_2_n_0 ),
        .I1(\enable_RW[2]_i_2_n_0 ),
        .I2(\enable_RW[0]_i_2_n_0 ),
        .I3(\read[3]_i_3_n_0 ),
        .I4(\enable_RW[0]_i_3_n_0 ),
        .I5(\enable_RW_reg_n_0_[0] ),
        .O(\enable_RW[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444400400040)) 
    \enable_RW[0]_i_2 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\write_address[9]_i_5_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\address[0][9]_i_4_n_0 ),
        .I4(wvalid_IBUF),
        .I5(\read[3]_i_8_n_0 ),
        .O(\enable_RW[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF55454)) 
    \enable_RW[0]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\read[0]_i_4_n_0 ),
        .I2(\read[3]_i_10_n_0 ),
        .I3(\read[0]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\enable_RW[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEE0)) 
    \enable_RW[1]_i_1 
       (.I0(\enable_RW[1]_i_2_n_0 ),
        .I1(\enable_RW[1]_i_3_n_0 ),
        .I2(\read[3]_i_3_n_0 ),
        .I3(\enable_RW[1]_i_4_n_0 ),
        .I4(\enable_RW[1]_i_5_n_0 ),
        .I5(\enable_RW_reg_n_0_[1] ),
        .O(\enable_RW[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020991120209900)) 
    \enable_RW[1]_i_2 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\read[1]_i_5_n_0 ),
        .I3(\read_address[9]_i_3_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\read[1]_i_4_n_0 ),
        .O(\enable_RW[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0444444400400040)) 
    \enable_RW[1]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\write_address[9]_i_5_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\address[1][9]_i_4_n_0 ),
        .I4(wvalid_IBUF),
        .I5(\read[3]_i_8_n_0 ),
        .O(\enable_RW[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \enable_RW[1]_i_4 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I2(\read[1]_i_5_n_0 ),
        .I3(\read[3]_i_10_n_0 ),
        .O(\enable_RW[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAA00000000)) 
    \enable_RW[1]_i_5 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\enable_RW[1]_i_6_n_0 ),
        .I2(\enable_RW[1]_i_7_n_0 ),
        .I3(\read[3]_i_14_n_0 ),
        .I4(\read[3]_i_10_n_0 ),
        .I5(\address[0][9]_i_5_n_0 ),
        .O(\enable_RW[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \enable_RW[1]_i_6 
       (.I0(\read_address_queue_reg[0]__0 [0]),
        .I1(\read_address_queue_reg[1]__0 [0]),
        .I2(\read_address_queue_reg[0]__0 [1]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_address_queue_reg[1]__0 [1]),
        .O(\enable_RW[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00011101)) 
    \enable_RW[1]_i_7 
       (.I0(\read[3]_i_11_n_0 ),
        .I1(p_0_in[1]),
        .I2(\read_address_queue_reg[0]__0 [0]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_address_queue_reg[1]__0 [0]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\enable_RW[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \enable_RW[2]_i_1 
       (.I0(\read[2]_i_3_n_0 ),
        .I1(\enable_RW[2]_i_2_n_0 ),
        .I2(\enable_RW[2]_i_3_n_0 ),
        .I3(\read[3]_i_3_n_0 ),
        .I4(\enable_RW[2]_i_4_n_0 ),
        .I5(\enable_RW_reg_n_0_[2] ),
        .O(\enable_RW[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000008)) 
    \enable_RW[2]_i_2 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(read_address_write_pointer_reg_n_0),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(flip_reg_n_0),
        .O(\enable_RW[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0444444400400040)) 
    \enable_RW[2]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\write_address[9]_i_5_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\address[2][9]_i_4_n_0 ),
        .I4(wvalid_IBUF),
        .I5(\read[3]_i_8_n_0 ),
        .O(\enable_RW[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF55454)) 
    \enable_RW[2]_i_4 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\read[2]_i_6_n_0 ),
        .I2(\read[3]_i_10_n_0 ),
        .I3(\read[2]_i_7_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\enable_RW[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
    \enable_RW[3]_i_1 
       (.I0(enable_RW),
        .I1(\read[3]_i_3_n_0 ),
        .I2(\enable_RW[3]_i_3_n_0 ),
        .I3(\read[3]_i_5_n_0 ),
        .I4(\enable_RW[3]_i_4_n_0 ),
        .I5(\enable_RW_reg_n_0_[3] ),
        .O(\enable_RW[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \enable_RW[3]_i_2 
       (.I0(\read[3]_i_7_n_0 ),
        .I1(\read[3]_i_8_n_0 ),
        .I2(\read[3]_i_9_n_0 ),
        .I3(\read[3]_i_4_n_0 ),
        .I4(\enable_RW[2]_i_2_n_0 ),
        .I5(\enable_RW[3]_i_5_n_0 ),
        .O(enable_RW));
  LUT2 #(
    .INIT(4'h2)) 
    \enable_RW[3]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\enable_RW[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBAA00000000)) 
    \enable_RW[3]_i_4 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\read[3]_i_17_n_0 ),
        .I2(\enable_RW[3]_i_6_n_0 ),
        .I3(\read[3]_i_14_n_0 ),
        .I4(\read[3]_i_10_n_0 ),
        .I5(\address[0][9]_i_5_n_0 ),
        .O(\enable_RW[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0444444400400040)) 
    \enable_RW[3]_i_5 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\write_address[9]_i_5_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\address[3][9]_i_4_n_0 ),
        .I4(wvalid_IBUF),
        .I5(\read[3]_i_8_n_0 ),
        .O(\enable_RW[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDDDCDCCCCCCCC)) 
    \enable_RW[3]_i_6 
       (.I0(\read[3]_i_11_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\read_address_queue_reg[0]__0 [0]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_address_queue_reg[1]__0 [0]),
        .I5(p_0_in[1]),
        .O(\enable_RW[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \enable_RW_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\enable_RW[0]_i_1_n_0 ),
        .Q(\enable_RW_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enable_RW_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\enable_RW[1]_i_1_n_0 ),
        .Q(\enable_RW_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enable_RW_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\enable_RW[2]_i_1_n_0 ),
        .Q(\enable_RW_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enable_RW_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\enable_RW[3]_i_1_n_0 ),
        .Q(\enable_RW_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    flip_i_1
       (.I0(flip_i_2_n_0),
        .I1(flip_reg_n_0),
        .O(flip_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    flip_i_2
       (.I0(flip_i_3_n_0),
        .I1(flip_i_4_n_0),
        .I2(flip_i_5_n_0),
        .I3(flip_i_6_n_0),
        .I4(\read[3]_i_4_n_0 ),
        .I5(flip_i_7_n_0),
        .O(flip_i_2_n_0));
  LUT4 #(
    .INIT(16'h8FFF)) 
    flip_i_3
       (.I0(flip_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(read_address_write_pointer_reg_n_0),
        .I3(arvalid_IBUF),
        .O(flip_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    flip_i_4
       (.I0(no_of_transfers[1]),
        .I1(\read_len_queue_reg_n_0_[0][1] ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_len_queue_reg_n_0_[1][1] ),
        .O(flip_i_4_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    flip_i_5
       (.I0(no_of_transfers[2]),
        .I1(\read_len_queue_reg_n_0_[0][2] ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .O(flip_i_5_n_0));
  LUT5 #(
    .INIT(32'h40440000)) 
    flip_i_6
       (.I0(\read_len_queue_reg_n_0_[1][3] ),
        .I1(rready_IBUF),
        .I2(no_of_transfers[0]),
        .I3(\read_len_queue_reg_n_0_[1][0] ),
        .I4(read_address_read_pointer_reg_n_0),
        .O(flip_i_6_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    flip_i_7
       (.I0(no_of_transfers[0]),
        .I1(\read_len_queue_reg_n_0_[0][0] ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_len_queue_reg_n_0_[1][0] ),
        .O(flip_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    flip_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(flip_i_1_n_0),
        .Q(flip_reg_n_0));
  (* ADDRESS_WIDTH = "10" *) 
  (* DATA_WIDTH = "8" *) 
  (* RAM_DEPTH = "256" *) 
  RAM_Module__1 \genblk1[0].R 
       (.address({\address_reg_n_0_[0][9] ,\address_reg_n_0_[0][8] ,\address_reg_n_0_[0][7] ,\address_reg_n_0_[0][6] ,\address_reg_n_0_[0][5] ,\address_reg_n_0_[0][4] ,\address_reg_n_0_[0][3] ,\address_reg_n_0_[0][2] ,\NLW_genblk1[0].R_address_UNCONNECTED [1:0]}),
        .clk(clk_IBUF_BUFG),
        .data_in({\data_in_reg_n_0_[0][7] ,\data_in_reg_n_0_[0][6] ,\data_in_reg_n_0_[0][5] ,\data_in_reg_n_0_[0][4] ,\data_in_reg_n_0_[0][3] ,\data_in_reg_n_0_[0][2] ,\data_in_reg_n_0_[0][1] ,\data_in_reg_n_0_[0][0] }),
        .data_out(\data_out[0] ),
        .enable_RW(\enable_RW_reg_n_0_[0] ),
        .read(\read_reg_n_0_[0] ));
  (* ADDRESS_WIDTH = "10" *) 
  (* DATA_WIDTH = "8" *) 
  (* RAM_DEPTH = "256" *) 
  RAM_Module__2 \genblk1[1].R 
       (.address({\address_reg_n_0_[1][9] ,\address_reg_n_0_[1][8] ,\address_reg_n_0_[1][7] ,\address_reg_n_0_[1][6] ,\address_reg_n_0_[1][5] ,\address_reg_n_0_[1][4] ,\address_reg_n_0_[1][3] ,\address_reg_n_0_[1][2] ,\NLW_genblk1[1].R_address_UNCONNECTED [1:0]}),
        .clk(clk_IBUF_BUFG),
        .data_in({\data_in_reg_n_0_[1][7] ,\data_in_reg_n_0_[1][6] ,\data_in_reg_n_0_[1][5] ,\data_in_reg_n_0_[1][4] ,\data_in_reg_n_0_[1][3] ,\data_in_reg_n_0_[1][2] ,\data_in_reg_n_0_[1][1] ,\data_in_reg_n_0_[1][0] }),
        .data_out(\data_out[1] ),
        .enable_RW(\enable_RW_reg_n_0_[1] ),
        .read(\read_reg_n_0_[1] ));
  (* ADDRESS_WIDTH = "10" *) 
  (* DATA_WIDTH = "8" *) 
  (* RAM_DEPTH = "256" *) 
  RAM_Module__3 \genblk1[2].R 
       (.address({\address_reg_n_0_[2][9] ,\address_reg_n_0_[2][8] ,\address_reg_n_0_[2][7] ,\address_reg_n_0_[2][6] ,\address_reg_n_0_[2][5] ,\address_reg_n_0_[2][4] ,\address_reg_n_0_[2][3] ,\address_reg_n_0_[2][2] ,\NLW_genblk1[2].R_address_UNCONNECTED [1:0]}),
        .clk(clk_IBUF_BUFG),
        .data_in({\data_in_reg_n_0_[2][7] ,\data_in_reg_n_0_[2][6] ,\data_in_reg_n_0_[2][5] ,\data_in_reg_n_0_[2][4] ,\data_in_reg_n_0_[2][3] ,\data_in_reg_n_0_[2][2] ,\data_in_reg_n_0_[2][1] ,\data_in_reg_n_0_[2][0] }),
        .data_out(\data_out[2] ),
        .enable_RW(\enable_RW_reg_n_0_[2] ),
        .read(\read_reg_n_0_[2] ));
  (* ADDRESS_WIDTH = "10" *) 
  (* DATA_WIDTH = "8" *) 
  (* RAM_DEPTH = "256" *) 
  RAM_Module \genblk1[3].R 
       (.address({\address_reg_n_0_[3][9] ,\address_reg_n_0_[3][8] ,\address_reg_n_0_[3][7] ,\address_reg_n_0_[3][6] ,\address_reg_n_0_[3][5] ,\address_reg_n_0_[3][4] ,\address_reg_n_0_[3][3] ,\address_reg_n_0_[3][2] ,\NLW_genblk1[3].R_address_UNCONNECTED [1:0]}),
        .clk(clk_IBUF_BUFG),
        .data_in({\data_in_reg_n_0_[3][7] ,\data_in_reg_n_0_[3][6] ,\data_in_reg_n_0_[3][5] ,\data_in_reg_n_0_[3][4] ,\data_in_reg_n_0_[3][3] ,\data_in_reg_n_0_[3][2] ,\data_in_reg_n_0_[3][1] ,\data_in_reg_n_0_[3][0] }),
        .data_out(\data_out[3] ),
        .enable_RW(\enable_RW_reg_n_0_[3] ),
        .read(\read_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h00FF1500)) 
    \no_of_transfers[0]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(\no_of_transfers[2]_i_3_n_0 ),
        .I4(no_of_transfers[0]),
        .O(\no_of_transfers[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0111FFFF04440000)) 
    \no_of_transfers[1]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(no_of_transfers[0]),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\no_of_transfers[2]_i_3_n_0 ),
        .I5(no_of_transfers[1]),
        .O(\no_of_transfers[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1500FFFF40000000)) 
    \no_of_transfers[2]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(no_of_transfers[1]),
        .I2(no_of_transfers[0]),
        .I3(\no_of_transfers[2]_i_2_n_0 ),
        .I4(\no_of_transfers[2]_i_3_n_0 ),
        .I5(no_of_transfers[2]),
        .O(\no_of_transfers[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \no_of_transfers[2]_i_2 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\no_of_transfers[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000000088FF00)) 
    \no_of_transfers[2]_i_3 
       (.I0(\write_address_reg[9]_i_4_n_0 ),
        .I1(wvalid_IBUF),
        .I2(bready_IBUF),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\no_of_transfers[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \no_of_transfers_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\no_of_transfers[0]_i_1_n_0 ),
        .Q(no_of_transfers[0]));
  FDCE #(
    .INIT(1'b0)) 
    \no_of_transfers_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\no_of_transfers[1]_i_1_n_0 ),
        .Q(no_of_transfers[1]));
  FDCE #(
    .INIT(1'b0)) 
    \no_of_transfers_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\no_of_transfers[2]_i_1_n_0 ),
        .Q(no_of_transfers[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_1 
       (.I0(\data_out[3] [0]),
        .I1(\data_out[1] [0]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [0]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \rdata[10]_i_1 
       (.I0(\data_out[3] [2]),
        .I1(\data_out[1] [2]),
        .I2(\data_out[2] [2]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [2]),
        .O(\rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \rdata[11]_i_1 
       (.I0(\data_out[3] [3]),
        .I1(\data_out[1] [3]),
        .I2(\data_out[2] [3]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [3]),
        .O(\rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \rdata[12]_i_1 
       (.I0(\data_out[3] [4]),
        .I1(\data_out[1] [4]),
        .I2(\data_out[0] [4]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [4]),
        .O(\rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \rdata[13]_i_1 
       (.I0(\data_out[3] [5]),
        .I1(\data_out[1] [5]),
        .I2(\data_out[2] [5]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [5]),
        .O(\rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \rdata[14]_i_1 
       (.I0(\data_out[3] [6]),
        .I1(\data_out[1] [6]),
        .I2(\data_out[2] [6]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [6]),
        .O(\rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440040404404040)) 
    \rdata[15]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][0] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_size_queue_reg_n_0_[0][0] ),
        .O(\rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \rdata[15]_i_2 
       (.I0(\data_out[3] [7]),
        .I1(\data_out[1] [7]),
        .I2(\data_out[2] [7]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [7]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[16]_i_1 
       (.I0(\data_out[1] [0]),
        .I1(\data_out[3] [0]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [0]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [0]),
        .O(\rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[17]_i_1 
       (.I0(\data_out[1] [1]),
        .I1(\data_out[3] [1]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [1]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [1]),
        .O(\rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[18]_i_1 
       (.I0(\data_out[1] [2]),
        .I1(\data_out[3] [2]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [2]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [2]),
        .O(\rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[19]_i_1 
       (.I0(\data_out[1] [3]),
        .I1(\data_out[3] [3]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [3]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [3]),
        .O(\rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[1]_i_1 
       (.I0(\data_out[3] [1]),
        .I1(\data_out[1] [1]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [1]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [1]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[20]_i_1 
       (.I0(\data_out[1] [4]),
        .I1(\data_out[3] [4]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [4]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [4]),
        .O(\rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[21]_i_1 
       (.I0(\data_out[1] [5]),
        .I1(\data_out[3] [5]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [5]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [5]),
        .O(\rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[22]_i_1 
       (.I0(\data_out[1] [6]),
        .I1(\data_out[3] [6]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [6]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [6]),
        .O(\rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[23]_i_1 
       (.I0(\data_out[1] [7]),
        .I1(\data_out[3] [7]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[0] [7]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [7]),
        .O(\rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[24]_i_1 
       (.I0(\data_out[2] [0]),
        .I1(\data_out[0] [0]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [0]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [0]),
        .O(\rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[25]_i_1 
       (.I0(\data_out[2] [1]),
        .I1(\data_out[0] [1]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [1]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [1]),
        .O(\rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[26]_i_1 
       (.I0(\data_out[2] [2]),
        .I1(\data_out[0] [2]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [2]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [2]),
        .O(\rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[27]_i_1 
       (.I0(\data_out[2] [3]),
        .I1(\data_out[0] [3]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [3]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [3]),
        .O(\rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[28]_i_1 
       (.I0(\data_out[2] [4]),
        .I1(\data_out[0] [4]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [4]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [4]),
        .O(\rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[29]_i_1 
       (.I0(\data_out[2] [5]),
        .I1(\data_out[0] [5]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [5]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [5]),
        .O(\rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[2]_i_1 
       (.I0(\data_out[3] [2]),
        .I1(\data_out[1] [2]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [2]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [2]),
        .O(\rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[30]_i_1 
       (.I0(\data_out[2] [6]),
        .I1(\data_out[0] [6]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [6]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [6]),
        .O(\rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000404040)) 
    \rdata[31]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][0] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_size_queue_reg_n_0_[0][0] ),
        .O(\rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[31]_i_2 
       (.I0(\data_out[2] [7]),
        .I1(\data_out[0] [7]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[1] [7]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[3] [7]),
        .O(\rdata[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[31]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(\rdata[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata[31]_i_4 
       (.I0(\read_size_queue_reg_n_0_[1][1] ),
        .I1(\read_size_queue_reg_n_0_[0][1] ),
        .I2(read_address_read_pointer_reg_n_0),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3]_i_1 
       (.I0(\data_out[3] [3]),
        .I1(\data_out[1] [3]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [3]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [3]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[4]_i_1 
       (.I0(\data_out[3] [4]),
        .I1(\data_out[1] [4]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [4]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [4]),
        .O(\rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[5]_i_1 
       (.I0(\data_out[3] [5]),
        .I1(\data_out[1] [5]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [5]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [5]),
        .O(\rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[6]_i_1 
       (.I0(\data_out[3] [6]),
        .I1(\data_out[1] [6]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [6]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [6]),
        .O(\rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400044444444444)) 
    \rdata[7]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][0] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[7]_i_2 
       (.I0(\data_out[3] [7]),
        .I1(\data_out[1] [7]),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\data_out[2] [7]),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [7]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \rdata[8]_i_1 
       (.I0(\data_out[3] [0]),
        .I1(\data_out[1] [0]),
        .I2(\data_out[2] [0]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[0] [0]),
        .O(\rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \rdata[9]_i_1 
       (.I0(\data_out[3] [1]),
        .I1(\data_out[1] [1]),
        .I2(\data_out[0] [1]),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\data_out[2] [1]),
        .O(\rdata[9]_i_1_n_0 ));
  OBUF \rdata_OBUF[0]_inst 
       (.I(rdata_OBUF[0]),
        .O(rdata[0]));
  OBUF \rdata_OBUF[10]_inst 
       (.I(rdata_OBUF[10]),
        .O(rdata[10]));
  OBUF \rdata_OBUF[11]_inst 
       (.I(rdata_OBUF[11]),
        .O(rdata[11]));
  OBUF \rdata_OBUF[12]_inst 
       (.I(rdata_OBUF[12]),
        .O(rdata[12]));
  OBUF \rdata_OBUF[13]_inst 
       (.I(rdata_OBUF[13]),
        .O(rdata[13]));
  OBUF \rdata_OBUF[14]_inst 
       (.I(rdata_OBUF[14]),
        .O(rdata[14]));
  OBUF \rdata_OBUF[15]_inst 
       (.I(rdata_OBUF[15]),
        .O(rdata[15]));
  OBUF \rdata_OBUF[16]_inst 
       (.I(rdata_OBUF[16]),
        .O(rdata[16]));
  OBUF \rdata_OBUF[17]_inst 
       (.I(rdata_OBUF[17]),
        .O(rdata[17]));
  OBUF \rdata_OBUF[18]_inst 
       (.I(rdata_OBUF[18]),
        .O(rdata[18]));
  OBUF \rdata_OBUF[19]_inst 
       (.I(rdata_OBUF[19]),
        .O(rdata[19]));
  OBUF \rdata_OBUF[1]_inst 
       (.I(rdata_OBUF[1]),
        .O(rdata[1]));
  OBUF \rdata_OBUF[20]_inst 
       (.I(rdata_OBUF[20]),
        .O(rdata[20]));
  OBUF \rdata_OBUF[21]_inst 
       (.I(rdata_OBUF[21]),
        .O(rdata[21]));
  OBUF \rdata_OBUF[22]_inst 
       (.I(rdata_OBUF[22]),
        .O(rdata[22]));
  OBUF \rdata_OBUF[23]_inst 
       (.I(rdata_OBUF[23]),
        .O(rdata[23]));
  OBUF \rdata_OBUF[24]_inst 
       (.I(rdata_OBUF[24]),
        .O(rdata[24]));
  OBUF \rdata_OBUF[25]_inst 
       (.I(rdata_OBUF[25]),
        .O(rdata[25]));
  OBUF \rdata_OBUF[26]_inst 
       (.I(rdata_OBUF[26]),
        .O(rdata[26]));
  OBUF \rdata_OBUF[27]_inst 
       (.I(rdata_OBUF[27]),
        .O(rdata[27]));
  OBUF \rdata_OBUF[28]_inst 
       (.I(rdata_OBUF[28]),
        .O(rdata[28]));
  OBUF \rdata_OBUF[29]_inst 
       (.I(rdata_OBUF[29]),
        .O(rdata[29]));
  OBUF \rdata_OBUF[2]_inst 
       (.I(rdata_OBUF[2]),
        .O(rdata[2]));
  OBUF \rdata_OBUF[30]_inst 
       (.I(rdata_OBUF[30]),
        .O(rdata[30]));
  OBUF \rdata_OBUF[31]_inst 
       (.I(rdata_OBUF[31]),
        .O(rdata[31]));
  OBUF \rdata_OBUF[3]_inst 
       (.I(rdata_OBUF[3]),
        .O(rdata[3]));
  OBUF \rdata_OBUF[4]_inst 
       (.I(rdata_OBUF[4]),
        .O(rdata[4]));
  OBUF \rdata_OBUF[5]_inst 
       (.I(rdata_OBUF[5]),
        .O(rdata[5]));
  OBUF \rdata_OBUF[6]_inst 
       (.I(rdata_OBUF[6]),
        .O(rdata[6]));
  OBUF \rdata_OBUF[7]_inst 
       (.I(rdata_OBUF[7]),
        .O(rdata[7]));
  OBUF \rdata_OBUF[8]_inst 
       (.I(rdata_OBUF[8]),
        .O(rdata[8]));
  OBUF \rdata_OBUF[9]_inst 
       (.I(rdata_OBUF[9]),
        .O(rdata[9]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(rdata_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(rdata_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(rdata_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(rdata_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(rdata_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(rdata_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[15]_i_2_n_0 ),
        .Q(rdata_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(rdata_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(rdata_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(rdata_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(rdata_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(rdata_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(rdata_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(rdata_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(rdata_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(rdata_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(rdata_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(rdata_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(rdata_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(rdata_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(rdata_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(rdata_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(rdata_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(rdata_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[31]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[31]_i_2_n_0 ),
        .Q(rdata_OBUF[31]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(rdata_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(rdata_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(rdata_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(rdata_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[7]_i_2_n_0 ),
        .Q(rdata_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(rdata_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rdata_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rdata[15]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(rdata_OBUF[9]));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \read[0]_i_1 
       (.I0(\read[2]_i_2_n_0 ),
        .I1(\read[0]_i_2_n_0 ),
        .I2(\read[2]_i_4_n_0 ),
        .I3(\read[3]_i_3_n_0 ),
        .I4(\read[0]_i_3_n_0 ),
        .I5(\read_reg_n_0_[0] ),
        .O(\read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FC0000000000EE)) 
    \read[0]_i_2 
       (.I0(\read[0]_i_4_n_0 ),
        .I1(\read[3]_i_8_n_0 ),
        .I2(\read[0]_i_5_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FC0000000000EE)) 
    \read[0]_i_3 
       (.I0(\read[0]_i_4_n_0 ),
        .I1(\read[3]_i_10_n_0 ),
        .I2(\read[0]_i_5_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44441005)) 
    \read[0]_i_4 
       (.I0(\read_address[9]_i_3_n_0 ),
        .I1(\read[3]_i_11_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\rdata[31]_i_4_n_0 ),
        .O(\read[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888000000088008)) 
    \read[0]_i_5 
       (.I0(rready_IBUF),
        .I1(read_address_read_pointer_i_2_n_0),
        .I2(\read_address_reg_n_0_[1] ),
        .I3(\read_address_reg_n_0_[0] ),
        .I4(\read[3]_i_11_n_0 ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\read[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \read[1]_i_1 
       (.I0(\read[2]_i_2_n_0 ),
        .I1(\read[1]_i_2_n_0 ),
        .I2(\read[2]_i_4_n_0 ),
        .I3(\read[3]_i_3_n_0 ),
        .I4(\read[1]_i_3_n_0 ),
        .I5(\read_reg_n_0_[1] ),
        .O(\read[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FC0000000000EE)) 
    \read[1]_i_2 
       (.I0(\read[1]_i_4_n_0 ),
        .I1(\read[3]_i_8_n_0 ),
        .I2(\read[1]_i_5_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF80B080B080)) 
    \read[1]_i_3 
       (.I0(\read[1]_i_6_n_0 ),
        .I1(\read[3]_i_14_n_0 ),
        .I2(\read[3]_i_13_n_0 ),
        .I3(\read[3]_i_10_n_0 ),
        .I4(\read[1]_i_5_n_0 ),
        .I5(\read[3]_i_4_n_0 ),
        .O(\read[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44054401)) 
    \read[1]_i_4 
       (.I0(\read_address[9]_i_3_n_0 ),
        .I1(\read[3]_i_11_n_0 ),
        .I2(p_0_in[1]),
        .I3(\rdata[31]_i_4_n_0 ),
        .I4(p_0_in[0]),
        .O(\read[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888000000800088)) 
    \read[1]_i_5 
       (.I0(rready_IBUF),
        .I1(read_address_read_pointer_i_2_n_0),
        .I2(\read_address_reg_n_0_[0] ),
        .I3(\read_address_reg_n_0_[1] ),
        .I4(\read[3]_i_11_n_0 ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\read[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA888)) 
    \read[1]_i_6 
       (.I0(reset_IBUF),
        .I1(\read[1]_i_7_n_0 ),
        .I2(\read[3]_i_4_n_0 ),
        .I3(\read[1]_i_8_n_0 ),
        .I4(\enable_RW[1]_i_6_n_0 ),
        .I5(\enable_RW[1]_i_7_n_0 ),
        .O(\read[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0101010100010100)) 
    \read[1]_i_7 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(read_address_write_pointer_reg_n_0),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(flip_reg_n_0),
        .O(\read[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA888A8A88888A888)) 
    \read[1]_i_8 
       (.I0(rready_IBUF),
        .I1(\read[1]_i_9_n_0 ),
        .I2(flip_i_5_n_0),
        .I3(read_address_read_pointer_i_4_n_0),
        .I4(no_of_transfers[1]),
        .I5(read_address_read_pointer_i_3_n_0),
        .O(\read[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF504444FF50)) 
    \read[1]_i_9 
       (.I0(no_of_transfers[2]),
        .I1(\read_len_queue_reg_n_0_[1][2] ),
        .I2(\read_len_queue_reg_n_0_[0][2] ),
        .I3(\read_len_queue_reg_n_0_[0][3] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[1][3] ),
        .O(\read[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \read[2]_i_1 
       (.I0(\read[2]_i_2_n_0 ),
        .I1(\read[2]_i_3_n_0 ),
        .I2(\read[2]_i_4_n_0 ),
        .I3(\read[3]_i_3_n_0 ),
        .I4(\read[2]_i_5_n_0 ),
        .I5(\read_reg_n_0_[2] ),
        .O(\read[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002A0000)) 
    \read[2]_i_2 
       (.I0(\read[3]_i_8_n_0 ),
        .I1(\write_address_reg[9]_i_4_n_0 ),
        .I2(wvalid_IBUF),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\read[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FC0000000000EE)) 
    \read[2]_i_3 
       (.I0(\read[2]_i_6_n_0 ),
        .I1(\read[3]_i_8_n_0 ),
        .I2(\read[2]_i_7_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004004)) 
    \read[2]_i_4 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I2(read_address_write_pointer_reg_n_0),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(flip_reg_n_0),
        .O(\read[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FC0000000000EE)) 
    \read[2]_i_5 
       (.I0(\read[2]_i_6_n_0 ),
        .I1(\read[3]_i_10_n_0 ),
        .I2(\read[2]_i_7_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55000414)) 
    \read[2]_i_6 
       (.I0(\read_address[9]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\read[3]_i_11_n_0 ),
        .I4(\rdata[31]_i_4_n_0 ),
        .O(\read[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000800880888000)) 
    \read[2]_i_7 
       (.I0(rready_IBUF),
        .I1(read_address_read_pointer_i_2_n_0),
        .I2(\read[3]_i_11_n_0 ),
        .I3(\rdata[31]_i_4_n_0 ),
        .I4(\read_address_reg_n_0_[1] ),
        .I5(\read_address_reg_n_0_[0] ),
        .O(\read[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
    \read[3]_i_1 
       (.I0(read),
        .I1(\read[3]_i_3_n_0 ),
        .I2(\read[3]_i_4_n_0 ),
        .I3(\read[3]_i_5_n_0 ),
        .I4(\read[3]_i_6_n_0 ),
        .I5(\read_reg_n_0_[3] ),
        .O(\read[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA08080808080808)) 
    \read[3]_i_10 
       (.I0(reset_IBUF),
        .I1(\read[3]_i_13_n_0 ),
        .I2(\read_address[9]_i_3_n_0 ),
        .I3(\read[3]_i_4_n_0 ),
        .I4(read_address_read_pointer_i_2_n_0),
        .I5(rready_IBUF),
        .O(\read[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \read[3]_i_11 
       (.I0(\read_size_queue_reg_n_0_[1][0] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[0][0] ),
        .O(\read[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0800088888888888)) 
    \read[3]_i_12 
       (.I0(read_address_read_pointer_i_2_n_0),
        .I1(rready_IBUF),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][0] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\read[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read[3]_i_13 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0D000DEEDDEEDDEE)) 
    \read[3]_i_14 
       (.I0(read_address_write_pointer_reg_n_0),
        .I1(flip_reg_n_0),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][0] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\read[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00053035)) 
    \read[3]_i_15 
       (.I0(\read_size_queue_reg_n_0_[0][0] ),
        .I1(\read_size_queue_reg_n_0_[1][0] ),
        .I2(read_address_read_pointer_reg_n_0),
        .I3(\read_size_queue_reg_n_0_[0][1] ),
        .I4(\read_size_queue_reg_n_0_[1][1] ),
        .O(\read[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF77CF47)) 
    \read[3]_i_16 
       (.I0(\read_address_queue_reg[1]__0 [1]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [1]),
        .I3(\read_address_queue_reg[1]__0 [0]),
        .I4(\read_address_queue_reg[0]__0 [0]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\read[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \read[3]_i_17 
       (.I0(\read_address_queue_reg[0]__0 [1]),
        .I1(\read_address_queue_reg[1]__0 [1]),
        .I2(\read_address_queue_reg[0]__0 [0]),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_address_queue_reg[1]__0 [0]),
        .O(\read[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEEEE)) 
    \read[3]_i_2 
       (.I0(\read[2]_i_2_n_0 ),
        .I1(\read[3]_i_7_n_0 ),
        .I2(\read[3]_i_8_n_0 ),
        .I3(\read[3]_i_9_n_0 ),
        .I4(\read[3]_i_4_n_0 ),
        .I5(\read[2]_i_4_n_0 ),
        .O(read));
  LUT6 #(
    .INIT(64'h00F000F000F8F000)) 
    \read[3]_i_3 
       (.I0(wvalid_IBUF),
        .I1(\write_address_reg[9]_i_4_n_0 ),
        .I2(\read[3]_i_10_n_0 ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \read[3]_i_4 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\read[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF8C0000)) 
    \read[3]_i_5 
       (.I0(\read_address_reg_n_0_[0] ),
        .I1(\read_address_reg_n_0_[1] ),
        .I2(\read[3]_i_11_n_0 ),
        .I3(\rdata[31]_i_4_n_0 ),
        .I4(\read[3]_i_12_n_0 ),
        .I5(\read[3]_i_10_n_0 ),
        .O(\read[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888888A8A8A8A8A8)) 
    \read[3]_i_6 
       (.I0(\read[3]_i_13_n_0 ),
        .I1(\read[3]_i_10_n_0 ),
        .I2(\read[3]_i_14_n_0 ),
        .I3(\read[3]_i_15_n_0 ),
        .I4(\read[3]_i_16_n_0 ),
        .I5(\read[3]_i_17_n_0 ),
        .O(\read[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888A88A)) 
    \read[3]_i_7 
       (.I0(\read[3]_i_13_n_0 ),
        .I1(\address[3][9]_i_6_n_0 ),
        .I2(read_address_write_pointer_reg_n_0),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(flip_reg_n_0),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\read[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \read[3]_i_8 
       (.I0(read_address_write_pointer_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(flip_reg_n_0),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\read[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8800808088000080)) 
    \read[3]_i_9 
       (.I0(rready_IBUF),
        .I1(read_address_read_pointer_i_2_n_0),
        .I2(\read_address_reg_n_0_[1] ),
        .I3(\read[3]_i_11_n_0 ),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(\read_address_reg_n_0_[0] ),
        .O(\read[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[0]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [0]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [0]),
        .I3(read_address0[0]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[0]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[1]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [1]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [1]),
        .I3(read_address0[1]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[1]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[2]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [2]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [2]),
        .I3(read_address0[2]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[2]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[3]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [3]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [3]),
        .I3(read_address0[3]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[3]_i_3 
       (.I0(\read_address_queue_reg[1]__0 [1]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[3]_i_4 
       (.I0(\read_address_queue_reg[1]__0 [0]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h3C553CAACCAACCAA)) 
    \read_address[3]_i_5 
       (.I0(\read_address_queue_reg[0]__0 [3]),
        .I1(\read_address_queue_reg[1]__0 [3]),
        .I2(\read_size_queue_reg_n_0_[1][0] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_size_queue_reg_n_0_[0][0] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\read_address[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCC3CAAAACC3C5A5A)) 
    \read_address[3]_i_6 
       (.I0(\read_address_queue_reg[0]__0 [2]),
        .I1(\read_address_queue_reg[1]__0 [2]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][0] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_size_queue_reg_n_0_[0][0] ),
        .O(\read_address[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC3CCA5A5C3CCAAAA)) 
    \read_address[3]_i_7 
       (.I0(\read_address_queue_reg[0]__0 [1]),
        .I1(\read_address_queue_reg[1]__0 [1]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][0] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_size_queue_reg_n_0_[0][0] ),
        .O(\read_address[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCC3AAAACCC3A5A5)) 
    \read_address[3]_i_8 
       (.I0(\read_address_queue_reg[0]__0 [0]),
        .I1(\read_address_queue_reg[1]__0 [0]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\read_size_queue_reg_n_0_[1][0] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_size_queue_reg_n_0_[0][0] ),
        .O(\read_address[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[4]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [4]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [4]),
        .I3(read_address0[4]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[4]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[5]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [5]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [5]),
        .I3(read_address0[5]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[5]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[6]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [6]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [6]),
        .I3(read_address0[6]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[6]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[7]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [7]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [7]),
        .I3(read_address0[7]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[7]_i_3 
       (.I0(\read_address_queue_reg[1]__0 [7]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [7]),
        .O(\read_address[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[7]_i_4 
       (.I0(\read_address_queue_reg[1]__0 [6]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [6]),
        .O(\read_address[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[7]_i_5 
       (.I0(\read_address_queue_reg[1]__0 [5]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [5]),
        .O(\read_address[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[7]_i_6 
       (.I0(\read_address_queue_reg[1]__0 [4]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [4]),
        .O(\read_address[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[8]_i_1 
       (.I0(\read_address_queue_reg[1]__0 [8]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [8]),
        .I3(read_address0[8]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[8]));
  LUT5 #(
    .INIT(32'h00200022)) 
    \read_address[9]_i_1 
       (.I0(reset_IBUF),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I4(\read_address[9]_i_3_n_0 ),
        .O(\read_address[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \read_address[9]_i_2 
       (.I0(\read_address_queue_reg[1]__0 [9]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [9]),
        .I3(read_address0[9]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(read_address[9]));
  LUT3 #(
    .INIT(8'h41)) 
    \read_address[9]_i_3 
       (.I0(flip_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(read_address_write_pointer_reg_n_0),
        .O(\read_address[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[9]_i_5 
       (.I0(\read_address_queue_reg[1]__0 [9]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [9]),
        .O(\read_address[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_address[9]_i_6 
       (.I0(\read_address_queue_reg[1]__0 [8]),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_address_queue_reg[0]__0 [8]),
        .O(\read_address[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[0]),
        .Q(\read_address_queue_reg[0]__0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[1]),
        .Q(\read_address_queue_reg[0]__0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[2]),
        .Q(\read_address_queue_reg[0]__0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[3]),
        .Q(\read_address_queue_reg[0]__0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[4]),
        .Q(\read_address_queue_reg[0]__0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[5]),
        .Q(\read_address_queue_reg[0]__0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[6]),
        .Q(\read_address_queue_reg[0]__0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[7]),
        .Q(\read_address_queue_reg[0]__0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[8]),
        .Q(\read_address_queue_reg[0]__0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(araddr_IBUF[9]),
        .Q(\read_address_queue_reg[0]__0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[0]),
        .Q(\read_address_queue_reg[1]__0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[1]),
        .Q(\read_address_queue_reg[1]__0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[2]),
        .Q(\read_address_queue_reg[1]__0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[3]),
        .Q(\read_address_queue_reg[1]__0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[4]),
        .Q(\read_address_queue_reg[1]__0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[5]),
        .Q(\read_address_queue_reg[1]__0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[6]),
        .Q(\read_address_queue_reg[1]__0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[7]),
        .Q(\read_address_queue_reg[1]__0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[8]),
        .Q(\read_address_queue_reg[1]__0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_queue_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(araddr_IBUF[9]),
        .Q(\read_address_queue_reg[1]__0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    read_address_read_pointer_i_1
       (.I0(rready_IBUF),
        .I1(read_address_read_pointer_i_2_n_0),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(read_address_read_pointer_reg_n_0),
        .O(read_address_read_pointer_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFB2FF00FFFFFFB2)) 
    read_address_read_pointer_i_2
       (.I0(read_address_read_pointer_i_3_n_0),
        .I1(no_of_transfers[1]),
        .I2(read_address_read_pointer_i_4_n_0),
        .I3(read_address_read_pointer_i_5_n_0),
        .I4(read_address_read_pointer_i_6_n_0),
        .I5(no_of_transfers[2]),
        .O(read_address_read_pointer_i_2_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    read_address_read_pointer_i_3
       (.I0(\read_len_queue_reg_n_0_[0][0] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_len_queue_reg_n_0_[1][0] ),
        .I3(no_of_transfers[0]),
        .O(read_address_read_pointer_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    read_address_read_pointer_i_4
       (.I0(\read_len_queue_reg_n_0_[1][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_len_queue_reg_n_0_[0][1] ),
        .O(read_address_read_pointer_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    read_address_read_pointer_i_5
       (.I0(\read_len_queue_reg_n_0_[1][3] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_len_queue_reg_n_0_[0][3] ),
        .O(read_address_read_pointer_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    read_address_read_pointer_i_6
       (.I0(\read_len_queue_reg_n_0_[1][2] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_len_queue_reg_n_0_[0][2] ),
        .O(read_address_read_pointer_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_address_read_pointer_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(read_address_read_pointer_i_1_n_0),
        .Q(read_address_read_pointer_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[0]),
        .Q(\read_address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[1]),
        .Q(\read_address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[2]),
        .Q(\read_address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[3]),
        .Q(\read_address_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \read_address_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\read_address_reg[3]_i_2_n_0 ,\NLW_read_address_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_0_in[3:0]),
        .O(read_address0[3:0]),
        .S({\read_address[3]_i_5_n_0 ,\read_address[3]_i_6_n_0 ,\read_address[3]_i_7_n_0 ,\read_address[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[4]),
        .Q(\read_address_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[5]),
        .Q(\read_address_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[6]),
        .Q(\read_address_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[7]),
        .Q(\read_address_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \read_address_reg[7]_i_2 
       (.CI(\read_address_reg[3]_i_2_n_0 ),
        .CO({\read_address_reg[7]_i_2_n_0 ,\NLW_read_address_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_address0[7:4]),
        .S({\read_address[7]_i_3_n_0 ,\read_address[7]_i_4_n_0 ,\read_address[7]_i_5_n_0 ,\read_address[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[8]),
        .Q(\read_address_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_address[9]_i_1_n_0 ),
        .D(read_address[9]),
        .Q(\read_address_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 \read_address_reg[9]_i_4 
       (.CI(\read_address_reg[7]_i_2_n_0 ),
        .CO(\NLW_read_address_reg[9]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_read_address_reg[9]_i_4_O_UNCONNECTED [3:2],read_address0[9:8]}),
        .S({1'b0,1'b0,\read_address[9]_i_5_n_0 ,\read_address[9]_i_6_n_0 }));
  LUT4 #(
    .INIT(16'h8FD0)) 
    read_address_write_pointer_i_1
       (.I0(flip_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(arvalid_IBUF),
        .I3(read_address_write_pointer_reg_n_0),
        .O(read_address_write_pointer_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_address_write_pointer_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(read_address_write_pointer_i_1_n_0),
        .Q(read_address_write_pointer_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arid_IBUF[0]),
        .Q(\read_id_queue_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arid_IBUF[1]),
        .Q(\read_id_queue_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arid_IBUF[2]),
        .Q(\read_id_queue_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arid_IBUF[3]),
        .Q(\read_id_queue_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arid_IBUF[0]),
        .Q(\read_id_queue_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arid_IBUF[1]),
        .Q(\read_id_queue_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arid_IBUF[2]),
        .Q(\read_id_queue_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_queue_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arid_IBUF[3]),
        .Q(\read_id_queue_reg_n_0_[1][3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000D000)) 
    \read_len_queue[0][3]_i_1 
       (.I0(flip_reg_n_0),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(arvalid_IBUF),
        .I3(reset_IBUF),
        .I4(read_address_write_pointer_reg_n_0),
        .O(\read_len_queue[0][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00808080)) 
    \read_len_queue[1][3]_i_1 
       (.I0(reset_IBUF),
        .I1(arvalid_IBUF),
        .I2(read_address_write_pointer_reg_n_0),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(flip_reg_n_0),
        .O(\read_len_queue[1][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arlen_IBUF[0]),
        .Q(\read_len_queue_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arlen_IBUF[1]),
        .Q(\read_len_queue_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arlen_IBUF[2]),
        .Q(\read_len_queue_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arlen_IBUF[3]),
        .Q(\read_len_queue_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arlen_IBUF[0]),
        .Q(\read_len_queue_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arlen_IBUF[1]),
        .Q(\read_len_queue_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arlen_IBUF[2]),
        .Q(\read_len_queue_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_len_queue_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arlen_IBUF[3]),
        .Q(\read_len_queue_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\read[0]_i_1_n_0 ),
        .Q(\read_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\read[1]_i_1_n_0 ),
        .Q(\read_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\read[2]_i_1_n_0 ),
        .Q(\read_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\read[3]_i_1_n_0 ),
        .Q(\read_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_size_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arsize_IBUF[0]),
        .Q(\read_size_queue_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_size_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[0][3]_i_1_n_0 ),
        .D(arsize_IBUF[1]),
        .Q(\read_size_queue_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_size_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arsize_IBUF[0]),
        .Q(\read_size_queue_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_size_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_len_queue[1][3]_i_1_n_0 ),
        .D(arsize_IBUF[1]),
        .Q(\read_size_queue_reg_n_0_[1][1] ),
        .R(1'b0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rid[0]_i_1 
       (.I0(\read_id_queue_reg_n_0_[1][0] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_id_queue_reg_n_0_[0][0] ),
        .O(\rid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rid[1]_i_1 
       (.I0(\read_id_queue_reg_n_0_[1][1] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_id_queue_reg_n_0_[0][1] ),
        .O(\rid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rid[2]_i_1 
       (.I0(\read_id_queue_reg_n_0_[1][2] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_id_queue_reg_n_0_[0][2] ),
        .O(\rid[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rid[3]_i_1 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(\rid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rid[3]_i_2 
       (.I0(\read_id_queue_reg_n_0_[1][3] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_id_queue_reg_n_0_[0][3] ),
        .O(\rid[3]_i_2_n_0 ));
  OBUF \rid_OBUF[0]_inst 
       (.I(rid_OBUF[0]),
        .O(rid[0]));
  OBUF \rid_OBUF[1]_inst 
       (.I(rid_OBUF[1]),
        .O(rid[1]));
  OBUF \rid_OBUF[2]_inst 
       (.I(rid_OBUF[2]),
        .O(rid[2]));
  OBUF \rid_OBUF[3]_inst 
       (.I(rid_OBUF[3]),
        .O(rid[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rid_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rid[0]_i_1_n_0 ),
        .Q(rid_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rid_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rid[1]_i_1_n_0 ),
        .Q(rid_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rid_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rid[2]_i_1_n_0 ),
        .Q(rid_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rid_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rid[3]_i_1_n_0 ),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(\rid[3]_i_2_n_0 ),
        .Q(rid_OBUF[3]));
  OBUF rlast_OBUF_inst
       (.I(rlast_OBUF),
        .O(rlast));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    rlast_i_1
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I3(rlast_reg_i_2_n_1),
        .I4(rlast_i_3_n_0),
        .I5(rlast_OBUF),
        .O(rlast_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_10
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_11
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_12
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_12_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    rlast_i_13
       (.I0(\read_len_queue_reg_n_0_[0][1] ),
        .I1(\read_len_queue_reg_n_0_[1][1] ),
        .I2(\read_len_queue_reg_n_0_[0][0] ),
        .I3(read_address_read_pointer_reg_n_0),
        .I4(\read_len_queue_reg_n_0_[1][0] ),
        .O(rlast_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_14
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_15
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_15_n_0));
  LUT6 #(
    .INIT(64'h33C3555533C3A5A5)) 
    rlast_i_16
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_16_n_0));
  LUT5 #(
    .INIT(32'h00821800)) 
    rlast_i_17
       (.I0(flip_i_5_n_0),
        .I1(read_address_read_pointer_i_4_n_0),
        .I2(no_of_transfers[1]),
        .I3(no_of_transfers[0]),
        .I4(rlast_i_18_n_0),
        .O(rlast_i_17_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rlast_i_18
       (.I0(\read_len_queue_reg_n_0_[1][0] ),
        .I1(read_address_read_pointer_reg_n_0),
        .I2(\read_len_queue_reg_n_0_[0][0] ),
        .O(rlast_i_18_n_0));
  LUT5 #(
    .INIT(32'h00008F00)) 
    rlast_i_3
       (.I0(reset_IBUF),
        .I1(rready_IBUF),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(rlast_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_5
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_6
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_7
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFAFAF)) 
    rlast_i_9
       (.I0(\read_len_queue_reg_n_0_[0][3] ),
        .I1(\read_len_queue_reg_n_0_[1][3] ),
        .I2(rlast_i_13_n_0),
        .I3(\read_len_queue_reg_n_0_[1][2] ),
        .I4(read_address_read_pointer_reg_n_0),
        .I5(\read_len_queue_reg_n_0_[0][2] ),
        .O(rlast_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rlast_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(rlast_i_1_n_0),
        .Q(rlast_OBUF));
  CARRY4 rlast_reg_i_2
       (.CI(rlast_reg_i_4_n_0),
        .CO({NLW_rlast_reg_i_2_CO_UNCONNECTED[3],rlast_reg_i_2_n_1,NLW_rlast_reg_i_2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,rlast_i_5_n_0,rlast_i_6_n_0,rlast_i_7_n_0}));
  CARRY4 rlast_reg_i_4
       (.CI(rlast_reg_i_8_n_0),
        .CO({rlast_reg_i_4_n_0,NLW_rlast_reg_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_reg_i_4_O_UNCONNECTED[3:0]),
        .S({rlast_i_9_n_0,rlast_i_10_n_0,rlast_i_11_n_0,rlast_i_12_n_0}));
  CARRY4 rlast_reg_i_8
       (.CI(1'b0),
        .CO({rlast_reg_i_8_n_0,NLW_rlast_reg_i_8_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_reg_i_8_O_UNCONNECTED[3:0]),
        .S({rlast_i_14_n_0,rlast_i_15_n_0,rlast_i_16_n_0,rlast_i_17_n_0}));
  IBUF rready_IBUF_inst
       (.I(rready),
        .O(rready_IBUF));
  OBUF \rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(rresp[0]));
  OBUF \rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(rresp[1]));
  OBUF rvalid_OBUF_inst
       (.I(rvalid_OBUF),
        .O(rvalid));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000F00)) 
    rvalid_i_1
       (.I0(reset_IBUF),
        .I1(rready_IBUF),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I5(rvalid_OBUF),
        .O(rvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rvalid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(rvalid_i_1_n_0),
        .Q(rvalid_OBUF));
  IBUF \wdata_IBUF[0]_inst 
       (.I(wdata[0]),
        .O(wdata_IBUF[0]));
  IBUF \wdata_IBUF[10]_inst 
       (.I(wdata[10]),
        .O(wdata_IBUF[10]));
  IBUF \wdata_IBUF[11]_inst 
       (.I(wdata[11]),
        .O(wdata_IBUF[11]));
  IBUF \wdata_IBUF[12]_inst 
       (.I(wdata[12]),
        .O(wdata_IBUF[12]));
  IBUF \wdata_IBUF[13]_inst 
       (.I(wdata[13]),
        .O(wdata_IBUF[13]));
  IBUF \wdata_IBUF[14]_inst 
       (.I(wdata[14]),
        .O(wdata_IBUF[14]));
  IBUF \wdata_IBUF[15]_inst 
       (.I(wdata[15]),
        .O(wdata_IBUF[15]));
  IBUF \wdata_IBUF[16]_inst 
       (.I(wdata[16]),
        .O(wdata_IBUF[16]));
  IBUF \wdata_IBUF[17]_inst 
       (.I(wdata[17]),
        .O(wdata_IBUF[17]));
  IBUF \wdata_IBUF[18]_inst 
       (.I(wdata[18]),
        .O(wdata_IBUF[18]));
  IBUF \wdata_IBUF[19]_inst 
       (.I(wdata[19]),
        .O(wdata_IBUF[19]));
  IBUF \wdata_IBUF[1]_inst 
       (.I(wdata[1]),
        .O(wdata_IBUF[1]));
  IBUF \wdata_IBUF[20]_inst 
       (.I(wdata[20]),
        .O(wdata_IBUF[20]));
  IBUF \wdata_IBUF[21]_inst 
       (.I(wdata[21]),
        .O(wdata_IBUF[21]));
  IBUF \wdata_IBUF[22]_inst 
       (.I(wdata[22]),
        .O(wdata_IBUF[22]));
  IBUF \wdata_IBUF[23]_inst 
       (.I(wdata[23]),
        .O(wdata_IBUF[23]));
  IBUF \wdata_IBUF[24]_inst 
       (.I(wdata[24]),
        .O(wdata_IBUF[24]));
  IBUF \wdata_IBUF[25]_inst 
       (.I(wdata[25]),
        .O(wdata_IBUF[25]));
  IBUF \wdata_IBUF[26]_inst 
       (.I(wdata[26]),
        .O(wdata_IBUF[26]));
  IBUF \wdata_IBUF[27]_inst 
       (.I(wdata[27]),
        .O(wdata_IBUF[27]));
  IBUF \wdata_IBUF[28]_inst 
       (.I(wdata[28]),
        .O(wdata_IBUF[28]));
  IBUF \wdata_IBUF[29]_inst 
       (.I(wdata[29]),
        .O(wdata_IBUF[29]));
  IBUF \wdata_IBUF[2]_inst 
       (.I(wdata[2]),
        .O(wdata_IBUF[2]));
  IBUF \wdata_IBUF[30]_inst 
       (.I(wdata[30]),
        .O(wdata_IBUF[30]));
  IBUF \wdata_IBUF[31]_inst 
       (.I(wdata[31]),
        .O(wdata_IBUF[31]));
  IBUF \wdata_IBUF[3]_inst 
       (.I(wdata[3]),
        .O(wdata_IBUF[3]));
  IBUF \wdata_IBUF[4]_inst 
       (.I(wdata[4]),
        .O(wdata_IBUF[4]));
  IBUF \wdata_IBUF[5]_inst 
       (.I(wdata[5]),
        .O(wdata_IBUF[5]));
  IBUF \wdata_IBUF[6]_inst 
       (.I(wdata[6]),
        .O(wdata_IBUF[6]));
  IBUF \wdata_IBUF[7]_inst 
       (.I(wdata[7]),
        .O(wdata_IBUF[7]));
  IBUF \wdata_IBUF[8]_inst 
       (.I(wdata[8]),
        .O(wdata_IBUF[8]));
  IBUF \wdata_IBUF[9]_inst 
       (.I(wdata[9]),
        .O(wdata_IBUF[9]));
  OBUF wready_OBUF_inst
       (.I(wready_OBUF),
        .O(wready));
  LUT6 #(
    .INIT(64'h7F7F777F40404440)) 
    wready_i_1
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(reset_IBUF),
        .I2(\write_address[9]_i_3_n_0 ),
        .I3(wready_i_2_n_0),
        .I4(\write_address_reg[9]_i_4_n_0 ),
        .I5(wready_OBUF),
        .O(wready_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    wready_i_2
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .O(wready_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    wready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(wready_i_1_n_0),
        .Q(wready_OBUF));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[0]_i_1 
       (.I0(\write_address_reg[3]_i_2_n_7 ),
        .I1(\write_address_queue_reg[1]__0 [0]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [0]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[0]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[1]_i_1 
       (.I0(\write_address_reg[3]_i_2_n_6 ),
        .I1(\write_address_queue_reg[1]__0 [1]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [1]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[1]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[2]_i_1 
       (.I0(\write_address_reg[3]_i_2_n_5 ),
        .I1(\write_address_queue_reg[1]__0 [2]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [2]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[2]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[3]_i_1 
       (.I0(\write_address_reg[3]_i_2_n_4 ),
        .I1(\write_address_queue_reg[1]__0 [3]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [3]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[3]));
  LUT6 #(
    .INIT(64'h656AA5AA6A6AAAAA)) 
    \write_address[3]_i_3 
       (.I0(\write_address_reg_n_0_[3] ),
        .I1(\write_size_queue_reg_n_0_[1][1] ),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_size_queue_reg_n_0_[0][1] ),
        .I4(\write_size_queue_reg_n_0_[1][0] ),
        .I5(\write_size_queue_reg_n_0_[0][0] ),
        .O(\write_address[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9A95AAA59A9AAAAA)) 
    \write_address[3]_i_4 
       (.I0(\write_address_reg_n_0_[2] ),
        .I1(\write_size_queue_reg_n_0_[1][0] ),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_size_queue_reg_n_0_[0][0] ),
        .I4(\write_size_queue_reg_n_0_[1][1] ),
        .I5(\write_size_queue_reg_n_0_[0][1] ),
        .O(\write_address[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9A95AAA59A9AAAAA)) 
    \write_address[3]_i_5 
       (.I0(\write_address_reg_n_0_[1] ),
        .I1(\write_size_queue_reg_n_0_[1][1] ),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_size_queue_reg_n_0_[0][1] ),
        .I4(\write_size_queue_reg_n_0_[1][0] ),
        .I5(\write_size_queue_reg_n_0_[0][0] ),
        .O(\write_address[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9A9AAAA59A95)) 
    \write_address[3]_i_6 
       (.I0(\write_address_reg_n_0_[0] ),
        .I1(\write_size_queue_reg_n_0_[1][1] ),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_size_queue_reg_n_0_[0][1] ),
        .I4(\write_size_queue_reg_n_0_[1][0] ),
        .I5(\write_size_queue_reg_n_0_[0][0] ),
        .O(\write_address[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[4]_i_1 
       (.I0(\write_address_reg[7]_i_2_n_7 ),
        .I1(\write_address_queue_reg[1]__0 [4]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [4]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[4]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[5]_i_1 
       (.I0(\write_address_reg[7]_i_2_n_6 ),
        .I1(\write_address_queue_reg[1]__0 [5]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [5]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[5]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[6]_i_1 
       (.I0(\write_address_reg[7]_i_2_n_5 ),
        .I1(\write_address_queue_reg[1]__0 [6]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [6]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[6]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[7]_i_1 
       (.I0(\write_address_reg[7]_i_2_n_4 ),
        .I1(\write_address_queue_reg[1]__0 [7]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [7]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[7]));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[8]_i_1 
       (.I0(\write_address_reg[9]_i_6_n_7 ),
        .I1(\write_address_queue_reg[1]__0 [8]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [8]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[8]));
  LUT6 #(
    .INIT(64'h8888A88888888888)) 
    \write_address[9]_i_1 
       (.I0(reset_IBUF),
        .I1(\write_address[9]_i_3_n_0 ),
        .I2(\write_address_reg[9]_i_4_n_0 ),
        .I3(\write_address[9]_i_5_n_0 ),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I5(wvalid_IBUF),
        .O(\write_address[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_10 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_11 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_12 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_16 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_17 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_18 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_19 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000CFC0)) 
    \write_address[9]_i_2 
       (.I0(\write_address_reg[9]_i_6_n_6 ),
        .I1(\write_address_queue_reg[1]__0 [9]),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_address_queue_reg[0]__0 [9]),
        .I4(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I5(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .O(write_address[9]));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \write_address[9]_i_20 
       (.I0(\write_len_queue_reg_n_0_[0][0] ),
        .I1(\write_len_queue_reg_n_0_[1][0] ),
        .I2(\write_len_queue_reg_n_0_[0][1] ),
        .I3(write_address_read_pointer_reg_n_0),
        .I4(\write_len_queue_reg_n_0_[1][1] ),
        .O(\write_address[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_22 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_23 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_24 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_25 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5CFC0CFC0757F)) 
    \write_address[9]_i_26 
       (.I0(no_of_transfers[2]),
        .I1(\write_len_queue_reg_n_0_[1][3] ),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_len_queue_reg_n_0_[0][3] ),
        .I4(\write_address[9]_i_20_n_0 ),
        .I5(\write_address[9]_i_32_n_0 ),
        .O(\write_address[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h4144411153555333)) 
    \write_address[9]_i_27 
       (.I0(no_of_transfers[1]),
        .I1(\write_address[9]_i_33_n_0 ),
        .I2(\write_len_queue_reg_n_0_[1][1] ),
        .I3(write_address_read_pointer_reg_n_0),
        .I4(\write_len_queue_reg_n_0_[0][1] ),
        .I5(no_of_transfers[0]),
        .O(\write_address[9]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_28 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_29 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h4044444000000000)) 
    \write_address[9]_i_3 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\address[0][9]_i_5_n_0 ),
        .I2(write_flip),
        .I3(write_address_write_pointer_reg_n_0),
        .I4(write_address_read_pointer_reg_n_0),
        .I5(\read_address[9]_i_3_n_0 ),
        .O(\write_address[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h202A101510158A80)) 
    \write_address[9]_i_30 
       (.I0(no_of_transfers[2]),
        .I1(\write_len_queue_reg_n_0_[1][3] ),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(\write_len_queue_reg_n_0_[0][3] ),
        .I4(\write_address[9]_i_20_n_0 ),
        .I5(\write_address[9]_i_32_n_0 ),
        .O(\write_address[9]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00001DE2E21D0000)) 
    \write_address[9]_i_31 
       (.I0(\write_len_queue_reg_n_0_[0][1] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[1][1] ),
        .I3(no_of_transfers[1]),
        .I4(\write_address[9]_i_33_n_0 ),
        .I5(no_of_transfers[0]),
        .O(\write_address[9]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \write_address[9]_i_32 
       (.I0(\write_len_queue_reg_n_0_[1][2] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][2] ),
        .O(\write_address[9]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \write_address[9]_i_33 
       (.I0(\write_len_queue_reg_n_0_[1][0] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][0] ),
        .O(\write_address[9]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \write_address[9]_i_5 
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .O(\write_address[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \write_address[9]_i_8 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(ram_controller_state2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \write_address[9]_i_9 
       (.I0(\write_len_queue_reg_n_0_[1][3] ),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(\write_len_queue_reg_n_0_[0][3] ),
        .I3(\write_len_queue_reg_n_0_[1][2] ),
        .I4(\write_len_queue_reg_n_0_[0][2] ),
        .I5(\write_address[9]_i_20_n_0 ),
        .O(\write_address[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[0]),
        .Q(\write_address_queue_reg[0]__0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[1]),
        .Q(\write_address_queue_reg[0]__0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[2]),
        .Q(\write_address_queue_reg[0]__0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[3]),
        .Q(\write_address_queue_reg[0]__0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[4]),
        .Q(\write_address_queue_reg[0]__0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[5]),
        .Q(\write_address_queue_reg[0]__0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[6]),
        .Q(\write_address_queue_reg[0]__0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[7]),
        .Q(\write_address_queue_reg[0]__0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[8]),
        .Q(\write_address_queue_reg[0]__0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awaddr_IBUF[9]),
        .Q(\write_address_queue_reg[0]__0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[0]),
        .Q(\write_address_queue_reg[1]__0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[1]),
        .Q(\write_address_queue_reg[1]__0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[2]),
        .Q(\write_address_queue_reg[1]__0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[3]),
        .Q(\write_address_queue_reg[1]__0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[4]),
        .Q(\write_address_queue_reg[1]__0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[5]),
        .Q(\write_address_queue_reg[1]__0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[6]),
        .Q(\write_address_queue_reg[1]__0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[7]),
        .Q(\write_address_queue_reg[1]__0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[8]),
        .Q(\write_address_queue_reg[1]__0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_queue_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awaddr_IBUF[9]),
        .Q(\write_address_queue_reg[1]__0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    write_address_read_pointer_i_1
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(bready_IBUF),
        .I4(reset_IBUF),
        .I5(write_address_read_pointer_reg_n_0),
        .O(write_address_read_pointer_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    write_address_read_pointer_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(write_address_read_pointer_i_1_n_0),
        .Q(write_address_read_pointer_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[0]),
        .Q(\write_address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[1]),
        .Q(\write_address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[2]),
        .Q(\write_address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[3]),
        .Q(\write_address_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \write_address_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\write_address_reg[3]_i_2_n_0 ,\NLW_write_address_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\write_address_reg_n_0_[3] ,\write_address_reg_n_0_[2] ,\write_address_reg_n_0_[1] ,\write_address_reg_n_0_[0] }),
        .O({\write_address_reg[3]_i_2_n_4 ,\write_address_reg[3]_i_2_n_5 ,\write_address_reg[3]_i_2_n_6 ,\write_address_reg[3]_i_2_n_7 }),
        .S({\write_address[3]_i_3_n_0 ,\write_address[3]_i_4_n_0 ,\write_address[3]_i_5_n_0 ,\write_address[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[4]),
        .Q(\write_address_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[5]),
        .Q(\write_address_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[6]),
        .Q(\write_address_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[7]),
        .Q(\write_address_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \write_address_reg[7]_i_2 
       (.CI(\write_address_reg[3]_i_2_n_0 ),
        .CO({\write_address_reg[7]_i_2_n_0 ,\NLW_write_address_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_address_reg[7]_i_2_n_4 ,\write_address_reg[7]_i_2_n_5 ,\write_address_reg[7]_i_2_n_6 ,\write_address_reg[7]_i_2_n_7 }),
        .S({\write_address_reg_n_0_[7] ,\write_address_reg_n_0_[6] ,\write_address_reg_n_0_[5] ,\write_address_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[8]),
        .Q(\write_address_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_address[9]_i_1_n_0 ),
        .D(write_address[9]),
        .Q(\write_address_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 \write_address_reg[9]_i_15 
       (.CI(\write_address_reg[9]_i_21_n_0 ),
        .CO({\write_address_reg[9]_i_15_n_0 ,\NLW_write_address_reg[9]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({ram_controller_state2,ram_controller_state2,ram_controller_state2,ram_controller_state2}),
        .O(\NLW_write_address_reg[9]_i_15_O_UNCONNECTED [3:0]),
        .S({\write_address[9]_i_22_n_0 ,\write_address[9]_i_23_n_0 ,\write_address[9]_i_24_n_0 ,\write_address[9]_i_25_n_0 }));
  CARRY4 \write_address_reg[9]_i_21 
       (.CI(1'b0),
        .CO({\write_address_reg[9]_i_21_n_0 ,\NLW_write_address_reg[9]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({ram_controller_state2,ram_controller_state2,\write_address[9]_i_26_n_0 ,\write_address[9]_i_27_n_0 }),
        .O(\NLW_write_address_reg[9]_i_21_O_UNCONNECTED [3:0]),
        .S({\write_address[9]_i_28_n_0 ,\write_address[9]_i_29_n_0 ,\write_address[9]_i_30_n_0 ,\write_address[9]_i_31_n_0 }));
  CARRY4 \write_address_reg[9]_i_4 
       (.CI(\write_address_reg[9]_i_7_n_0 ),
        .CO({\write_address_reg[9]_i_4_n_0 ,\NLW_write_address_reg[9]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({ram_controller_state2,ram_controller_state2,ram_controller_state2,ram_controller_state2}),
        .O(\NLW_write_address_reg[9]_i_4_O_UNCONNECTED [3:0]),
        .S({\write_address[9]_i_9_n_0 ,\write_address[9]_i_10_n_0 ,\write_address[9]_i_11_n_0 ,\write_address[9]_i_12_n_0 }));
  CARRY4 \write_address_reg[9]_i_6 
       (.CI(\write_address_reg[7]_i_2_n_0 ),
        .CO(\NLW_write_address_reg[9]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_write_address_reg[9]_i_6_O_UNCONNECTED [3:2],\write_address_reg[9]_i_6_n_6 ,\write_address_reg[9]_i_6_n_7 }),
        .S({1'b0,1'b0,\write_address_reg_n_0_[9] ,\write_address_reg_n_0_[8] }));
  CARRY4 \write_address_reg[9]_i_7 
       (.CI(\write_address_reg[9]_i_15_n_0 ),
        .CO({\write_address_reg[9]_i_7_n_0 ,\NLW_write_address_reg[9]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({ram_controller_state2,ram_controller_state2,ram_controller_state2,ram_controller_state2}),
        .O(\NLW_write_address_reg[9]_i_7_O_UNCONNECTED [3:0]),
        .S({\write_address[9]_i_16_n_0 ,\write_address[9]_i_17_n_0 ,\write_address[9]_i_18_n_0 ,\write_address[9]_i_19_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hD052)) 
    write_address_write_pointer_i_1
       (.I0(awvalid_IBUF),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(write_address_write_pointer_reg_n_0),
        .I3(write_flip),
        .O(write_address_write_pointer_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    write_address_write_pointer_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(write_address_write_pointer_i_1_n_0),
        .Q(write_address_write_pointer_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0FF87878)) 
    write_flip_i_1
       (.I0(awvalid_IBUF),
        .I1(write_address_write_pointer_reg_n_0),
        .I2(write_flip),
        .I3(write_address_read_pointer),
        .I4(write_address_read_pointer_reg_n_0),
        .O(write_flip_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    write_flip_i_2
       (.I0(\FSM_sequential_ram_controller_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_ram_controller_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_ram_controller_state_reg_n_0_[1] ),
        .I3(bready_IBUF),
        .O(write_address_read_pointer));
  FDCE #(
    .INIT(1'b0)) 
    write_flip_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_ram_controller_state[2]_i_2_n_0 ),
        .D(write_flip_i_1_n_0),
        .Q(write_flip));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awid_IBUF[0]),
        .Q(\write_id_queue_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awid_IBUF[1]),
        .Q(\write_id_queue_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awid_IBUF[2]),
        .Q(\write_id_queue_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awid_IBUF[3]),
        .Q(\write_id_queue_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awid_IBUF[0]),
        .Q(\write_id_queue_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awid_IBUF[1]),
        .Q(\write_id_queue_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awid_IBUF[2]),
        .Q(\write_id_queue_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_id_queue_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awid_IBUF[3]),
        .Q(\write_id_queue_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awlen_IBUF[0]),
        .Q(\write_len_queue_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awlen_IBUF[1]),
        .Q(\write_len_queue_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awlen_IBUF[2]),
        .Q(\write_len_queue_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awlen_IBUF[3]),
        .Q(\write_len_queue_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awlen_IBUF[0]),
        .Q(\write_len_queue_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awlen_IBUF[1]),
        .Q(\write_len_queue_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awlen_IBUF[2]),
        .Q(\write_len_queue_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_len_queue_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awlen_IBUF[3]),
        .Q(\write_len_queue_reg_n_0_[1][3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000D000)) 
    \write_size_queue[0][1]_i_1 
       (.I0(write_flip),
        .I1(write_address_read_pointer_reg_n_0),
        .I2(awvalid_IBUF),
        .I3(reset_IBUF),
        .I4(write_address_write_pointer_reg_n_0),
        .O(\write_size_queue[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008800)) 
    \write_size_queue[1][1]_i_1 
       (.I0(reset_IBUF),
        .I1(awvalid_IBUF),
        .I2(write_address_read_pointer_reg_n_0),
        .I3(write_address_write_pointer_reg_n_0),
        .I4(write_flip),
        .O(\write_size_queue[1][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_size_queue_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awsize_IBUF[0]),
        .Q(\write_size_queue_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_size_queue_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[0][1]_i_1_n_0 ),
        .D(awsize_IBUF[1]),
        .Q(\write_size_queue_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_size_queue_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awsize_IBUF[0]),
        .Q(\write_size_queue_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_size_queue_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\write_size_queue[1][1]_i_1_n_0 ),
        .D(awsize_IBUF[1]),
        .Q(\write_size_queue_reg_n_0_[1][1] ),
        .R(1'b0));
  IBUF wvalid_IBUF_inst
       (.I(wvalid),
        .O(wvalid_IBUF));
endmodule

(* ADDRESS_WIDTH = "10" *) (* DATA_WIDTH = "8" *) (* RAM_DEPTH = "256" *) 
module RAM_Module
   (clk,
    read,
    enable_RW,
    address,
    data_in,
    data_out);
  input clk;
  input read;
  input enable_RW;
  input [9:0]address;
  input [7:0]data_in;
  output [7:0]data_out;

  wire [9:0]address;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire enable_RW;
  wire mem_reg_i_1_n_0;
  wire read;
  wire NLW_mem_reg_REGCEAREGCE_UNCONNECTED;
  wire NLW_mem_reg_REGCEB_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 8}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,address[9:2],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_in}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[15:8],data_out}),
        .DOBDO(NLW_mem_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(enable_RW),
        .ENBWREN(1'b0),
        .REGCEAREGCE(NLW_mem_reg_REGCEAREGCE_UNCONNECTED),
        .REGCEB(NLW_mem_reg_REGCEB_UNCONNECTED),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({mem_reg_i_1_n_0,mem_reg_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_1
       (.I0(read),
        .O(mem_reg_i_1_n_0));
endmodule

(* ADDRESS_WIDTH = "10" *) (* DATA_WIDTH = "8" *) (* ORIG_REF_NAME = "RAM_Module" *) 
(* RAM_DEPTH = "256" *) 
module RAM_Module__1
   (clk,
    read,
    enable_RW,
    address,
    data_in,
    data_out);
  input clk;
  input read;
  input enable_RW;
  input [9:0]address;
  input [7:0]data_in;
  output [7:0]data_out;

  wire [9:0]address;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire enable_RW;
  wire mem_reg_i_1_n_0;
  wire read;
  wire NLW_mem_reg_REGCEAREGCE_UNCONNECTED;
  wire NLW_mem_reg_REGCEB_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 8}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,address[9:2],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_in}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[15:8],data_out}),
        .DOBDO(NLW_mem_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(enable_RW),
        .ENBWREN(1'b0),
        .REGCEAREGCE(NLW_mem_reg_REGCEAREGCE_UNCONNECTED),
        .REGCEB(NLW_mem_reg_REGCEB_UNCONNECTED),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({mem_reg_i_1_n_0,mem_reg_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_1
       (.I0(read),
        .O(mem_reg_i_1_n_0));
endmodule

(* ADDRESS_WIDTH = "10" *) (* DATA_WIDTH = "8" *) (* ORIG_REF_NAME = "RAM_Module" *) 
(* RAM_DEPTH = "256" *) 
module RAM_Module__2
   (clk,
    read,
    enable_RW,
    address,
    data_in,
    data_out);
  input clk;
  input read;
  input enable_RW;
  input [9:0]address;
  input [7:0]data_in;
  output [7:0]data_out;

  wire [9:0]address;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire enable_RW;
  wire mem_reg_i_1_n_0;
  wire read;
  wire NLW_mem_reg_REGCEAREGCE_UNCONNECTED;
  wire NLW_mem_reg_REGCEB_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 8}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,address[9:2],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_in}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[15:8],data_out}),
        .DOBDO(NLW_mem_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(enable_RW),
        .ENBWREN(1'b0),
        .REGCEAREGCE(NLW_mem_reg_REGCEAREGCE_UNCONNECTED),
        .REGCEB(NLW_mem_reg_REGCEB_UNCONNECTED),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({mem_reg_i_1_n_0,mem_reg_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_1
       (.I0(read),
        .O(mem_reg_i_1_n_0));
endmodule

(* ADDRESS_WIDTH = "10" *) (* DATA_WIDTH = "8" *) (* ORIG_REF_NAME = "RAM_Module" *) 
(* RAM_DEPTH = "256" *) 
module RAM_Module__3
   (clk,
    read,
    enable_RW,
    address,
    data_in,
    data_out);
  input clk;
  input read;
  input enable_RW;
  input [9:0]address;
  input [7:0]data_in;
  output [7:0]data_out;

  wire [9:0]address;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire enable_RW;
  wire mem_reg_i_1_n_0;
  wire read;
  wire NLW_mem_reg_REGCEAREGCE_UNCONNECTED;
  wire NLW_mem_reg_REGCEB_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 8}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,address[9:2],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_in}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[15:8],data_out}),
        .DOBDO(NLW_mem_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(enable_RW),
        .ENBWREN(1'b0),
        .REGCEAREGCE(NLW_mem_reg_REGCEAREGCE_UNCONNECTED),
        .REGCEB(NLW_mem_reg_REGCEB_UNCONNECTED),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({mem_reg_i_1_n_0,mem_reg_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_1
       (.I0(read),
        .O(mem_reg_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
