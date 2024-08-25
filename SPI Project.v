// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug 22 03:51:22 2024
// Host        : Abdelrahman-PC running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/digital design/projects/project_2/SPI Project.v}
// Design      : SPI_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (dout0,
    tx_valid,
    Q,
    clk_IBUF_BUFG,
    D,
    mem,
    SR,
    E,
    rx_valid,
    rx_valid_reg,
    rx_valid_reg_0);
  output [7:0]dout0;
  output tx_valid;
  output [7:0]Q;
  input clk_IBUF_BUFG;
  input [7:0]D;
  input mem;
  input [0:0]SR;
  input [0:0]E;
  input rx_valid;
  input [0:0]rx_valid_reg;
  input [7:0]rx_valid_reg_0;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [7:0]addr;
  wire clk_IBUF_BUFG;
  wire [7:0]dout0;
  wire mem;
  wire rx_valid;
  wire [0:0]rx_valid_reg;
  wire [7:0]rx_valid_reg_0;
  wire tx_valid;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[0]),
        .Q(addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[1]),
        .Q(addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[2]),
        .Q(addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[3]),
        .Q(addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[4]),
        .Q(addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[5]),
        .Q(addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[6]),
        .Q(addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(D[7]),
        .Q(addr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid_reg_0[7]),
        .Q(Q[7]),
        .R(SR));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_0_0
       (.A(addr),
        .D(D[0]),
        .O(dout0[0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_1_1
       (.A(addr),
        .D(D[1]),
        .O(dout0[1]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_2_2
       (.A(addr),
        .D(D[2]),
        .O(dout0[2]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_3_3
       (.A(addr),
        .D(D[3]),
        .O(dout0[3]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_4_4
       (.A(addr),
        .D(D[4]),
        .O(dout0[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_5_5
       (.A(addr),
        .D(D[5]),
        .O(dout0[5]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_6_6
       (.A(addr),
        .D(D[6]),
        .O(dout0[6]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    mem_reg_0_255_7_7
       (.A(addr),
        .D(D[7]),
        .O(dout0[7]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(rx_valid),
        .Q(tx_valid),
        .R(SR));
endmodule

module SPI_Slave
   (MISO_OBUF,
    SR,
    rx_valid,
    \dout_reg[7] ,
    \addr_reg[0] ,
    D,
    mem,
    E,
    clk_IBUF_BUFG,
    dout0,
    tx_valid,
    MOSI_IBUF,
    Q,
    SS_n_IBUF,
    rst_n_IBUF);
  output MISO_OBUF;
  output [0:0]SR;
  output rx_valid;
  output [7:0]\dout_reg[7] ;
  output [0:0]\addr_reg[0] ;
  output [7:0]D;
  output mem;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input [7:0]dout0;
  input tx_valid;
  input MOSI_IBUF;
  input [7:0]Q;
  input SS_n_IBUF;
  input rst_n_IBUF;

  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_cs[1]_i_5_n_0 ;
  wire \FSM_sequential_cs[1]_i_6_n_0 ;
  wire \FSM_sequential_cs[1]_i_7_n_0 ;
  wire \FSM_sequential_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_cs[2]_i_5_n_0 ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_i_5_n_0;
  wire MISO_i_6_n_0;
  wire MISO_i_7_n_0;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]\addr_reg[0] ;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire [7:0]dout0;
  wire [7:0]\dout_reg[7] ;
  wire mem;
  wire [2:0]ns;
  wire \rd_counter[0]_i_1_n_0 ;
  wire \rd_counter[1]_i_1_n_0 ;
  wire \rd_counter[2]_i_1_n_0 ;
  wire \rd_counter[2]_i_2_n_0 ;
  wire \rd_counter[2]_i_3_n_0 ;
  wire \rd_counter[2]_i_4_n_0 ;
  wire \rd_counter_reg_n_0_[0] ;
  wire \rd_counter_reg_n_0_[1] ;
  wire \rd_counter_reg_n_0_[2] ;
  wire read_addr_received_i_1_n_0;
  wire read_addr_received_reg_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[1]_i_2_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[2]_i_2_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[4]_i_2_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[8]_i_3_n_0 ;
  wire \rx_data[8]_i_4_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire [9:9]rx_data__0;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire tx_valid;
  wire wr_counter;
  wire \wr_counter[0]_i_1_n_0 ;
  wire \wr_counter[1]_i_1_n_0 ;
  wire \wr_counter[2]_i_1_n_0 ;
  wire \wr_counter[3]_i_2_n_0 ;
  wire \wr_counter[3]_i_3_n_0 ;
  wire \wr_counter_reg_n_0_[0] ;
  wire \wr_counter_reg_n_0_[1] ;
  wire \wr_counter_reg_n_0_[2] ;
  wire \wr_counter_reg_n_0_[3] ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(\FSM_sequential_cs[1]_i_7_n_0 ),
        .I1(SS_n_IBUF),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(\FSM_sequential_cs[0]_i_2_n_0 ),
        .O(ns[0]));
  LUT6 #(
    .INIT(64'h0000000001030101)) 
    \FSM_sequential_cs[0]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(read_addr_received_reg_n_0),
        .I4(MOSI_IBUF),
        .I5(SS_n_IBUF),
        .O(\FSM_sequential_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(\FSM_sequential_cs[1]_i_2_n_0 ),
        .I1(\FSM_sequential_cs[1]_i_3_n_0 ),
        .I2(\FSM_sequential_cs[1]_i_4_n_0 ),
        .I3(\FSM_sequential_cs[1]_i_5_n_0 ),
        .I4(\FSM_sequential_cs[1]_i_6_n_0 ),
        .I5(\FSM_sequential_cs[1]_i_7_n_0 ),
        .O(ns[1]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_sequential_cs[1]_i_2 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(MOSI_IBUF),
        .I3(SS_n_IBUF),
        .I4(cs[0]),
        .O(\FSM_sequential_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    \FSM_sequential_cs[1]_i_3 
       (.I0(SS_n_IBUF),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(\rd_counter_reg_n_0_[2] ),
        .I4(\rd_counter_reg_n_0_[0] ),
        .I5(\rd_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_cs[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF2A)) 
    \FSM_sequential_cs[1]_i_4 
       (.I0(\wr_counter_reg_n_0_[1] ),
        .I1(\wr_counter_reg_n_0_[0] ),
        .I2(\wr_counter_reg_n_0_[2] ),
        .I3(\wr_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_cs[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00D5)) 
    \FSM_sequential_cs[1]_i_5 
       (.I0(\wr_counter_reg_n_0_[1] ),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(cs[0]),
        .O(\FSM_sequential_cs[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_cs[1]_i_6 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(SS_n_IBUF),
        .I3(cs[0]),
        .O(\FSM_sequential_cs[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4FFFFFF0)) 
    \FSM_sequential_cs[1]_i_7 
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(\wr_counter_reg_n_0_[1] ),
        .I3(\wr_counter_reg_n_0_[0] ),
        .I4(\wr_counter_reg_n_0_[2] ),
        .I5(\wr_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_cs[1]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(\FSM_sequential_cs[2]_i_3_n_0 ),
        .I1(\FSM_sequential_cs[2]_i_4_n_0 ),
        .I2(cs[2]),
        .I3(SS_n_IBUF),
        .I4(\FSM_sequential_cs[2]_i_5_n_0 ),
        .O(ns[2]));
  LUT4 #(
    .INIT(16'hFD00)) 
    \FSM_sequential_cs[2]_i_3 
       (.I0(rx_data[9]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(\wr_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_cs[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFFE)) 
    \FSM_sequential_cs[2]_i_4 
       (.I0(\wr_counter_reg_n_0_[3] ),
        .I1(\wr_counter_reg_n_0_[2] ),
        .I2(\wr_counter_reg_n_0_[0] ),
        .I3(\wr_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_cs[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_cs[2]_i_5 
       (.I0(MOSI_IBUF),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(SS_n_IBUF),
        .I4(cs[0]),
        .O(\FSM_sequential_cs[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000040F)) 
    MISO_i_1
       (.I0(\wr_counter[3]_i_3_n_0 ),
        .I1(tx_valid),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .O(MISO_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    MISO_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .I2(MISO_i_5_n_0),
        .I3(MISO_i_6_n_0),
        .I4(MISO_i_7_n_0),
        .O(MISO_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    MISO_i_3
       (.I0(Q[4]),
        .I1(\rd_counter_reg_n_0_[2] ),
        .I2(cs[1]),
        .I3(\rd_counter_reg_n_0_[1] ),
        .I4(\rd_counter_reg_n_0_[0] ),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    MISO_i_4
       (.I0(cs[1]),
        .I1(\rd_counter_reg_n_0_[1] ),
        .I2(\rd_counter_reg_n_0_[0] ),
        .I3(Q[2]),
        .I4(\rd_counter_reg_n_0_[2] ),
        .I5(Q[6]),
        .O(MISO_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    MISO_i_5
       (.I0(Q[0]),
        .I1(cs[1]),
        .I2(\rd_counter_reg_n_0_[2] ),
        .I3(\rd_counter_reg_n_0_[0] ),
        .I4(\rd_counter_reg_n_0_[1] ),
        .O(MISO_i_5_n_0));
  LUT6 #(
    .INIT(64'h4540000000000000)) 
    MISO_i_6
       (.I0(\rd_counter_reg_n_0_[1] ),
        .I1(Q[5]),
        .I2(\rd_counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(cs[1]),
        .I5(\rd_counter_reg_n_0_[0] ),
        .O(MISO_i_6_n_0));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    MISO_i_7
       (.I0(\rd_counter_reg_n_0_[1] ),
        .I1(Q[7]),
        .I2(\rd_counter_reg_n_0_[2] ),
        .I3(Q[3]),
        .I4(cs[1]),
        .I5(\rd_counter_reg_n_0_[0] ),
        .O(MISO_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .O(\addr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[0]_i_1 
       (.I0(rx_valid),
        .I1(dout0[0]),
        .O(\dout_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[1]_i_1 
       (.I0(rx_valid),
        .I1(dout0[1]),
        .O(\dout_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[2]_i_1 
       (.I0(rx_valid),
        .I1(dout0[2]),
        .O(\dout_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[3]_i_1 
       (.I0(rx_valid),
        .I1(dout0[3]),
        .O(\dout_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[4]_i_1 
       (.I0(rx_valid),
        .I1(dout0[4]),
        .O(\dout_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[5]_i_1 
       (.I0(rx_valid),
        .I1(dout0[5]),
        .O(\dout_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[6]_i_1 
       (.I0(rx_valid),
        .I1(dout0[6]),
        .O(\dout_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \dout[7]_i_1 
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[7]_i_2 
       (.I0(rx_valid),
        .I1(dout0[7]),
        .O(\dout_reg[7] [7]));
  LUT4 #(
    .INIT(16'h0800)) 
    mem_reg_0_255_0_0_i_1
       (.I0(rx_data[8]),
        .I1(rx_valid),
        .I2(rx_data[9]),
        .I3(rst_n_IBUF),
        .O(mem));
  LUT6 #(
    .INIT(64'hFFFFFBFF0000040F)) 
    \rd_counter[0]_i_1 
       (.I0(\wr_counter[3]_i_3_n_0 ),
        .I1(tx_valid),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(\rd_counter_reg_n_0_[0] ),
        .O(\rd_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDFDFF77770700)) 
    \rd_counter[1]_i_1 
       (.I0(cs[1]),
        .I1(\rd_counter_reg_n_0_[0] ),
        .I2(\wr_counter[3]_i_3_n_0 ),
        .I3(\rd_counter[2]_i_3_n_0 ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(\rd_counter_reg_n_0_[1] ),
        .O(\rd_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDFDFF77770700)) 
    \rd_counter[2]_i_1 
       (.I0(cs[1]),
        .I1(\rd_counter[2]_i_2_n_0 ),
        .I2(\wr_counter[3]_i_3_n_0 ),
        .I3(\rd_counter[2]_i_3_n_0 ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(\rd_counter_reg_n_0_[2] ),
        .O(\rd_counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_counter[2]_i_2 
       (.I0(\rd_counter_reg_n_0_[0] ),
        .I1(\rd_counter_reg_n_0_[1] ),
        .O(\rd_counter[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \rd_counter[2]_i_3 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(tx_valid),
        .O(\rd_counter[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rd_counter[2]_i_4 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\rd_counter[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rd_counter[0]_i_1_n_0 ),
        .Q(\rd_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rd_counter[1]_i_1_n_0 ),
        .Q(\rd_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rd_counter[2]_i_1_n_0 ),
        .Q(\rd_counter_reg_n_0_[2] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF2F0020)) 
    read_addr_received_i_1
       (.I0(cs[0]),
        .I1(\wr_counter[3]_i_3_n_0 ),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(read_addr_received_reg_n_0),
        .O(read_addr_received_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_addr_received_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(read_addr_received_i_1_n_0),
        .Q(read_addr_received_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFEEFF000022000)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\wr_counter[3]_i_3_n_0 ),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(D[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data[1]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[1]_i_2_n_0 ),
        .I2(\rx_data[8]_i_4_n_0 ),
        .I3(\wr_counter_reg_n_0_[0] ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(D[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_data[1]_i_2 
       (.I0(\wr_counter_reg_n_0_[3] ),
        .I1(\wr_counter_reg_n_0_[1] ),
        .I2(\wr_counter_reg_n_0_[2] ),
        .O(\rx_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \rx_data[2]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(\rx_data[2]_i_2_n_0 ),
        .I3(\wr_counter_reg_n_0_[3] ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(D[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[2]_i_2 
       (.I0(\wr_counter_reg_n_0_[0] ),
        .I1(\wr_counter_reg_n_0_[2] ),
        .O(\rx_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[3]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(\wr_counter_reg_n_0_[0] ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(D[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[3]_i_2 
       (.I0(\wr_counter_reg_n_0_[2] ),
        .I1(\wr_counter_reg_n_0_[3] ),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBF000088800)) 
    \rx_data[4]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data[4]_i_2_n_0 ),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(D[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \rx_data[4]_i_2 
       (.I0(\wr_counter_reg_n_0_[0] ),
        .I1(\wr_counter_reg_n_0_[2] ),
        .I2(\wr_counter_reg_n_0_[3] ),
        .I3(\wr_counter_reg_n_0_[1] ),
        .O(\rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \rx_data[5]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[8]_i_4_n_0 ),
        .I3(\rx_data[5]_i_2_n_0 ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(D[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[5]_i_2 
       (.I0(\wr_counter_reg_n_0_[1] ),
        .I1(\wr_counter_reg_n_0_[3] ),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[6]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[8]_i_4_n_0 ),
        .I2(\wr_counter_reg_n_0_[1] ),
        .I3(\rx_data[6]_i_2_n_0 ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(D[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rx_data[6]_i_2 
       (.I0(\wr_counter_reg_n_0_[3] ),
        .I1(\wr_counter_reg_n_0_[2] ),
        .I2(\wr_counter_reg_n_0_[0] ),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \rx_data[7]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(\rx_data[7]_i_3_n_0 ),
        .I3(\wr_counter_reg_n_0_[3] ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(D[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1D00)) 
    \rx_data[7]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(\wr_counter_reg_n_0_[1] ),
        .O(\rx_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_data[7]_i_3 
       (.I0(\wr_counter_reg_n_0_[0] ),
        .I1(\wr_counter_reg_n_0_[2] ),
        .O(\rx_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data[8]_i_1 
       (.I0(rx_data__0),
        .I1(\rx_data[8]_i_3_n_0 ),
        .I2(\rx_data[8]_i_4_n_0 ),
        .I3(\wr_counter_reg_n_0_[3] ),
        .I4(\rd_counter[2]_i_4_n_0 ),
        .I5(rx_data[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \rx_data[8]_i_2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(MOSI_IBUF),
        .O(rx_data__0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_data[8]_i_3 
       (.I0(\wr_counter_reg_n_0_[2] ),
        .I1(\wr_counter_reg_n_0_[0] ),
        .I2(\wr_counter_reg_n_0_[1] ),
        .O(\rx_data[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \rx_data[8]_i_4 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\rx_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBF000088800)) 
    \rx_data[9]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(rx_data[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \rx_data[9]_i_2 
       (.I0(\wr_counter_reg_n_0_[1] ),
        .I1(\wr_counter_reg_n_0_[0] ),
        .I2(\wr_counter_reg_n_0_[2] ),
        .I3(\wr_counter_reg_n_0_[3] ),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hDFD41014)) 
    rx_valid_i_1
       (.I0(\wr_counter[3]_i_3_n_0 ),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(rx_valid),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
  LUT6 #(
    .INIT(64'h555455545554FFFF)) 
    \wr_counter[0]_i_1 
       (.I0(\wr_counter_reg_n_0_[0] ),
        .I1(\wr_counter_reg_n_0_[3] ),
        .I2(\wr_counter_reg_n_0_[1] ),
        .I3(\wr_counter_reg_n_0_[2] ),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(\wr_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE00EE00EE00EE000)) 
    \wr_counter[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(\wr_counter_reg_n_0_[1] ),
        .I3(\wr_counter_reg_n_0_[0] ),
        .I4(\wr_counter_reg_n_0_[3] ),
        .I5(\wr_counter_reg_n_0_[2] ),
        .O(\wr_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC02FC02FC020000)) 
    \wr_counter[2]_i_1 
       (.I0(\wr_counter_reg_n_0_[3] ),
        .I1(\wr_counter_reg_n_0_[1] ),
        .I2(\wr_counter_reg_n_0_[0] ),
        .I3(\wr_counter_reg_n_0_[2] ),
        .I4(cs[1]),
        .I5(cs[2]),
        .O(\wr_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h03E3)) 
    \wr_counter[3]_i_1 
       (.I0(\wr_counter[3]_i_3_n_0 ),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(wr_counter));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8FFFF)) 
    \wr_counter[3]_i_2 
       (.I0(\wr_counter_reg_n_0_[3] ),
        .I1(\wr_counter_reg_n_0_[2] ),
        .I2(\wr_counter_reg_n_0_[0] ),
        .I3(\wr_counter_reg_n_0_[1] ),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(\wr_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_counter[3]_i_3 
       (.I0(\wr_counter_reg_n_0_[3] ),
        .I1(\wr_counter_reg_n_0_[1] ),
        .I2(\wr_counter_reg_n_0_[2] ),
        .I3(\wr_counter_reg_n_0_[0] ),
        .O(\wr_counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(wr_counter),
        .D(\wr_counter[0]_i_1_n_0 ),
        .Q(\wr_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(wr_counter),
        .D(\wr_counter[1]_i_1_n_0 ),
        .Q(\wr_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(wr_counter),
        .D(\wr_counter[2]_i_1_n_0 ),
        .Q(\wr_counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(wr_counter),
        .D(\wr_counter[3]_i_2_n_0 ),
        .Q(\wr_counter_reg_n_0_[3] ),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_wrapper
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]dout0;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire rx_valid;
  wire slave_n_1;
  wire slave_n_10;
  wire slave_n_11;
  wire slave_n_21;
  wire slave_n_3;
  wire slave_n_4;
  wire slave_n_5;
  wire slave_n_6;
  wire slave_n_7;
  wire slave_n_8;
  wire slave_n_9;
  wire [7:0]tx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM ram
       (.D(rx_data),
        .E(slave_n_21),
        .Q(tx_data),
        .SR(slave_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dout0(dout0),
        .mem(mem),
        .rx_valid(rx_valid),
        .rx_valid_reg(slave_n_11),
        .rx_valid_reg_0({slave_n_3,slave_n_4,slave_n_5,slave_n_6,slave_n_7,slave_n_8,slave_n_9,slave_n_10}),
        .tx_valid(tx_valid));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI_Slave slave
       (.D(rx_data),
        .E(slave_n_21),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(tx_data),
        .SR(slave_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .\addr_reg[0] (slave_n_11),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dout0(dout0),
        .\dout_reg[7] ({slave_n_3,slave_n_4,slave_n_5,slave_n_6,slave_n_7,slave_n_8,slave_n_9,slave_n_10}),
        .mem(mem),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid));
endmodule
