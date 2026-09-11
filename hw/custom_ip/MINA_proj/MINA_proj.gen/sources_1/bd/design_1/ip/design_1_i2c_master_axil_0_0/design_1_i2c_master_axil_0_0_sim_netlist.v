// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Sep 10 20:56:31 2026
// Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
// Command     : write_verilog -force -mode funcsim
//               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_i2c_master_axil_0_0/design_1_i2c_master_axil_0_0_sim_netlist.v
// Design      : design_1_i2c_master_axil_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2c_master_axil_0_0,i2c_master_axil,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "i2c_master_axil,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_i2c_master_axil_0_0
   (clk,
    rst,
    s_axil_awaddr,
    s_axil_awprot,
    s_axil_awvalid,
    s_axil_awready,
    s_axil_wdata,
    s_axil_wstrb,
    s_axil_wvalid,
    s_axil_wready,
    s_axil_bresp,
    s_axil_bvalid,
    s_axil_bready,
    s_axil_araddr,
    s_axil_arprot,
    s_axil_arvalid,
    s_axil_arready,
    s_axil_rdata,
    s_axil_rresp,
    s_axil_rvalid,
    s_axil_rready,
    i2c_scl_i,
    i2c_scl_o,
    i2c_scl_t,
    i2c_sda_i,
    i2c_sda_o,
    i2c_sda_t);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *) input [2:0]s_axil_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *) input s_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *) output s_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *) input [31:0]s_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *) input [3:0]s_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *) input s_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *) output s_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *) output [1:0]s_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *) output s_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *) input s_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *) input [3:0]s_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *) input [2:0]s_axil_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *) input s_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *) output s_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *) output [31:0]s_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *) output [1:0]s_axil_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *) output s_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *) input s_axil_rready;
  input i2c_scl_i;
  output i2c_scl_o;
  output i2c_scl_t;
  input i2c_sda_i;
  output i2c_sda_o;
  output i2c_sda_t;

  wire \<const0> ;
  wire clk;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_sda_i;
  wire i2c_sda_t;
  wire rst;
  wire [3:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arvalid;
  wire [3:0]s_axil_awaddr;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire s_axil_bvalid;
  wire [15:0]\^s_axil_rdata ;
  wire s_axil_rready;
  wire s_axil_rvalid;
  wire [31:0]s_axil_wdata;
  wire s_axil_wready;
  wire [3:0]s_axil_wstrb;
  wire s_axil_wvalid;

  assign i2c_scl_t = i2c_scl_o;
  assign i2c_sda_o = i2c_sda_t;
  assign s_axil_awready = s_axil_wready;
  assign s_axil_bresp[1] = \<const0> ;
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_rdata[31] = \<const0> ;
  assign s_axil_rdata[30] = \<const0> ;
  assign s_axil_rdata[29] = \<const0> ;
  assign s_axil_rdata[28] = \<const0> ;
  assign s_axil_rdata[27] = \<const0> ;
  assign s_axil_rdata[26] = \<const0> ;
  assign s_axil_rdata[25] = \<const0> ;
  assign s_axil_rdata[24] = \<const0> ;
  assign s_axil_rdata[23] = \<const0> ;
  assign s_axil_rdata[22] = \<const0> ;
  assign s_axil_rdata[21] = \<const0> ;
  assign s_axil_rdata[20] = \<const0> ;
  assign s_axil_rdata[19] = \<const0> ;
  assign s_axil_rdata[18] = \<const0> ;
  assign s_axil_rdata[17] = \<const0> ;
  assign s_axil_rdata[16] = \<const0> ;
  assign s_axil_rdata[15:0] = \^s_axil_rdata [15:0];
  assign s_axil_rresp[1] = \<const0> ;
  assign s_axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_i2c_master_axil_0_0_i2c_master_axil inst
       (.Q(s_axil_bvalid),
        .clk(clk),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_t(i2c_sda_t),
        .rst(rst),
        .s_axil_araddr(s_axil_araddr[3:2]),
        .s_axil_arready(s_axil_arready),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_awaddr(s_axil_awaddr[3:2]),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_bready(s_axil_bready),
        .s_axil_rdata(\^s_axil_rdata ),
        .s_axil_rready(s_axil_rready),
        .s_axil_rvalid_reg_reg_0(s_axil_rvalid),
        .s_axil_wdata(s_axil_wdata[15:0]),
        .s_axil_wready(s_axil_wready),
        .s_axil_wstrb(s_axil_wstrb[1:0]),
        .s_axil_wvalid(s_axil_wvalid));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module design_1_i2c_master_axil_0_0_axis_fifo
   (cmd_valid_int,
    \m_axis_pipe_reg_reg[1][3]_0 ,
    Q,
    cmd_valid_next,
    \wr_ptr_reg_reg[4]_0 ,
    \m_axis_pipe_reg_reg[1][0]_0 ,
    \m_axis_pipe_reg_reg[1][3]_1 ,
    \FSM_onehot_state_reg_reg[6] ,
    \m_axis_pipe_reg_reg[1][3]_2 ,
    D,
    \m_axis_tvalid_pipe_reg_reg[1]_0 ,
    \m_axis_pipe_reg_reg[1][2]_0 ,
    \FSM_onehot_state_reg_reg[5] ,
    \s_axil_awaddr[2] ,
    rst,
    clk,
    cmd_ready_int,
    \FSM_onehot_state_reg[8]_i_2 ,
    cmd_fifo_overflow_reg_reg,
    cmd_start_next,
    cmd_valid_reg,
    bus_active_int,
    \FSM_onehot_state_reg_reg[6]_0 ,
    \FSM_onehot_state_reg_reg[6]_1 ,
    sda_o_reg_i_12_0,
    s_axil_awaddr,
    cmd_fifo_overflow_next5_out,
    cmd_fifo_overflow_reg,
    s_axis_tdata,
    E);
  output cmd_valid_int;
  output \m_axis_pipe_reg_reg[1][3]_0 ;
  output [9:0]Q;
  output cmd_valid_next;
  output \wr_ptr_reg_reg[4]_0 ;
  output \m_axis_pipe_reg_reg[1][0]_0 ;
  output \m_axis_pipe_reg_reg[1][3]_1 ;
  output \FSM_onehot_state_reg_reg[6] ;
  output \m_axis_pipe_reg_reg[1][3]_2 ;
  output [0:0]D;
  output \m_axis_tvalid_pipe_reg_reg[1]_0 ;
  output \m_axis_pipe_reg_reg[1][2]_0 ;
  output \FSM_onehot_state_reg_reg[5] ;
  output \s_axil_awaddr[2] ;
  input rst;
  input clk;
  input cmd_ready_int;
  input [4:0]\FSM_onehot_state_reg[8]_i_2 ;
  input cmd_fifo_overflow_reg_reg;
  input cmd_start_next;
  input cmd_valid_reg;
  input bus_active_int;
  input \FSM_onehot_state_reg_reg[6]_0 ;
  input \FSM_onehot_state_reg_reg[6]_1 ;
  input [3:0]sda_o_reg_i_12_0;
  input [0:0]s_axil_awaddr;
  input cmd_fifo_overflow_next5_out;
  input cmd_fifo_overflow_reg;
  input [11:0]s_axis_tdata;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[6]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[6]_i_5_n_0 ;
  wire \FSM_onehot_state_reg[6]_i_6_n_0 ;
  wire [4:0]\FSM_onehot_state_reg[8]_i_2 ;
  wire \FSM_onehot_state_reg_reg[5] ;
  wire \FSM_onehot_state_reg_reg[6] ;
  wire \FSM_onehot_state_reg_reg[6]_0 ;
  wire \FSM_onehot_state_reg_reg[6]_1 ;
  wire [9:0]Q;
  wire bus_active_int;
  wire clk;
  wire cmd_fifo_overflow_next5_out;
  wire cmd_fifo_overflow_reg;
  wire cmd_fifo_overflow_reg_reg;
  wire cmd_ready_int;
  wire cmd_start_int;
  wire cmd_start_next;
  wire cmd_valid_int;
  wire cmd_valid_next;
  wire cmd_valid_reg;
  wire cmd_write_int;
  wire \m_axis_pipe_reg[0][11]_i_1_n_0 ;
  wire [11:0]\m_axis_pipe_reg_reg[0] ;
  wire \m_axis_pipe_reg_reg[1][0]_0 ;
  wire \m_axis_pipe_reg_reg[1][2]_0 ;
  wire \m_axis_pipe_reg_reg[1][3]_0 ;
  wire \m_axis_pipe_reg_reg[1][3]_1 ;
  wire \m_axis_pipe_reg_reg[1][3]_2 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_1_n_0 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_2_n_0 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_3_n_0 ;
  wire \m_axis_tvalid_pipe_reg[1]_i_1_n_0 ;
  wire \m_axis_tvalid_pipe_reg_reg[1]_0 ;
  wire p_0_in;
  wire [5:5]p_0_in__2;
  wire [5:0]p_0_in__3;
  wire [1:1]p_1_in;
  wire [11:0]p_3_out;
  wire \rd_ptr_reg[0]_i_1_n_0 ;
  wire \rd_ptr_reg[1]_i_1_n_0 ;
  wire \rd_ptr_reg[2]_i_1_n_0 ;
  wire \rd_ptr_reg[3]_i_1_n_0 ;
  wire \rd_ptr_reg[4]_i_1_n_0 ;
  wire \rd_ptr_reg[5]_i_1_n_0 ;
  wire [5:0]rd_ptr_reg_reg;
  wire rst;
  wire [0:0]s_axil_awaddr;
  wire \s_axil_awaddr[2] ;
  wire \s_axil_rdata_reg[9]_i_3_n_0 ;
  wire [11:0]s_axis_tdata;
  wire [3:0]sda_o_reg_i_12_0;
  wire sda_o_reg_i_18_n_0;
  wire \wr_ptr_reg_reg[4]_0 ;
  wire \wr_ptr_reg_reg_n_0_[0] ;
  wire \wr_ptr_reg_reg_n_0_[1] ;
  wire \wr_ptr_reg_reg_n_0_[2] ;
  wire \wr_ptr_reg_reg_n_0_[3] ;
  wire \wr_ptr_reg_reg_n_0_[4] ;
  wire \wr_ptr_reg_reg_n_0_[5] ;
  wire [1:0]NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h000000C0C0C0C080)) 
    \FSM_onehot_state_reg[11]_i_3 
       (.I0(Q[0]),
        .I1(cmd_valid_int),
        .I2(cmd_ready_int),
        .I3(Q[1]),
        .I4(cmd_write_int),
        .I5(Q[2]),
        .O(\m_axis_pipe_reg_reg[1][0]_0 ));
  LUT6 #(
    .INIT(64'h00EE00EE000000E0)) 
    \FSM_onehot_state_reg[2]_i_2 
       (.I0(\m_axis_pipe_reg_reg[1][3]_0 ),
        .I1(\m_axis_pipe_reg_reg[1][3]_2 ),
        .I2(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg[8]_i_2 [3]),
        .I4(\FSM_onehot_state_reg[8]_i_2 [1]),
        .I5(bus_active_int),
        .O(\FSM_onehot_state_reg_reg[6] ));
  LUT6 #(
    .INIT(64'hA9FFFFFFFFFFFFFF)) 
    \FSM_onehot_state_reg[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(cmd_write_int),
        .I3(cmd_ready_int),
        .I4(cmd_valid_int),
        .I5(\FSM_onehot_state_reg[8]_i_2 [0]),
        .O(\FSM_onehot_state_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state_reg[4]_i_2 
       (.I0(\FSM_onehot_state_reg[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg[8]_i_2 [2]),
        .I2(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(\FSM_onehot_state_reg_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state_reg[6]_i_1 
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg[8]_i_2 [2]),
        .I2(\FSM_onehot_state_reg[6]_i_3_n_0 ),
        .O(D));
  LUT5 #(
    .INIT(32'hFFF7777F)) 
    \FSM_onehot_state_reg[6]_i_2 
       (.I0(cmd_valid_int),
        .I1(cmd_ready_int),
        .I2(cmd_write_int),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\m_axis_tvalid_pipe_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state_reg[6]_i_3 
       (.I0(cmd_write_int),
        .I1(\FSM_onehot_state_reg_reg[6]_1 ),
        .I2(\FSM_onehot_state_reg[6]_i_5_n_0 ),
        .I3(\FSM_onehot_state_reg[6]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_reg[6]_0 ),
        .O(\FSM_onehot_state_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    \FSM_onehot_state_reg[6]_i_5 
       (.I0(Q[4]),
        .I1(sda_o_reg_i_12_0[1]),
        .I2(sda_o_reg_i_12_0[3]),
        .I3(Q[9]),
        .I4(Q[5]),
        .I5(sda_o_reg_i_12_0[2]),
        .O(\FSM_onehot_state_reg[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBEBEFFBE)) 
    \FSM_onehot_state_reg[6]_i_6 
       (.I0(cmd_start_int),
        .I1(Q[3]),
        .I2(sda_o_reg_i_12_0[0]),
        .I3(sda_o_reg_i_12_0[1]),
        .I4(Q[4]),
        .O(\FSM_onehot_state_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \FSM_onehot_state_reg[7]_i_2 
       (.I0(Q[2]),
        .I1(cmd_write_int),
        .I2(Q[1]),
        .I3(cmd_ready_int),
        .I4(cmd_valid_int),
        .I5(Q[0]),
        .O(\m_axis_pipe_reg_reg[1][3]_1 ));
  LUT6 #(
    .INIT(64'hA9FFFFFFFFFFFFFF)) 
    \FSM_onehot_state_reg[8]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(cmd_write_int),
        .I3(cmd_ready_int),
        .I4(cmd_valid_int),
        .I5(\FSM_onehot_state_reg[8]_i_2 [4]),
        .O(\m_axis_pipe_reg_reg[1][3]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state_reg[8]_i_5 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg_reg[6]_1 ),
        .I2(\FSM_onehot_state_reg[6]_i_5_n_0 ),
        .I3(\FSM_onehot_state_reg[6]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_reg[6]_0 ),
        .O(\m_axis_pipe_reg_reg[1][3]_2 ));
  LUT5 #(
    .INIT(32'hAAFF2000)) 
    cmd_fifo_overflow_reg_i_1
       (.I0(s_axil_awaddr),
        .I1(cmd_fifo_overflow_reg_reg),
        .I2(\wr_ptr_reg_reg[4]_0 ),
        .I3(cmd_fifo_overflow_next5_out),
        .I4(cmd_fifo_overflow_reg),
        .O(\s_axil_awaddr[2] ));
  LUT4 #(
    .INIT(16'h7444)) 
    cmd_valid_reg_i_1
       (.I0(cmd_fifo_overflow_reg_reg),
        .I1(cmd_start_next),
        .I2(cmd_valid_reg),
        .I3(\wr_ptr_reg_reg[4]_0 ),
        .O(cmd_valid_next));
  LUT3 #(
    .INIT(8'hDF)) 
    \m_axis_pipe_reg[0][11]_i_1 
       (.I0(cmd_valid_int),
        .I1(cmd_ready_int),
        .I2(p_1_in),
        .O(\m_axis_pipe_reg[0][11]_i_1_n_0 ));
  FDRE \m_axis_pipe_reg_reg[0][0] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[0]),
        .Q(\m_axis_pipe_reg_reg[0] [0]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][10] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[10]),
        .Q(\m_axis_pipe_reg_reg[0] [10]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][11] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[11]),
        .Q(\m_axis_pipe_reg_reg[0] [11]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][1] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[1]),
        .Q(\m_axis_pipe_reg_reg[0] [1]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][2] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[2]),
        .Q(\m_axis_pipe_reg_reg[0] [2]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][3] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[3]),
        .Q(\m_axis_pipe_reg_reg[0] [3]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][4] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[4]),
        .Q(\m_axis_pipe_reg_reg[0] [4]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][5] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[5]),
        .Q(\m_axis_pipe_reg_reg[0] [5]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][6] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[6]),
        .Q(\m_axis_pipe_reg_reg[0] [6]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][7] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[7]),
        .Q(\m_axis_pipe_reg_reg[0] [7]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][8] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[8]),
        .Q(\m_axis_pipe_reg_reg[0] [8]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][9] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][11]_i_1_n_0 ),
        .D(p_3_out[9]),
        .Q(\m_axis_pipe_reg_reg[0] [9]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][0] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][10] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [10]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][11] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [11]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][1] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][2] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [2]),
        .Q(cmd_write_int),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][3] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][4] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [4]),
        .Q(cmd_start_int),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][5] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [5]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][6] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [6]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][7] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [7]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][8] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [8]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][9] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_pipe_reg_reg[0] [9]),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF20FFFF)) 
    \m_axis_tvalid_pipe_reg[0]_i_1 
       (.I0(p_1_in),
        .I1(cmd_ready_int),
        .I2(cmd_valid_int),
        .I3(\m_axis_tvalid_pipe_reg[0]_i_2_n_0 ),
        .I4(\m_axis_tvalid_pipe_reg[0]_i_3_n_0 ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \m_axis_tvalid_pipe_reg[0]_i_2 
       (.I0(rd_ptr_reg_reg[3]),
        .I1(\wr_ptr_reg_reg_n_0_[3] ),
        .I2(rd_ptr_reg_reg[4]),
        .I3(\wr_ptr_reg_reg_n_0_[4] ),
        .I4(rd_ptr_reg_reg[5]),
        .I5(\wr_ptr_reg_reg_n_0_[5] ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axis_tvalid_pipe_reg[0]_i_3 
       (.I0(rd_ptr_reg_reg[1]),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .I3(rd_ptr_reg_reg[0]),
        .I4(\wr_ptr_reg_reg_n_0_[2] ),
        .I5(rd_ptr_reg_reg[2]),
        .O(\m_axis_tvalid_pipe_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tvalid_pipe_reg[1]_i_1 
       (.I0(p_1_in),
        .I1(cmd_ready_int),
        .I2(cmd_valid_int),
        .O(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[0]_i_1_n_0 ),
        .Q(p_1_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ),
        .Q(cmd_valid_int),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "design_1_i2c_master_axil_0_0/inst/cmd_fifo_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_31_0_5
       (.ADDRA(rd_ptr_reg_reg[4:0]),
        .ADDRB(rd_ptr_reg_reg[4:0]),
        .ADDRC(rd_ptr_reg_reg[4:0]),
        .ADDRD({\wr_ptr_reg_reg_n_0_[4] ,\wr_ptr_reg_reg_n_0_[3] ,\wr_ptr_reg_reg_n_0_[2] ,\wr_ptr_reg_reg_n_0_[1] ,\wr_ptr_reg_reg_n_0_[0] }),
        .DIA(s_axis_tdata[1:0]),
        .DIB(s_axis_tdata[3:2]),
        .DIC(s_axis_tdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_3_out[1:0]),
        .DOB(p_3_out[3:2]),
        .DOC(p_3_out[5:4]),
        .DOD(NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_31_0_5_i_1
       (.I0(cmd_valid_reg),
        .I1(\wr_ptr_reg_reg[4]_0 ),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "design_1_i2c_master_axil_0_0/inst/cmd_fifo_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M mem_reg_0_31_6_11
       (.ADDRA(rd_ptr_reg_reg[4:0]),
        .ADDRB(rd_ptr_reg_reg[4:0]),
        .ADDRC(rd_ptr_reg_reg[4:0]),
        .ADDRD({\wr_ptr_reg_reg_n_0_[4] ,\wr_ptr_reg_reg_n_0_[3] ,\wr_ptr_reg_reg_n_0_[2] ,\wr_ptr_reg_reg_n_0_[1] ,\wr_ptr_reg_reg_n_0_[0] }),
        .DIA(s_axis_tdata[7:6]),
        .DIB(s_axis_tdata[9:8]),
        .DIC(s_axis_tdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_3_out[7:6]),
        .DOB(p_3_out[9:8]),
        .DOC(p_3_out[11:10]),
        .DOD(NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg[0]_i_1 
       (.I0(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_reg[1]_i_1 
       (.I0(rd_ptr_reg_reg[1]),
        .I1(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr_reg[2]_i_1 
       (.I0(rd_ptr_reg_reg[2]),
        .I1(rd_ptr_reg_reg[0]),
        .I2(rd_ptr_reg_reg[1]),
        .O(\rd_ptr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr_reg[3]_i_1 
       (.I0(rd_ptr_reg_reg[3]),
        .I1(rd_ptr_reg_reg[1]),
        .I2(rd_ptr_reg_reg[0]),
        .I3(rd_ptr_reg_reg[2]),
        .O(\rd_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_ptr_reg[4]_i_1 
       (.I0(rd_ptr_reg_reg[4]),
        .I1(rd_ptr_reg_reg[2]),
        .I2(rd_ptr_reg_reg[0]),
        .I3(rd_ptr_reg_reg[1]),
        .I4(rd_ptr_reg_reg[3]),
        .O(\rd_ptr_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDF00DFDF)) 
    \rd_ptr_reg[5]_i_1 
       (.I0(p_1_in),
        .I1(cmd_ready_int),
        .I2(cmd_valid_int),
        .I3(\m_axis_tvalid_pipe_reg[0]_i_2_n_0 ),
        .I4(\m_axis_tvalid_pipe_reg[0]_i_3_n_0 ),
        .O(\rd_ptr_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rd_ptr_reg[5]_i_2 
       (.I0(rd_ptr_reg_reg[5]),
        .I1(rd_ptr_reg_reg[3]),
        .I2(rd_ptr_reg_reg[1]),
        .I3(rd_ptr_reg_reg[0]),
        .I4(rd_ptr_reg_reg[2]),
        .I5(rd_ptr_reg_reg[4]),
        .O(p_0_in__2));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1_n_0 ),
        .D(\rd_ptr_reg[0]_i_1_n_0 ),
        .Q(rd_ptr_reg_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1_n_0 ),
        .D(\rd_ptr_reg[1]_i_1_n_0 ),
        .Q(rd_ptr_reg_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1_n_0 ),
        .D(\rd_ptr_reg[2]_i_1_n_0 ),
        .Q(rd_ptr_reg_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1_n_0 ),
        .D(\rd_ptr_reg[3]_i_1_n_0 ),
        .Q(rd_ptr_reg_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[4] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1_n_0 ),
        .D(\rd_ptr_reg[4]_i_1_n_0 ),
        .Q(rd_ptr_reg_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[5] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1_n_0 ),
        .D(p_0_in__2),
        .Q(rd_ptr_reg_reg[5]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000200220020000)) 
    \s_axil_rdata_reg[9]_i_2 
       (.I0(\m_axis_tvalid_pipe_reg[0]_i_3_n_0 ),
        .I1(\s_axil_rdata_reg[9]_i_3_n_0 ),
        .I2(\wr_ptr_reg_reg_n_0_[4] ),
        .I3(rd_ptr_reg_reg[4]),
        .I4(\wr_ptr_reg_reg_n_0_[5] ),
        .I5(rd_ptr_reg_reg[5]),
        .O(\wr_ptr_reg_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_axil_rdata_reg[9]_i_3 
       (.I0(\wr_ptr_reg_reg_n_0_[3] ),
        .I1(rd_ptr_reg_reg[3]),
        .O(\s_axil_rdata_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    sda_o_reg_i_12
       (.I0(\FSM_onehot_state_reg_reg[6]_0 ),
        .I1(\FSM_onehot_state_reg[6]_i_6_n_0 ),
        .I2(\FSM_onehot_state_reg[6]_i_5_n_0 ),
        .I3(\FSM_onehot_state_reg_reg[6]_1 ),
        .I4(cmd_write_int),
        .I5(sda_o_reg_i_18_n_0),
        .O(\m_axis_pipe_reg_reg[1][2]_0 ));
  LUT6 #(
    .INIT(64'hA9FFFFFFFFFFFFFF)) 
    sda_o_reg_i_18
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(cmd_write_int),
        .I3(cmd_ready_int),
        .I4(cmd_valid_int),
        .I5(\FSM_onehot_state_reg[8]_i_2 [2]),
        .O(sda_o_reg_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr_reg[0]_i_1__1 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_reg[1]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr_reg[2]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[2] ),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr_reg[3]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[3] ),
        .I1(\wr_ptr_reg_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(\wr_ptr_reg_reg_n_0_[2] ),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_ptr_reg[4]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[4] ),
        .I1(\wr_ptr_reg_reg_n_0_[2] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(\wr_ptr_reg_reg_n_0_[0] ),
        .I4(\wr_ptr_reg_reg_n_0_[3] ),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_ptr_reg[5]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[5] ),
        .I1(\wr_ptr_reg_reg_n_0_[3] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .I3(\wr_ptr_reg_reg_n_0_[1] ),
        .I4(\wr_ptr_reg_reg_n_0_[2] ),
        .I5(\wr_ptr_reg_reg_n_0_[4] ),
        .O(p_0_in__3[5]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_0_in__3[0]),
        .Q(\wr_ptr_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_0_in__3[1]),
        .Q(\wr_ptr_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_0_in__3[2]),
        .Q(\wr_ptr_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_0_in__3[3]),
        .Q(\wr_ptr_reg_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_0_in__3[4]),
        .Q(\wr_ptr_reg_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_0_in__3[5]),
        .Q(\wr_ptr_reg_reg_n_0_[5] ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module design_1_i2c_master_axil_0_0_axis_fifo__parameterized0
   (D,
    \wr_ptr_reg_reg[4]_0 ,
    \s_axil_araddr[2] ,
    rst,
    clk,
    data_out_ready_reg,
    s_axil_araddr,
    Q,
    s_axis_tdata,
    \s_axil_rdata_reg_reg[9] ,
    s_axil_arvalid,
    data_out_ready_reg_reg,
    cmd_valid_int,
    missed_ack_reg,
    bus_active_int,
    bus_control_int,
    busy_int,
    E,
    s_axis);
  output [11:0]D;
  output \wr_ptr_reg_reg[4]_0 ;
  output \s_axil_araddr[2] ;
  input rst;
  input clk;
  input data_out_ready_reg;
  input [1:0]s_axil_araddr;
  input [11:0]Q;
  input [8:0]s_axis_tdata;
  input \s_axil_rdata_reg_reg[9] ;
  input s_axil_arvalid;
  input data_out_ready_reg_reg;
  input cmd_valid_int;
  input missed_ack_reg;
  input bus_active_int;
  input bus_control_int;
  input busy_int;
  input [0:0]E;
  input [8:0]s_axis;

  wire [11:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire bus_active_int;
  wire bus_control_int;
  wire busy_int;
  wire clk;
  wire cmd_valid_int;
  wire data_out_ready_reg;
  wire data_out_ready_reg_reg;
  wire data_out_valid;
  wire \m_axis_pipe_reg[0][8]_i_1__0_n_0 ;
  wire \m_axis_pipe_reg[1][8]_i_1__0_n_0 ;
  wire \m_axis_pipe_reg_reg_n_0_[0][0] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][1] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][2] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][3] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][4] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][5] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][6] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][7] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][8] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][0] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][1] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][2] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][3] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][4] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][5] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][6] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][7] ;
  wire \m_axis_pipe_reg_reg_n_0_[1][8] ;
  wire \m_axis_tvalid_pipe_reg[0]_i_1__1_n_0 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_2__1_n_0 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_3__1_n_0 ;
  wire \m_axis_tvalid_pipe_reg[1]_i_1_n_0 ;
  wire missed_ack_reg;
  wire [5:5]p_0_in__6;
  wire [5:0]p_0_in__7;
  wire [1:1]p_1_in;
  wire [8:0]p_3_out__1;
  wire \rd_ptr_reg[0]_i_1__1_n_0 ;
  wire \rd_ptr_reg[1]_i_1__1_n_0 ;
  wire \rd_ptr_reg[2]_i_1__1_n_0 ;
  wire \rd_ptr_reg[3]_i_1__1_n_0 ;
  wire \rd_ptr_reg[4]_i_1__1_n_0 ;
  wire \rd_ptr_reg[5]_i_1__1_n_0 ;
  wire [5:0]rd_ptr_reg_reg;
  wire rst;
  wire [1:0]s_axil_araddr;
  wire \s_axil_araddr[2] ;
  wire s_axil_arvalid;
  wire \s_axil_rdata_reg[15]_i_3_n_0 ;
  wire \s_axil_rdata_reg_reg[9] ;
  wire [8:0]s_axis;
  wire [8:0]s_axis_tdata;
  wire \wr_ptr_reg_reg[4]_0 ;
  wire \wr_ptr_reg_reg_n_0_[0] ;
  wire \wr_ptr_reg_reg_n_0_[1] ;
  wire \wr_ptr_reg_reg_n_0_[2] ;
  wire \wr_ptr_reg_reg_n_0_[3] ;
  wire \wr_ptr_reg_reg_n_0_[4] ;
  wire \wr_ptr_reg_reg_n_0_[5] ;
  wire [1:0]NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000004000)) 
    data_out_ready_reg_i_1
       (.I0(s_axil_araddr[0]),
        .I1(data_out_valid),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_arvalid),
        .I4(data_out_ready_reg_reg),
        .I5(rst),
        .O(\s_axil_araddr[2] ));
  LUT3 #(
    .INIT(8'hDF)) 
    \m_axis_pipe_reg[0][8]_i_1__0 
       (.I0(data_out_valid),
        .I1(data_out_ready_reg),
        .I2(p_1_in),
        .O(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_pipe_reg[1][8]_i_1__0 
       (.I0(data_out_ready_reg),
        .I1(data_out_valid),
        .O(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ));
  FDRE \m_axis_pipe_reg_reg[0][0] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[0]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][1] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[1]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][2] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[2]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][3] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[3]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][4] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[4]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][5] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[5]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][6] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[6]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][7] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[7]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][8] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1__0_n_0 ),
        .D(p_3_out__1[8]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][0] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][0] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][1] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][1] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][2] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][2] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][3] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][3] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][4] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][4] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][5] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][5] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][6] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][6] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][7] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][7] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][8] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[1][8]_i_1__0_n_0 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][8] ),
        .Q(\m_axis_pipe_reg_reg_n_0_[1][8] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFF20FFFF)) 
    \m_axis_tvalid_pipe_reg[0]_i_1__1 
       (.I0(p_1_in),
        .I1(data_out_ready_reg),
        .I2(data_out_valid),
        .I3(\m_axis_tvalid_pipe_reg[0]_i_2__1_n_0 ),
        .I4(\m_axis_tvalid_pipe_reg[0]_i_3__1_n_0 ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \m_axis_tvalid_pipe_reg[0]_i_2__1 
       (.I0(rd_ptr_reg_reg[3]),
        .I1(\wr_ptr_reg_reg_n_0_[3] ),
        .I2(rd_ptr_reg_reg[4]),
        .I3(\wr_ptr_reg_reg_n_0_[4] ),
        .I4(rd_ptr_reg_reg[5]),
        .I5(\wr_ptr_reg_reg_n_0_[5] ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axis_tvalid_pipe_reg[0]_i_3__1 
       (.I0(rd_ptr_reg_reg[0]),
        .I1(\wr_ptr_reg_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(rd_ptr_reg_reg[1]),
        .I4(\wr_ptr_reg_reg_n_0_[2] ),
        .I5(rd_ptr_reg_reg[2]),
        .O(\m_axis_tvalid_pipe_reg[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tvalid_pipe_reg[1]_i_1 
       (.I0(p_1_in),
        .I1(data_out_ready_reg),
        .I2(data_out_valid),
        .O(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[0]_i_1__1_n_0 ),
        .Q(p_1_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ),
        .Q(data_out_valid),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "design_1_i2c_master_axil_0_0/inst/read_fifo_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_31_0_5
       (.ADDRA(rd_ptr_reg_reg[4:0]),
        .ADDRB(rd_ptr_reg_reg[4:0]),
        .ADDRC(rd_ptr_reg_reg[4:0]),
        .ADDRD({\wr_ptr_reg_reg_n_0_[4] ,\wr_ptr_reg_reg_n_0_[3] ,\wr_ptr_reg_reg_n_0_[2] ,\wr_ptr_reg_reg_n_0_[1] ,\wr_ptr_reg_reg_n_0_[0] }),
        .DIA(s_axis[1:0]),
        .DIB(s_axis[3:2]),
        .DIC(s_axis[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_3_out__1[1:0]),
        .DOB(p_3_out__1[3:2]),
        .DOC(p_3_out__1[5:4]),
        .DOD(NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "design_1_i2c_master_axil_0_0/inst/read_fifo_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM32M mem_reg_0_31_6_8
       (.ADDRA(rd_ptr_reg_reg[4:0]),
        .ADDRB(rd_ptr_reg_reg[4:0]),
        .ADDRC(rd_ptr_reg_reg[4:0]),
        .ADDRD({\wr_ptr_reg_reg_n_0_[4] ,\wr_ptr_reg_reg_n_0_[3] ,\wr_ptr_reg_reg_n_0_[2] ,\wr_ptr_reg_reg_n_0_[1] ,\wr_ptr_reg_reg_n_0_[0] }),
        .DIA(s_axis[7:6]),
        .DIB({1'b0,s_axis[8]}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_3_out__1[7:6]),
        .DOB({NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED[1],p_3_out__1[8]}),
        .DOC(NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg[0]_i_1__1 
       (.I0(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_reg[1]_i_1__1 
       (.I0(rd_ptr_reg_reg[1]),
        .I1(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr_reg[2]_i_1__1 
       (.I0(rd_ptr_reg_reg[2]),
        .I1(rd_ptr_reg_reg[0]),
        .I2(rd_ptr_reg_reg[1]),
        .O(\rd_ptr_reg[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr_reg[3]_i_1__1 
       (.I0(rd_ptr_reg_reg[3]),
        .I1(rd_ptr_reg_reg[1]),
        .I2(rd_ptr_reg_reg[0]),
        .I3(rd_ptr_reg_reg[2]),
        .O(\rd_ptr_reg[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_ptr_reg[4]_i_1__1 
       (.I0(rd_ptr_reg_reg[4]),
        .I1(rd_ptr_reg_reg[2]),
        .I2(rd_ptr_reg_reg[0]),
        .I3(rd_ptr_reg_reg[1]),
        .I4(rd_ptr_reg_reg[3]),
        .O(\rd_ptr_reg[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hDF00DFDF)) 
    \rd_ptr_reg[5]_i_1__1 
       (.I0(p_1_in),
        .I1(data_out_ready_reg),
        .I2(data_out_valid),
        .I3(\m_axis_tvalid_pipe_reg[0]_i_2__1_n_0 ),
        .I4(\m_axis_tvalid_pipe_reg[0]_i_3__1_n_0 ),
        .O(\rd_ptr_reg[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rd_ptr_reg[5]_i_2__1 
       (.I0(rd_ptr_reg_reg[5]),
        .I1(rd_ptr_reg_reg[3]),
        .I2(rd_ptr_reg_reg[1]),
        .I3(rd_ptr_reg_reg[0]),
        .I4(rd_ptr_reg_reg[2]),
        .I5(rd_ptr_reg_reg[4]),
        .O(p_0_in__6));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__1_n_0 ),
        .D(\rd_ptr_reg[0]_i_1__1_n_0 ),
        .Q(rd_ptr_reg_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__1_n_0 ),
        .D(\rd_ptr_reg[1]_i_1__1_n_0 ),
        .Q(rd_ptr_reg_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__1_n_0 ),
        .D(\rd_ptr_reg[2]_i_1__1_n_0 ),
        .Q(rd_ptr_reg_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__1_n_0 ),
        .D(\rd_ptr_reg[3]_i_1__1_n_0 ),
        .Q(rd_ptr_reg_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[4] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__1_n_0 ),
        .D(\rd_ptr_reg[4]_i_1__1_n_0 ),
        .Q(rd_ptr_reg_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[5] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__1_n_0 ),
        .D(p_0_in__6),
        .Q(rd_ptr_reg_reg[5]),
        .R(rst));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][0] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axis_tdata[2]),
        .I4(s_axil_araddr[0]),
        .I5(busy_int),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hC101)) 
    \s_axil_rdata_reg[14]_i_1 
       (.I0(data_out_valid),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(Q[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hC202)) 
    \s_axil_rdata_reg[15]_i_1 
       (.I0(\wr_ptr_reg_reg[4]_0 ),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(Q[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000200220020000)) 
    \s_axil_rdata_reg[15]_i_2 
       (.I0(\m_axis_tvalid_pipe_reg[0]_i_3__1_n_0 ),
        .I1(\s_axil_rdata_reg[15]_i_3_n_0 ),
        .I2(\wr_ptr_reg_reg_n_0_[4] ),
        .I3(rd_ptr_reg_reg[4]),
        .I4(\wr_ptr_reg_reg_n_0_[5] ),
        .I5(rd_ptr_reg_reg[5]),
        .O(\wr_ptr_reg_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_axil_rdata_reg[15]_i_3 
       (.I0(\wr_ptr_reg_reg_n_0_[3] ),
        .I1(rd_ptr_reg_reg[3]),
        .O(\s_axil_rdata_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][1] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axis_tdata[3]),
        .I4(s_axil_araddr[0]),
        .I5(bus_control_int),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][2] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axis_tdata[4]),
        .I4(s_axil_araddr[0]),
        .I5(bus_active_int),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][3] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axis_tdata[5]),
        .I4(s_axil_araddr[0]),
        .I5(missed_ack_reg),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axil_rdata_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][4] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .I4(s_axis_tdata[6]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axil_rdata_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][5] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .I4(s_axis_tdata[7]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axil_rdata_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][6] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .I4(s_axis_tdata[8]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s_axil_rdata_reg[7]_i_1 
       (.I0(\m_axis_pipe_reg_reg_n_0_[1][7] ),
        .I1(s_axil_araddr[0]),
        .I2(Q[7]),
        .I3(s_axil_araddr[1]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFAAF03300AAF033)) 
    \s_axil_rdata_reg[8]_i_1 
       (.I0(data_out_valid),
        .I1(cmd_valid_int),
        .I2(s_axis_tdata[1]),
        .I3(s_axil_araddr[0]),
        .I4(s_axil_araddr[1]),
        .I5(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata_reg[9]_i_1 
       (.I0(Q[9]),
        .I1(\m_axis_pipe_reg_reg_n_0_[1][8] ),
        .I2(s_axil_araddr[1]),
        .I3(s_axis_tdata[0]),
        .I4(s_axil_araddr[0]),
        .I5(\s_axil_rdata_reg_reg[9] ),
        .O(D[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr_reg[0]_i_1__0 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .O(p_0_in__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_reg[1]_i_1__1 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .O(p_0_in__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr_reg[2]_i_1__1 
       (.I0(\wr_ptr_reg_reg_n_0_[2] ),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .O(p_0_in__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr_reg[3]_i_1__1 
       (.I0(\wr_ptr_reg_reg_n_0_[3] ),
        .I1(\wr_ptr_reg_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(\wr_ptr_reg_reg_n_0_[2] ),
        .O(p_0_in__7[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_ptr_reg[4]_i_1__1 
       (.I0(\wr_ptr_reg_reg_n_0_[4] ),
        .I1(\wr_ptr_reg_reg_n_0_[2] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(\wr_ptr_reg_reg_n_0_[0] ),
        .I4(\wr_ptr_reg_reg_n_0_[3] ),
        .O(p_0_in__7[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_ptr_reg[5]_i_1__1 
       (.I0(\wr_ptr_reg_reg_n_0_[5] ),
        .I1(\wr_ptr_reg_reg_n_0_[3] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .I3(\wr_ptr_reg_reg_n_0_[1] ),
        .I4(\wr_ptr_reg_reg_n_0_[2] ),
        .I5(\wr_ptr_reg_reg_n_0_[4] ),
        .O(p_0_in__7[5]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__7[0]),
        .Q(\wr_ptr_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__7[1]),
        .Q(\wr_ptr_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__7[2]),
        .Q(\wr_ptr_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__7[3]),
        .Q(\wr_ptr_reg_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__7[4]),
        .Q(\wr_ptr_reg_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__7[5]),
        .Q(\wr_ptr_reg_reg_n_0_[5] ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0
   (data_in_valid_int,
    D,
    data_in_valid_next,
    \s_axil_awaddr[3] ,
    \m_axis_pipe_reg_reg[1][8]_0 ,
    rst,
    clk,
    data_in_ready_int,
    Q,
    s_axil_araddr,
    s_axis_tdata,
    E,
    data_in_valid_reg,
    s_axil_awaddr,
    write_fifo_overflow_next1_out,
    write_fifo_overflow_reg,
    s_axis,
    \m_axis_pipe_reg_reg[1][8]_1 );
  output data_in_valid_int;
  output [1:0]D;
  output data_in_valid_next;
  output \s_axil_awaddr[3] ;
  output [8:0]\m_axis_pipe_reg_reg[1][8]_0 ;
  input rst;
  input clk;
  input data_in_ready_int;
  input [1:0]Q;
  input [1:0]s_axil_araddr;
  input [1:0]s_axis_tdata;
  input [0:0]E;
  input data_in_valid_reg;
  input [0:0]s_axil_awaddr;
  input write_fifo_overflow_next1_out;
  input write_fifo_overflow_reg;
  input [8:0]s_axis;
  input [0:0]\m_axis_pipe_reg_reg[1][8]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire data_in_ready_int;
  wire data_in_valid_int;
  wire data_in_valid_next;
  wire data_in_valid_reg;
  wire \m_axis_pipe_reg[0][8]_i_1_n_0 ;
  wire [8:0]\m_axis_pipe_reg_reg[1][8]_0 ;
  wire [0:0]\m_axis_pipe_reg_reg[1][8]_1 ;
  wire \m_axis_pipe_reg_reg_n_0_[0][0] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][1] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][2] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][3] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][4] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][5] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][6] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][7] ;
  wire \m_axis_pipe_reg_reg_n_0_[0][8] ;
  wire \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_2__0_n_0 ;
  wire \m_axis_tvalid_pipe_reg[0]_i_3__0_n_0 ;
  wire \m_axis_tvalid_pipe_reg[1]_i_1_n_0 ;
  wire p_0_in__0;
  wire [5:5]p_0_in__4;
  wire [5:0]p_0_in__5;
  wire [1:1]p_1_in;
  wire [8:0]p_3_out__0;
  wire \rd_ptr_reg[0]_i_1__0_n_0 ;
  wire \rd_ptr_reg[1]_i_1__0_n_0 ;
  wire \rd_ptr_reg[2]_i_1__0_n_0 ;
  wire \rd_ptr_reg[3]_i_1__0_n_0 ;
  wire \rd_ptr_reg[4]_i_1__0_n_0 ;
  wire \rd_ptr_reg[5]_i_1__0_n_0 ;
  wire [5:0]rd_ptr_reg_reg;
  wire rst;
  wire [1:0]s_axil_araddr;
  wire [0:0]s_axil_awaddr;
  wire \s_axil_awaddr[3] ;
  wire \s_axil_rdata_reg[12]_i_2_n_0 ;
  wire \s_axil_rdata_reg[12]_i_3_n_0 ;
  wire [8:0]s_axis;
  wire [1:0]s_axis_tdata;
  wire \wr_ptr_reg_reg_n_0_[0] ;
  wire \wr_ptr_reg_reg_n_0_[1] ;
  wire \wr_ptr_reg_reg_n_0_[2] ;
  wire \wr_ptr_reg_reg_n_0_[3] ;
  wire \wr_ptr_reg_reg_n_0_[4] ;
  wire \wr_ptr_reg_reg_n_0_[5] ;
  wire write_fifo_overflow_next1_out;
  wire write_fifo_overflow_reg;
  wire [1:0]NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED;

  LUT3 #(
    .INIT(8'hEA)) 
    data_in_valid_reg_i_1
       (.I0(E),
        .I1(\s_axil_rdata_reg[12]_i_2_n_0 ),
        .I2(data_in_valid_reg),
        .O(data_in_valid_next));
  LUT3 #(
    .INIT(8'hDF)) 
    \m_axis_pipe_reg[0][8]_i_1 
       (.I0(data_in_valid_int),
        .I1(data_in_ready_int),
        .I2(p_1_in),
        .O(\m_axis_pipe_reg[0][8]_i_1_n_0 ));
  FDRE \m_axis_pipe_reg_reg[0][0] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[0]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][1] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[1]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][2] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[2]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][3] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[3]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][4] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[4]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][5] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[5]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][6] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[6]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][7] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[7]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[0][8] 
       (.C(clk),
        .CE(\m_axis_pipe_reg[0][8]_i_1_n_0 ),
        .D(p_3_out__0[8]),
        .Q(\m_axis_pipe_reg_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][0] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][0] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [0]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][1] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][1] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [1]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][2] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][2] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [2]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][3] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][3] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [3]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][4] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][4] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [4]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][5] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][5] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [5]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][6] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][6] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [6]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][7] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][7] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [7]),
        .R(1'b0));
  FDRE \m_axis_pipe_reg_reg[1][8] 
       (.C(clk),
        .CE(\m_axis_pipe_reg_reg[1][8]_1 ),
        .D(\m_axis_pipe_reg_reg_n_0_[0][8] ),
        .Q(\m_axis_pipe_reg_reg[1][8]_0 [8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFF20FFFF)) 
    \m_axis_tvalid_pipe_reg[0]_i_1__0 
       (.I0(p_1_in),
        .I1(data_in_ready_int),
        .I2(data_in_valid_int),
        .I3(\m_axis_tvalid_pipe_reg[0]_i_2__0_n_0 ),
        .I4(\m_axis_tvalid_pipe_reg[0]_i_3__0_n_0 ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \m_axis_tvalid_pipe_reg[0]_i_2__0 
       (.I0(rd_ptr_reg_reg[3]),
        .I1(\wr_ptr_reg_reg_n_0_[3] ),
        .I2(rd_ptr_reg_reg[4]),
        .I3(\wr_ptr_reg_reg_n_0_[4] ),
        .I4(rd_ptr_reg_reg[5]),
        .I5(\wr_ptr_reg_reg_n_0_[5] ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axis_tvalid_pipe_reg[0]_i_3__0 
       (.I0(rd_ptr_reg_reg[0]),
        .I1(\wr_ptr_reg_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(rd_ptr_reg_reg[1]),
        .I4(\wr_ptr_reg_reg_n_0_[2] ),
        .I5(rd_ptr_reg_reg[2]),
        .O(\m_axis_tvalid_pipe_reg[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tvalid_pipe_reg[1]_i_1 
       (.I0(p_1_in),
        .I1(data_in_ready_int),
        .I2(data_in_valid_int),
        .O(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[0]_i_1__0_n_0 ),
        .Q(p_1_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ),
        .Q(data_in_valid_int),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "design_1_i2c_master_axil_0_0/inst/write_fifo_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_31_0_5
       (.ADDRA(rd_ptr_reg_reg[4:0]),
        .ADDRB(rd_ptr_reg_reg[4:0]),
        .ADDRC(rd_ptr_reg_reg[4:0]),
        .ADDRD({\wr_ptr_reg_reg_n_0_[4] ,\wr_ptr_reg_reg_n_0_[3] ,\wr_ptr_reg_reg_n_0_[2] ,\wr_ptr_reg_reg_n_0_[1] ,\wr_ptr_reg_reg_n_0_[0] }),
        .DIA(s_axis[1:0]),
        .DIB(s_axis[3:2]),
        .DIC(s_axis[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_3_out__0[1:0]),
        .DOB(p_3_out__0[3:2]),
        .DOC(p_3_out__0[5:4]),
        .DOD(NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_31_0_5_i_1__0
       (.I0(data_in_valid_reg),
        .I1(\s_axil_rdata_reg[12]_i_2_n_0 ),
        .O(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "design_1_i2c_master_axil_0_0/inst/write_fifo_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM32M mem_reg_0_31_6_8
       (.ADDRA(rd_ptr_reg_reg[4:0]),
        .ADDRB(rd_ptr_reg_reg[4:0]),
        .ADDRC(rd_ptr_reg_reg[4:0]),
        .ADDRD({\wr_ptr_reg_reg_n_0_[4] ,\wr_ptr_reg_reg_n_0_[3] ,\wr_ptr_reg_reg_n_0_[2] ,\wr_ptr_reg_reg_n_0_[1] ,\wr_ptr_reg_reg_n_0_[0] }),
        .DIA(s_axis[7:6]),
        .DIB({1'b0,s_axis[8]}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_3_out__0[7:6]),
        .DOB({NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED[1],p_3_out__0[8]}),
        .DOC(NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__0));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg[0]_i_1__0 
       (.I0(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_reg[1]_i_1__0 
       (.I0(rd_ptr_reg_reg[1]),
        .I1(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr_reg[2]_i_1__0 
       (.I0(rd_ptr_reg_reg[2]),
        .I1(rd_ptr_reg_reg[0]),
        .I2(rd_ptr_reg_reg[1]),
        .O(\rd_ptr_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr_reg[3]_i_1__0 
       (.I0(rd_ptr_reg_reg[3]),
        .I1(rd_ptr_reg_reg[1]),
        .I2(rd_ptr_reg_reg[0]),
        .I3(rd_ptr_reg_reg[2]),
        .O(\rd_ptr_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_ptr_reg[4]_i_1__0 
       (.I0(rd_ptr_reg_reg[4]),
        .I1(rd_ptr_reg_reg[2]),
        .I2(rd_ptr_reg_reg[0]),
        .I3(rd_ptr_reg_reg[1]),
        .I4(rd_ptr_reg_reg[3]),
        .O(\rd_ptr_reg[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hDF00DFDF)) 
    \rd_ptr_reg[5]_i_1__0 
       (.I0(p_1_in),
        .I1(data_in_ready_int),
        .I2(data_in_valid_int),
        .I3(\m_axis_tvalid_pipe_reg[0]_i_2__0_n_0 ),
        .I4(\m_axis_tvalid_pipe_reg[0]_i_3__0_n_0 ),
        .O(\rd_ptr_reg[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rd_ptr_reg[5]_i_2__0 
       (.I0(rd_ptr_reg_reg[5]),
        .I1(rd_ptr_reg_reg[3]),
        .I2(rd_ptr_reg_reg[1]),
        .I3(rd_ptr_reg_reg[0]),
        .I4(rd_ptr_reg_reg[2]),
        .I5(rd_ptr_reg_reg[4]),
        .O(p_0_in__4));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__0_n_0 ),
        .D(\rd_ptr_reg[0]_i_1__0_n_0 ),
        .Q(rd_ptr_reg_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__0_n_0 ),
        .D(\rd_ptr_reg[1]_i_1__0_n_0 ),
        .Q(rd_ptr_reg_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__0_n_0 ),
        .D(\rd_ptr_reg[2]_i_1__0_n_0 ),
        .Q(rd_ptr_reg_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__0_n_0 ),
        .D(\rd_ptr_reg[3]_i_1__0_n_0 ),
        .Q(rd_ptr_reg_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[4] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__0_n_0 ),
        .D(\rd_ptr_reg[4]_i_1__0_n_0 ),
        .Q(rd_ptr_reg_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[5] 
       (.C(clk),
        .CE(\rd_ptr_reg[5]_i_1__0_n_0 ),
        .D(p_0_in__4),
        .Q(rd_ptr_reg_reg[5]),
        .R(rst));
  LUT5 #(
    .INIT(32'hF0C500C5)) 
    \s_axil_rdata_reg[11]_i_1 
       (.I0(data_in_valid_int),
        .I1(s_axis_tdata[1]),
        .I2(s_axil_araddr[0]),
        .I3(s_axil_araddr[1]),
        .I4(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s_axil_rdata_reg[12]_i_1 
       (.I0(Q[1]),
        .I1(s_axil_araddr[1]),
        .I2(s_axis_tdata[0]),
        .I3(s_axil_araddr[0]),
        .I4(\s_axil_rdata_reg[12]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000200220020000)) 
    \s_axil_rdata_reg[12]_i_2 
       (.I0(\m_axis_tvalid_pipe_reg[0]_i_3__0_n_0 ),
        .I1(\s_axil_rdata_reg[12]_i_3_n_0 ),
        .I2(\wr_ptr_reg_reg_n_0_[4] ),
        .I3(rd_ptr_reg_reg[4]),
        .I4(\wr_ptr_reg_reg_n_0_[5] ),
        .I5(rd_ptr_reg_reg[5]),
        .O(\s_axil_rdata_reg[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_axil_rdata_reg[12]_i_3 
       (.I0(\wr_ptr_reg_reg_n_0_[3] ),
        .I1(rd_ptr_reg_reg[3]),
        .O(\s_axil_rdata_reg[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr_reg[0]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_reg[1]_i_1__0 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr_reg[2]_i_1__0 
       (.I0(\wr_ptr_reg_reg_n_0_[2] ),
        .I1(\wr_ptr_reg_reg_n_0_[1] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr_reg[3]_i_1__0 
       (.I0(\wr_ptr_reg_reg_n_0_[3] ),
        .I1(\wr_ptr_reg_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(\wr_ptr_reg_reg_n_0_[2] ),
        .O(p_0_in__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_ptr_reg[4]_i_1__0 
       (.I0(\wr_ptr_reg_reg_n_0_[4] ),
        .I1(\wr_ptr_reg_reg_n_0_[2] ),
        .I2(\wr_ptr_reg_reg_n_0_[1] ),
        .I3(\wr_ptr_reg_reg_n_0_[0] ),
        .I4(\wr_ptr_reg_reg_n_0_[3] ),
        .O(p_0_in__5[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_ptr_reg[5]_i_1__0 
       (.I0(\wr_ptr_reg_reg_n_0_[5] ),
        .I1(\wr_ptr_reg_reg_n_0_[3] ),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .I3(\wr_ptr_reg_reg_n_0_[1] ),
        .I4(\wr_ptr_reg_reg_n_0_[2] ),
        .I5(\wr_ptr_reg_reg_n_0_[4] ),
        .O(p_0_in__5[5]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[0] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(p_0_in__5[0]),
        .Q(\wr_ptr_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[1] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(p_0_in__5[1]),
        .Q(\wr_ptr_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[2] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(p_0_in__5[2]),
        .Q(\wr_ptr_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[3] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(p_0_in__5[3]),
        .Q(\wr_ptr_reg_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[4] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(p_0_in__5[4]),
        .Q(\wr_ptr_reg_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[5] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(p_0_in__5[5]),
        .Q(\wr_ptr_reg_reg_n_0_[5] ),
        .R(rst));
  LUT4 #(
    .INIT(16'hAF80)) 
    write_fifo_overflow_reg_i_1
       (.I0(s_axil_awaddr),
        .I1(\s_axil_rdata_reg[12]_i_2_n_0 ),
        .I2(write_fifo_overflow_next1_out),
        .I3(write_fifo_overflow_reg),
        .O(\s_axil_awaddr[3] ));
endmodule

(* ORIG_REF_NAME = "i2c_master" *) 
module design_1_i2c_master_axil_0_0_i2c_master
   (busy_int,
    bus_active_int,
    i2c_sda_t,
    i2c_scl_o,
    data_in_ready_int,
    cmd_ready_int,
    bus_control_int,
    s_axis,
    E,
    s_axis_data_tready_reg_reg_0,
    m_axis_data_tvalid_reg_reg_0,
    \FSM_onehot_state_reg_reg[11]_0 ,
    \addr_reg_reg[4]_0 ,
    \addr_reg_reg[6]_0 ,
    \addr_reg_reg[3]_0 ,
    missed_ack_next,
    rst,
    clk,
    i2c_sda_i,
    i2c_scl_i,
    Q,
    cmd_valid_int,
    data_in_valid_int,
    m_axis_data_tvalid_reg_reg_1,
    \FSM_onehot_state_reg_reg[4]_0 ,
    \bit_count_reg_reg[0]_0 ,
    \FSM_onehot_state_reg_reg[8]_0 ,
    \FSM_onehot_state_reg_reg[8]_1 ,
    \FSM_onehot_state_reg_reg[0]_0 ,
    \FSM_onehot_state_reg_reg[5]_0 ,
    \FSM_onehot_state_reg_reg[11]_1 ,
    sda_o_reg_i_2_0,
    \delay_reg_reg[15]_0 ,
    missed_ack_reg_reg_0,
    s_axil_wdata,
    s_axil_awaddr,
    s_axil_wstrb,
    missed_ack_reg,
    last_reg_reg_0,
    D);
  output busy_int;
  output bus_active_int;
  output i2c_sda_t;
  output i2c_scl_o;
  output data_in_ready_int;
  output cmd_ready_int;
  output bus_control_int;
  output [8:0]s_axis;
  output [0:0]E;
  output [0:0]s_axis_data_tready_reg_reg_0;
  output [0:0]m_axis_data_tvalid_reg_reg_0;
  output [4:0]\FSM_onehot_state_reg_reg[11]_0 ;
  output \addr_reg_reg[4]_0 ;
  output [3:0]\addr_reg_reg[6]_0 ;
  output \addr_reg_reg[3]_0 ;
  output missed_ack_next;
  input rst;
  input clk;
  input i2c_sda_i;
  input i2c_scl_i;
  input [9:0]Q;
  input cmd_valid_int;
  input data_in_valid_int;
  input m_axis_data_tvalid_reg_reg_1;
  input \FSM_onehot_state_reg_reg[4]_0 ;
  input \bit_count_reg_reg[0]_0 ;
  input \FSM_onehot_state_reg_reg[8]_0 ;
  input \FSM_onehot_state_reg_reg[8]_1 ;
  input \FSM_onehot_state_reg_reg[0]_0 ;
  input \FSM_onehot_state_reg_reg[5]_0 ;
  input \FSM_onehot_state_reg_reg[11]_1 ;
  input sda_o_reg_i_2_0;
  input [15:0]\delay_reg_reg[15]_0 ;
  input missed_ack_reg_reg_0;
  input [0:0]s_axil_wdata;
  input [0:0]s_axil_awaddr;
  input [0:0]s_axil_wstrb;
  input missed_ack_reg;
  input [8:0]last_reg_reg_0;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[10]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[11]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[8]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[8]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_reg[0]_0 ;
  wire [4:0]\FSM_onehot_state_reg_reg[11]_0 ;
  wire \FSM_onehot_state_reg_reg[11]_1 ;
  wire \FSM_onehot_state_reg_reg[4]_0 ;
  wire \FSM_onehot_state_reg_reg[5]_0 ;
  wire \FSM_onehot_state_reg_reg[8]_0 ;
  wire \FSM_onehot_state_reg_reg[8]_1 ;
  wire \FSM_onehot_state_reg_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_reg_n_0_[9] ;
  wire \FSM_sequential_phy_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_phy_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_phy_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_phy_state_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_phy_state_reg[0]_i_5_n_0 ;
  wire \FSM_sequential_phy_state_reg[0]_i_6_n_0 ;
  wire \FSM_sequential_phy_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_phy_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_phy_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_phy_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_phy_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_10_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_11_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_12_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_4_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_5_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_6_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_7_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_8_n_0 ;
  wire \FSM_sequential_phy_state_reg[3]_i_9_n_0 ;
  wire [9:0]Q;
  wire [5:3]addr_reg;
  wire \addr_reg[6]_i_1_n_0 ;
  wire \addr_reg_reg[3]_0 ;
  wire \addr_reg_reg[4]_0 ;
  wire [3:0]\addr_reg_reg[6]_0 ;
  wire [3:0]bit_count_next;
  wire \bit_count_reg[3]_i_1_n_0 ;
  wire \bit_count_reg[3]_i_3_n_0 ;
  wire \bit_count_reg[3]_i_4_n_0 ;
  wire \bit_count_reg[3]_i_5_n_0 ;
  wire \bit_count_reg[3]_i_6_n_0 ;
  wire \bit_count_reg_reg[0]_0 ;
  wire \bit_count_reg_reg_n_0_[0] ;
  wire \bit_count_reg_reg_n_0_[1] ;
  wire \bit_count_reg_reg_n_0_[2] ;
  wire \bit_count_reg_reg_n_0_[3] ;
  wire bus_active_int;
  wire bus_active_reg_i_1_n_0;
  wire bus_control_int;
  wire bus_control_reg_i_1_n_0;
  wire busy_int;
  wire busy_reg0;
  wire clk;
  wire cmd_ready_int;
  wire cmd_valid_int;
  wire data0;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data_in_ready_int;
  wire data_in_valid_int;
  wire data_out_valid_int;
  wire \data_reg[0]_i_1_n_0 ;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire [16:1]delay_next0;
  wire delay_next0_carry__0_i_1_n_0;
  wire delay_next0_carry__0_i_2_n_0;
  wire delay_next0_carry__0_i_3_n_0;
  wire delay_next0_carry__0_i_4_n_0;
  wire delay_next0_carry__0_n_0;
  wire delay_next0_carry__0_n_1;
  wire delay_next0_carry__0_n_2;
  wire delay_next0_carry__0_n_3;
  wire delay_next0_carry__1_i_1_n_0;
  wire delay_next0_carry__1_i_2_n_0;
  wire delay_next0_carry__1_i_3_n_0;
  wire delay_next0_carry__1_i_4_n_0;
  wire delay_next0_carry__1_n_0;
  wire delay_next0_carry__1_n_1;
  wire delay_next0_carry__1_n_2;
  wire delay_next0_carry__1_n_3;
  wire delay_next0_carry__2_i_1_n_0;
  wire delay_next0_carry__2_i_2_n_0;
  wire delay_next0_carry__2_i_3_n_0;
  wire delay_next0_carry__2_i_4_n_0;
  wire delay_next0_carry__2_n_1;
  wire delay_next0_carry__2_n_2;
  wire delay_next0_carry__2_n_3;
  wire delay_next0_carry_i_1_n_0;
  wire delay_next0_carry_i_2_n_0;
  wire delay_next0_carry_i_3_n_0;
  wire delay_next0_carry_i_4_n_0;
  wire delay_next0_carry_n_0;
  wire delay_next0_carry_n_1;
  wire delay_next0_carry_n_2;
  wire delay_next0_carry_n_3;
  wire [16:0]delay_reg;
  wire \delay_reg[0]_i_1_n_0 ;
  wire \delay_reg[10]_i_1_n_0 ;
  wire \delay_reg[11]_i_1_n_0 ;
  wire \delay_reg[12]_i_1_n_0 ;
  wire \delay_reg[13]_i_1_n_0 ;
  wire \delay_reg[14]_i_1_n_0 ;
  wire \delay_reg[15]_i_1_n_0 ;
  wire \delay_reg[16]_i_1_n_0 ;
  wire \delay_reg[16]_i_2_n_0 ;
  wire \delay_reg[16]_i_3_n_0 ;
  wire \delay_reg[16]_i_4_n_0 ;
  wire \delay_reg[16]_i_5_n_0 ;
  wire \delay_reg[1]_i_1_n_0 ;
  wire \delay_reg[2]_i_1_n_0 ;
  wire \delay_reg[3]_i_1_n_0 ;
  wire \delay_reg[4]_i_1_n_0 ;
  wire \delay_reg[5]_i_1_n_0 ;
  wire \delay_reg[6]_i_1_n_0 ;
  wire \delay_reg[7]_i_1_n_0 ;
  wire \delay_reg[8]_i_1_n_0 ;
  wire \delay_reg[9]_i_1_n_0 ;
  wire [15:0]\delay_reg_reg[15]_0 ;
  wire delay_scl_reg;
  wire delay_scl_reg_i_1_n_0;
  wire delay_scl_reg_i_2_n_0;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_sda_i;
  wire i2c_sda_t;
  wire last_reg;
  wire last_reg_i_1_n_0;
  wire [8:0]last_reg_reg_0;
  wire last_sda_i_reg;
  wire m_axis_data_tlast_next5_out;
  wire m_axis_data_tlast_reg_i_1_n_0;
  wire m_axis_data_tvalid_reg_i_1_n_0;
  wire m_axis_data_tvalid_reg_i_2_n_0;
  wire m_axis_data_tvalid_reg_i_3_n_0;
  wire [0:0]m_axis_data_tvalid_reg_reg_0;
  wire m_axis_data_tvalid_reg_reg_1;
  wire missed_ack_int;
  wire missed_ack_next;
  wire missed_ack_reg;
  wire missed_ack_reg_0;
  wire missed_ack_reg_i_1__0_n_0;
  wire missed_ack_reg_reg_0;
  wire mode_read_reg;
  wire mode_stop_reg;
  wire mode_write_multiple_reg;
  wire [0:0]p_0_in;
  wire p_4_in;
  wire phy_rx_data_reg_i_1_n_0;
  wire phy_rx_data_reg_i_2_n_0;
  wire [0:0]phy_state_next;
  wire [3:0]phy_state_reg;
  wire rst;
  wire [0:0]s_axil_awaddr;
  wire [0:0]s_axil_wdata;
  wire [0:0]s_axil_wstrb;
  wire [8:0]s_axis;
  wire s_axis_cmd_ready_reg_i_1_n_0;
  wire s_axis_data_tready_next;
  wire s_axis_data_tready_reg_i_1_n_0;
  wire [0:0]s_axis_data_tready_reg_reg_0;
  wire scl_i_reg;
  wire scl_o_reg_i_1_n_0;
  wire sda_i_reg;
  wire sda_o_reg_i_11_n_0;
  wire sda_o_reg_i_13_n_0;
  wire sda_o_reg_i_14_n_0;
  wire sda_o_reg_i_15_n_0;
  wire sda_o_reg_i_16_n_0;
  wire sda_o_reg_i_17_n_0;
  wire sda_o_reg_i_1_n_0;
  wire sda_o_reg_i_2_0;
  wire sda_o_reg_i_2_n_0;
  wire sda_o_reg_i_3_n_0;
  wire sda_o_reg_i_4_n_0;
  wire sda_o_reg_i_5_n_0;
  wire sda_o_reg_i_6_n_0;
  wire sda_o_reg_i_7_n_0;
  wire sda_o_reg_i_8_n_0;
  wire sda_o_reg_i_9_n_0;
  wire sda_o_reg_reg_i_10_n_0;
  wire [3:3]NLW_delay_next0_carry__2_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hD5)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .O(\FSM_onehot_state_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \FSM_onehot_state_reg[0]_i_2 
       (.I0(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I1(\FSM_onehot_state_reg_reg[5]_0 ),
        .I2(mode_stop_reg),
        .I3(\FSM_onehot_state_reg[0]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[7] ),
        .O(\FSM_onehot_state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \FSM_onehot_state_reg[0]_i_3 
       (.I0(last_reg),
        .I1(mode_write_multiple_reg),
        .I2(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .O(\FSM_onehot_state_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state_reg[10]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I1(\bit_count_reg_reg_n_0_[2] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[1] ),
        .I4(\bit_count_reg_reg_n_0_[3] ),
        .O(\FSM_onehot_state_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \FSM_onehot_state_reg[11]_i_1 
       (.I0(phy_state_reg[1]),
        .I1(phy_state_reg[0]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[2]),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'h44444444F4FF4444)) 
    \FSM_onehot_state_reg[11]_i_2 
       (.I0(\FSM_onehot_state_reg_reg[11]_1 ),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I2(last_reg),
        .I3(mode_write_multiple_reg),
        .I4(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .I5(mode_stop_reg),
        .O(\FSM_onehot_state_reg[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \FSM_onehot_state_reg[1]_i_1 
       (.I0(bus_active_int),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [1]),
        .I2(\FSM_onehot_state_reg_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .O(\FSM_onehot_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(\bit_count_reg_reg_n_0_[3] ),
        .I1(\bit_count_reg_reg_n_0_[1] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I5(\bit_count_reg_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_reg[3]_i_1 
       (.I0(\bit_count_reg_reg_n_0_[3] ),
        .I1(\bit_count_reg_reg_n_0_[1] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_state_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \FSM_onehot_state_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[4]_0 ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg[9]_i_2_n_0 ),
        .I3(mode_read_reg),
        .I4(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .O(\FSM_onehot_state_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \FSM_onehot_state_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg_reg[5]_0 ),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg[9]_i_2_n_0 ),
        .I5(mode_stop_reg),
        .O(\FSM_onehot_state_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F66)) 
    \FSM_onehot_state_reg[6]_i_4 
       (.I0(addr_reg[4]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\addr_reg_reg[6]_0 [2]),
        .O(\addr_reg_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_state_reg[6]_i_7 
       (.I0(addr_reg[3]),
        .I1(Q[6]),
        .I2(addr_reg[5]),
        .I3(Q[8]),
        .O(\addr_reg_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_state_reg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg[9]_i_2_n_0 ),
        .I2(mode_stop_reg),
        .I3(\FSM_onehot_state_reg_reg[5]_0 ),
        .I4(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .O(\FSM_onehot_state_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF20)) 
    \FSM_onehot_state_reg[8]_i_1 
       (.I0(mode_write_multiple_reg),
        .I1(last_reg),
        .I2(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .I3(s_axis_data_tready_next),
        .O(\FSM_onehot_state_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \FSM_onehot_state_reg[8]_i_2 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg[8]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(mode_read_reg),
        .I4(\FSM_onehot_state_reg_reg[8]_0 ),
        .I5(\FSM_onehot_state_reg_reg[8]_1 ),
        .O(s_axis_data_tready_next));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_reg[8]_i_3 
       (.I0(data_in_ready_int),
        .I1(data_in_valid_int),
        .O(\FSM_onehot_state_reg[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_state_reg[9]_i_1 
       (.I0(data_in_ready_int),
        .I1(data_in_valid_int),
        .I2(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg[9]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .O(\FSM_onehot_state_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_reg[9]_i_2 
       (.I0(\bit_count_reg_reg_n_0_[3] ),
        .I1(\bit_count_reg_reg_n_0_[1] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_state_reg[9]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .S(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[10] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[11] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[11]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[11]_0 [1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[3] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[4] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[5] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[6] 
       (.C(clk),
        .CE(p_4_in),
        .D(D),
        .Q(\FSM_onehot_state_reg_reg[11]_0 [3]),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[7] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[7] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[8] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[9] 
       (.C(clk),
        .CE(p_4_in),
        .D(\FSM_onehot_state_reg[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h00441044FFFFFFEE)) 
    \FSM_sequential_phy_state_reg[0]_i_1 
       (.I0(phy_state_reg[3]),
        .I1(phy_state_reg[2]),
        .I2(\FSM_sequential_phy_state_reg[0]_i_2_n_0 ),
        .I3(phy_state_reg[1]),
        .I4(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ),
        .I5(phy_state_reg[0]),
        .O(\FSM_sequential_phy_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200F3F3)) 
    \FSM_sequential_phy_state_reg[0]_i_2 
       (.I0(\FSM_onehot_state_reg_reg[5]_0 ),
        .I1(mode_stop_reg),
        .I2(\FSM_sequential_phy_state_reg[0]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .I5(\FSM_sequential_phy_state_reg[0]_i_5_n_0 ),
        .O(\FSM_sequential_phy_state_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888A88)) 
    \FSM_sequential_phy_state_reg[0]_i_3 
       (.I0(p_4_in),
        .I1(\FSM_sequential_phy_state_reg[0]_i_6_n_0 ),
        .I2(\FSM_onehot_state_reg_reg[8]_1 ),
        .I3(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I4(\FSM_onehot_state_reg_reg[0]_0 ),
        .O(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_phy_state_reg[0]_i_4 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I1(\bit_count_reg_reg_n_0_[2] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[1] ),
        .I4(\bit_count_reg_reg_n_0_[3] ),
        .O(\FSM_sequential_phy_state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCAAAAAAA8)) 
    \FSM_sequential_phy_state_reg[0]_i_5 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I1(\bit_count_reg_reg_n_0_[3] ),
        .I2(\bit_count_reg_reg_n_0_[1] ),
        .I3(\bit_count_reg_reg_n_0_[0] ),
        .I4(\bit_count_reg_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .O(\FSM_sequential_phy_state_reg[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF4F5F4F4)) 
    \FSM_sequential_phy_state_reg[0]_i_6 
       (.I0(bus_active_int),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [1]),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [3]),
        .I3(\FSM_onehot_state_reg_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .O(\FSM_sequential_phy_state_reg[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0FFF44F0)) 
    \FSM_sequential_phy_state_reg[1]_i_1 
       (.I0(phy_state_reg[2]),
        .I1(\FSM_sequential_phy_state_reg[1]_i_2_n_0 ),
        .I2(phy_state_reg[1]),
        .I3(phy_state_reg[0]),
        .I4(phy_state_reg[3]),
        .O(\FSM_sequential_phy_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h45FF)) 
    \FSM_sequential_phy_state_reg[1]_i_2 
       (.I0(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ),
        .I1(\FSM_sequential_phy_state_reg[3]_i_12_n_0 ),
        .I2(\FSM_sequential_phy_state_reg[3]_i_4_n_0 ),
        .I3(phy_state_reg[1]),
        .O(\FSM_sequential_phy_state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FD0F0000FD00F00)) 
    \FSM_sequential_phy_state_reg[2]_i_1 
       (.I0(\FSM_sequential_phy_state_reg[3]_i_5_n_0 ),
        .I1(\FSM_sequential_phy_state_reg[2]_i_2_n_0 ),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[2]),
        .I4(phy_state_reg[1]),
        .I5(phy_state_reg[3]),
        .O(\FSM_sequential_phy_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000A202A)) 
    \FSM_sequential_phy_state_reg[2]_i_2 
       (.I0(\FSM_sequential_phy_state_reg[2]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg[9]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\FSM_sequential_phy_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \FSM_sequential_phy_state_reg[2]_i_3 
       (.I0(p_4_in),
        .I1(\FSM_onehot_state_reg_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg[0]_i_3_n_0 ),
        .I3(mode_stop_reg),
        .I4(\FSM_onehot_state_reg_reg[5]_0 ),
        .I5(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .O(\FSM_sequential_phy_state_reg[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_phy_state_reg[3]_i_1 
       (.I0(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I1(delay_scl_reg),
        .O(phy_state_next));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_phy_state_reg[3]_i_10 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I1(\bit_count_reg_reg_n_0_[2] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[1] ),
        .I4(\bit_count_reg_reg_n_0_[3] ),
        .O(\FSM_sequential_phy_state_reg[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \FSM_sequential_phy_state_reg[3]_i_11 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I1(\bit_count_reg_reg_n_0_[3] ),
        .I2(\bit_count_reg_reg_n_0_[1] ),
        .I3(\bit_count_reg_reg_n_0_[0] ),
        .I4(\bit_count_reg_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\FSM_sequential_phy_state_reg[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00001001)) 
    \FSM_sequential_phy_state_reg[3]_i_12 
       (.I0(phy_state_reg[2]),
        .I1(phy_state_reg[3]),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[1]),
        .I4(\FSM_sequential_phy_state_reg[0]_i_2_n_0 ),
        .O(\FSM_sequential_phy_state_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFF0FFF0F0008000)) 
    \FSM_sequential_phy_state_reg[3]_i_2 
       (.I0(\FSM_sequential_phy_state_reg[3]_i_4_n_0 ),
        .I1(\FSM_sequential_phy_state_reg[3]_i_5_n_0 ),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[1]),
        .I4(phy_state_reg[2]),
        .I5(phy_state_reg[3]),
        .O(\FSM_sequential_phy_state_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_phy_state_reg[3]_i_3 
       (.I0(\FSM_sequential_phy_state_reg[3]_i_6_n_0 ),
        .I1(\FSM_sequential_phy_state_reg[3]_i_7_n_0 ),
        .I2(\FSM_sequential_phy_state_reg[3]_i_8_n_0 ),
        .I3(delay_reg[15]),
        .I4(delay_reg[5]),
        .I5(delay_reg[14]),
        .O(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2FF00000000)) 
    \FSM_sequential_phy_state_reg[3]_i_4 
       (.I0(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I1(\FSM_onehot_state_reg_reg[5]_0 ),
        .I2(\FSM_sequential_phy_state_reg[3]_i_9_n_0 ),
        .I3(\FSM_sequential_phy_state_reg[3]_i_10_n_0 ),
        .I4(\FSM_sequential_phy_state_reg[3]_i_11_n_0 ),
        .I5(p_4_in),
        .O(\FSM_sequential_phy_state_reg[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_phy_state_reg[3]_i_5 
       (.I0(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ),
        .I1(\FSM_sequential_phy_state_reg[3]_i_12_n_0 ),
        .I2(phy_state_reg[3]),
        .O(\FSM_sequential_phy_state_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_phy_state_reg[3]_i_6 
       (.I0(delay_reg[12]),
        .I1(delay_reg[0]),
        .I2(delay_reg[8]),
        .I3(delay_reg[1]),
        .I4(delay_reg[9]),
        .I5(delay_reg[6]),
        .O(\FSM_sequential_phy_state_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_phy_state_reg[3]_i_7 
       (.I0(delay_reg[7]),
        .I1(delay_reg[13]),
        .I2(delay_reg[3]),
        .I3(delay_reg[4]),
        .O(\FSM_sequential_phy_state_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_phy_state_reg[3]_i_8 
       (.I0(delay_reg[2]),
        .I1(delay_reg[11]),
        .I2(delay_reg[16]),
        .I3(delay_reg[10]),
        .O(\FSM_sequential_phy_state_reg[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \FSM_sequential_phy_state_reg[3]_i_9 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[7] ),
        .I1(last_reg),
        .I2(mode_write_multiple_reg),
        .I3(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .I4(mode_stop_reg),
        .O(\FSM_sequential_phy_state_reg[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_phy_state_reg_reg[0] 
       (.C(clk),
        .CE(phy_state_next),
        .D(\FSM_sequential_phy_state_reg[0]_i_1_n_0 ),
        .Q(phy_state_reg[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_phy_state_reg_reg[1] 
       (.C(clk),
        .CE(phy_state_next),
        .D(\FSM_sequential_phy_state_reg[1]_i_1_n_0 ),
        .Q(phy_state_reg[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_phy_state_reg_reg[2] 
       (.C(clk),
        .CE(phy_state_next),
        .D(\FSM_sequential_phy_state_reg[2]_i_1_n_0 ),
        .Q(phy_state_reg[2]),
        .R(rst));
  (* FSM_ENCODED_STATES = "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_phy_state_reg_reg[3] 
       (.C(clk),
        .CE(phy_state_next),
        .D(\FSM_sequential_phy_state_reg[3]_i_2_n_0 ),
        .Q(phy_state_reg[3]),
        .R(rst));
  LUT5 #(
    .INIT(32'h44444440)) 
    \addr_reg[6]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[0]_0 ),
        .I1(p_4_in),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I3(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .I4(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .O(\addr_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[0] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\addr_reg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[1] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\addr_reg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[2] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\addr_reg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[3] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[6]),
        .Q(addr_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[4] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[7]),
        .Q(addr_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[5] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[8]),
        .Q(addr_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[6] 
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[9]),
        .Q(\addr_reg_reg[6]_0 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \bit_count_reg[0]_i_1 
       (.I0(\bit_count_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(bit_count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h99999990)) 
    \bit_count_reg[1]_i_1 
       (.I0(\bit_count_reg_reg_n_0_[0] ),
        .I1(\bit_count_reg_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(bit_count_next[1]));
  LUT6 #(
    .INIT(64'hE1E1E1E1E1E1E100)) 
    \bit_count_reg[2]_i_1 
       (.I0(\bit_count_reg_reg_n_0_[1] ),
        .I1(\bit_count_reg_reg_n_0_[0] ),
        .I2(\bit_count_reg_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(bit_count_next[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \bit_count_reg[3]_i_1 
       (.I0(p_4_in),
        .I1(\bit_count_reg[3]_i_3_n_0 ),
        .I2(\bit_count_reg_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\bit_count_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AAA9)) 
    \bit_count_reg[3]_i_2 
       (.I0(\bit_count_reg_reg_n_0_[3] ),
        .I1(\bit_count_reg_reg_n_0_[1] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[2] ),
        .I4(\bit_count_reg[3]_i_4_n_0 ),
        .I5(\bit_count_reg[3]_i_5_n_0 ),
        .O(bit_count_next[3]));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \bit_count_reg[3]_i_3 
       (.I0(\FSM_onehot_state_reg_reg[4]_0 ),
        .I1(mode_read_reg),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I4(data_in_valid_int),
        .I5(data_in_ready_int),
        .O(\bit_count_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bit_count_reg[3]_i_4 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\bit_count_reg[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \bit_count_reg[3]_i_5 
       (.I0(\bit_count_reg[3]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg[11]_0 [1]),
        .I4(\FSM_onehot_state_reg_reg[11]_0 [3]),
        .O(\bit_count_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bit_count_reg[3]_i_6 
       (.I0(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .O(\bit_count_reg[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg_reg[0] 
       (.C(clk),
        .CE(\bit_count_reg[3]_i_1_n_0 ),
        .D(bit_count_next[0]),
        .Q(\bit_count_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg_reg[1] 
       (.C(clk),
        .CE(\bit_count_reg[3]_i_1_n_0 ),
        .D(bit_count_next[1]),
        .Q(\bit_count_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg_reg[2] 
       (.C(clk),
        .CE(\bit_count_reg[3]_i_1_n_0 ),
        .D(bit_count_next[2]),
        .Q(\bit_count_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg_reg[3] 
       (.C(clk),
        .CE(\bit_count_reg[3]_i_1_n_0 ),
        .D(bit_count_next[3]),
        .Q(\bit_count_reg_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF740)) 
    bus_active_reg_i_1
       (.I0(sda_i_reg),
        .I1(scl_i_reg),
        .I2(last_sda_i_reg),
        .I3(bus_active_int),
        .O(bus_active_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bus_active_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(bus_active_reg_i_1_n_0),
        .Q(bus_active_int),
        .R(rst));
  LUT6 #(
    .INIT(64'h7FFFFFFF00020000)) 
    bus_control_reg_i_1
       (.I0(phy_state_next),
        .I1(phy_state_reg[3]),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[2]),
        .I4(phy_state_reg[1]),
        .I5(bus_control_int),
        .O(bus_control_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bus_control_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(bus_control_reg_i_1_n_0),
        .Q(bus_control_int),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    busy_reg_i_1
       (.I0(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I3(p_4_in),
        .O(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_reg0),
        .Q(busy_int),
        .R(rst));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[0]_i_1 
       (.I0(last_reg_reg_0[0]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[1]_i_1 
       (.I0(last_reg_reg_0[1]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(\data_reg_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[2]_i_1 
       (.I0(last_reg_reg_0[2]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(data2),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[3]_i_1 
       (.I0(last_reg_reg_0[3]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(data3),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[4]_i_1 
       (.I0(last_reg_reg_0[4]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(data4),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[5]_i_1 
       (.I0(last_reg_reg_0[5]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(data5),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[6]_i_1 
       (.I0(last_reg_reg_0[6]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(data6),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1001100110010000)) 
    \data_reg[7]_i_1 
       (.I0(phy_state_reg[2]),
        .I1(phy_state_reg[3]),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[1]),
        .I4(\bit_count_reg[3]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_reg[7]_i_2 
       (.I0(last_reg_reg_0[7]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I2(data7),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\data_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[0]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(data2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(data5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(data6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(data7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[7]_i_2_n_0 ),
        .Q(data0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_next0_carry
       (.CI(1'b0),
        .CO({delay_next0_carry_n_0,delay_next0_carry_n_1,delay_next0_carry_n_2,delay_next0_carry_n_3}),
        .CYINIT(delay_reg[0]),
        .DI(delay_reg[4:1]),
        .O(delay_next0[4:1]),
        .S({delay_next0_carry_i_1_n_0,delay_next0_carry_i_2_n_0,delay_next0_carry_i_3_n_0,delay_next0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_next0_carry__0
       (.CI(delay_next0_carry_n_0),
        .CO({delay_next0_carry__0_n_0,delay_next0_carry__0_n_1,delay_next0_carry__0_n_2,delay_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_reg[8:5]),
        .O(delay_next0[8:5]),
        .S({delay_next0_carry__0_i_1_n_0,delay_next0_carry__0_i_2_n_0,delay_next0_carry__0_i_3_n_0,delay_next0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__0_i_1
       (.I0(delay_reg[8]),
        .O(delay_next0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__0_i_2
       (.I0(delay_reg[7]),
        .O(delay_next0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__0_i_3
       (.I0(delay_reg[6]),
        .O(delay_next0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__0_i_4
       (.I0(delay_reg[5]),
        .O(delay_next0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_next0_carry__1
       (.CI(delay_next0_carry__0_n_0),
        .CO({delay_next0_carry__1_n_0,delay_next0_carry__1_n_1,delay_next0_carry__1_n_2,delay_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_reg[12:9]),
        .O(delay_next0[12:9]),
        .S({delay_next0_carry__1_i_1_n_0,delay_next0_carry__1_i_2_n_0,delay_next0_carry__1_i_3_n_0,delay_next0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__1_i_1
       (.I0(delay_reg[12]),
        .O(delay_next0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__1_i_2
       (.I0(delay_reg[11]),
        .O(delay_next0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__1_i_3
       (.I0(delay_reg[10]),
        .O(delay_next0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__1_i_4
       (.I0(delay_reg[9]),
        .O(delay_next0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_next0_carry__2
       (.CI(delay_next0_carry__1_n_0),
        .CO({NLW_delay_next0_carry__2_CO_UNCONNECTED[3],delay_next0_carry__2_n_1,delay_next0_carry__2_n_2,delay_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_reg[15:13]}),
        .O(delay_next0[16:13]),
        .S({delay_next0_carry__2_i_1_n_0,delay_next0_carry__2_i_2_n_0,delay_next0_carry__2_i_3_n_0,delay_next0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__2_i_1
       (.I0(delay_reg[16]),
        .O(delay_next0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__2_i_2
       (.I0(delay_reg[15]),
        .O(delay_next0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__2_i_3
       (.I0(delay_reg[14]),
        .O(delay_next0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry__2_i_4
       (.I0(delay_reg[13]),
        .O(delay_next0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry_i_1
       (.I0(delay_reg[4]),
        .O(delay_next0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry_i_2
       (.I0(delay_reg[3]),
        .O(delay_next0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry_i_3
       (.I0(delay_reg[2]),
        .O(delay_next0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delay_next0_carry_i_4
       (.I0(delay_reg[1]),
        .O(delay_next0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h202F)) 
    \delay_reg[0]_i_1 
       (.I0(\delay_reg_reg[15]_0 [0]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I3(delay_reg[0]),
        .O(\delay_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[10]_i_1 
       (.I0(\delay_reg_reg[15]_0 [9]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [10]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[10]),
        .O(\delay_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[11]_i_1 
       (.I0(\delay_reg_reg[15]_0 [10]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [11]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[11]),
        .O(\delay_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[12]_i_1 
       (.I0(\delay_reg_reg[15]_0 [11]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [12]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[12]),
        .O(\delay_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[13]_i_1 
       (.I0(\delay_reg_reg[15]_0 [12]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [13]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[13]),
        .O(\delay_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[14]_i_1 
       (.I0(\delay_reg_reg[15]_0 [13]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [14]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[14]),
        .O(\delay_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[15]_i_1 
       (.I0(\delay_reg_reg[15]_0 [14]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [15]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[15]),
        .O(\delay_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515111555555555)) 
    \delay_reg[16]_i_1 
       (.I0(delay_scl_reg),
        .I1(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I2(\delay_reg[16]_i_3_n_0 ),
        .I3(phy_state_reg[3]),
        .I4(phy_state_reg[1]),
        .I5(\delay_reg[16]_i_4_n_0 ),
        .O(\delay_reg[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \delay_reg[16]_i_2 
       (.I0(\delay_reg_reg[15]_0 [15]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I3(delay_next0[16]),
        .O(\delay_reg[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hC303C3C2)) 
    \delay_reg[16]_i_3 
       (.I0(\bit_count_reg_reg[0]_0 ),
        .I1(phy_state_reg[2]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[0]),
        .I4(phy_state_reg[1]),
        .O(\delay_reg[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \delay_reg[16]_i_4 
       (.I0(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ),
        .I1(\FSM_sequential_phy_state_reg[3]_i_4_n_0 ),
        .I2(\FSM_sequential_phy_state_reg[3]_i_12_n_0 ),
        .I3(phy_state_reg[1]),
        .I4(phy_state_reg[0]),
        .O(\delay_reg[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \delay_reg[16]_i_5 
       (.I0(phy_state_reg[0]),
        .I1(phy_state_reg[2]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[1]),
        .O(\delay_reg[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[1]_i_1 
       (.I0(\delay_reg_reg[15]_0 [0]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [1]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[1]),
        .O(\delay_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[2]_i_1 
       (.I0(\delay_reg_reg[15]_0 [1]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [2]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[2]),
        .O(\delay_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[3]_i_1 
       (.I0(\delay_reg_reg[15]_0 [2]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [3]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[3]),
        .O(\delay_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[4]_i_1 
       (.I0(\delay_reg_reg[15]_0 [3]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [4]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[4]),
        .O(\delay_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[5]_i_1 
       (.I0(\delay_reg_reg[15]_0 [4]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [5]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[5]),
        .O(\delay_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[6]_i_1 
       (.I0(\delay_reg_reg[15]_0 [5]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [6]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[6]),
        .O(\delay_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[7]_i_1 
       (.I0(\delay_reg_reg[15]_0 [6]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [7]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[7]),
        .O(\delay_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[8]_i_1 
       (.I0(\delay_reg_reg[15]_0 [7]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [8]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[8]),
        .O(\delay_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \delay_reg[9]_i_1 
       (.I0(\delay_reg_reg[15]_0 [8]),
        .I1(\delay_reg[16]_i_5_n_0 ),
        .I2(\delay_reg_reg[15]_0 [9]),
        .I3(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .I4(delay_next0[9]),
        .O(\delay_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[0] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[0]_i_1_n_0 ),
        .Q(delay_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[10] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[10]_i_1_n_0 ),
        .Q(delay_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[11] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[11]_i_1_n_0 ),
        .Q(delay_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[12] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[12]_i_1_n_0 ),
        .Q(delay_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[13] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[13]_i_1_n_0 ),
        .Q(delay_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[14] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[14]_i_1_n_0 ),
        .Q(delay_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[15] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[15]_i_1_n_0 ),
        .Q(delay_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[16] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[16]_i_2_n_0 ),
        .Q(delay_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[1] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[1]_i_1_n_0 ),
        .Q(delay_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[2] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[2]_i_1_n_0 ),
        .Q(delay_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[3] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[3]_i_1_n_0 ),
        .Q(delay_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[4] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[4]_i_1_n_0 ),
        .Q(delay_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[5] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[5]_i_1_n_0 ),
        .Q(delay_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[6] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[6]_i_1_n_0 ),
        .Q(delay_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[7] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[7]_i_1_n_0 ),
        .Q(delay_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[8] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[8]_i_1_n_0 ),
        .Q(delay_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg_reg[9] 
       (.C(clk),
        .CE(\delay_reg[16]_i_1_n_0 ),
        .D(\delay_reg[9]_i_1_n_0 ),
        .Q(delay_reg[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h404F4040)) 
    delay_scl_reg_i_1
       (.I0(scl_i_reg),
        .I1(i2c_scl_o),
        .I2(delay_scl_reg),
        .I3(delay_scl_reg_i_2_n_0),
        .I4(\FSM_sequential_phy_state_reg[3]_i_3_n_0 ),
        .O(delay_scl_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFD3D)) 
    delay_scl_reg_i_2
       (.I0(phy_state_reg[2]),
        .I1(phy_state_reg[0]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[1]),
        .O(delay_scl_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    delay_scl_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(delay_scl_reg_i_1_n_0),
        .Q(delay_scl_reg),
        .R(rst));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    last_reg_i_1
       (.I0(last_reg_reg_0[8]),
        .I1(p_4_in),
        .I2(data_in_ready_int),
        .I3(data_in_valid_int),
        .I4(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .I5(last_reg),
        .O(last_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_reg_i_1_n_0),
        .Q(last_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    last_sda_i_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sda_i_reg),
        .Q(last_sda_i_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \m_axis_data_tdata_reg[7]_i_1 
       (.I0(p_4_in),
        .I1(\bit_count_reg_reg_n_0_[3] ),
        .I2(\bit_count_reg_reg_n_0_[1] ),
        .I3(\bit_count_reg_reg_n_0_[0] ),
        .I4(\bit_count_reg_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(m_axis_data_tlast_next5_out));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[0] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(p_0_in),
        .Q(s_axis[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[1] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(\data_reg_reg_n_0_[0] ),
        .Q(s_axis[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[2] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(data2),
        .Q(s_axis[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[3] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(data3),
        .Q(s_axis[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[4] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(data4),
        .Q(s_axis[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[5] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(data5),
        .Q(s_axis[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[6] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(data6),
        .Q(s_axis[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_data_tdata_reg_reg[7] 
       (.C(clk),
        .CE(m_axis_data_tlast_next5_out),
        .D(data7),
        .Q(s_axis[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_data_tlast_reg_i_1
       (.I0(mode_stop_reg),
        .I1(m_axis_data_tlast_next5_out),
        .I2(s_axis[8]),
        .O(m_axis_data_tlast_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_data_tlast_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_data_tlast_reg_i_1_n_0),
        .Q(s_axis[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAEAEA00EAEAEAEA)) 
    m_axis_data_tvalid_reg_i_1
       (.I0(m_axis_data_tlast_next5_out),
        .I1(data_out_valid_int),
        .I2(m_axis_data_tvalid_reg_reg_1),
        .I3(m_axis_data_tvalid_reg_i_2_n_0),
        .I4(m_axis_data_tvalid_reg_i_3_n_0),
        .I5(p_4_in),
        .O(m_axis_data_tvalid_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_data_tvalid_reg_i_2
       (.I0(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .I4(\FSM_onehot_state_reg_reg[11]_0 [1]),
        .I5(\FSM_onehot_state_reg_reg[11]_0 [3]),
        .O(m_axis_data_tvalid_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_data_tvalid_reg_i_3
       (.I0(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[8] ),
        .O(m_axis_data_tvalid_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_data_tvalid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_data_tvalid_reg_i_1_n_0),
        .Q(data_out_valid_int),
        .R(rst));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_pipe_reg[1][11]_i_1 
       (.I0(cmd_ready_int),
        .I1(cmd_valid_int),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_pipe_reg[1][8]_i_1 
       (.I0(data_in_ready_int),
        .I1(data_in_valid_int),
        .O(s_axis_data_tready_reg_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_31_0_5_i_1__1
       (.I0(data_out_valid_int),
        .I1(m_axis_data_tvalid_reg_reg_1),
        .O(m_axis_data_tvalid_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFBFFFFFAAAAAAAA)) 
    missed_ack_reg_i_1
       (.I0(missed_ack_int),
        .I1(missed_ack_reg_reg_0),
        .I2(s_axil_wdata),
        .I3(s_axil_awaddr),
        .I4(s_axil_wstrb),
        .I5(missed_ack_reg),
        .O(missed_ack_next));
  LUT5 #(
    .INIT(32'h0000E000)) 
    missed_ack_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[10] ),
        .I2(p_0_in),
        .I3(p_4_in),
        .I4(rst),
        .O(missed_ack_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    missed_ack_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(missed_ack_reg_i_1__0_n_0),
        .Q(missed_ack_int),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mode_read_reg_reg
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[2]),
        .Q(mode_read_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mode_stop_reg_reg
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[0]),
        .Q(mode_stop_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mode_write_multiple_reg_reg
       (.C(clk),
        .CE(\addr_reg[6]_i_1_n_0 ),
        .D(Q[1]),
        .Q(mode_write_multiple_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    phy_rx_data_reg_i_1
       (.I0(sda_i_reg),
        .I1(phy_state_next),
        .I2(phy_rx_data_reg_i_2_n_0),
        .I3(phy_state_reg[1]),
        .I4(phy_state_reg[2]),
        .I5(p_0_in),
        .O(phy_rx_data_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    phy_rx_data_reg_i_2
       (.I0(phy_state_reg[3]),
        .I1(phy_state_reg[0]),
        .O(phy_rx_data_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    phy_rx_data_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(phy_rx_data_reg_i_1_n_0),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EFEE0000)) 
    s_axis_cmd_ready_reg_i_1
       (.I0(\FSM_onehot_state_reg_reg[11]_0 [4]),
        .I1(\FSM_onehot_state_reg_reg[11]_0 [0]),
        .I2(data_out_valid_int),
        .I3(\FSM_onehot_state_reg_reg[11]_0 [2]),
        .I4(\FSM_onehot_state_reg_reg[0]_0 ),
        .I5(missed_ack_reg_0),
        .O(s_axis_cmd_ready_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFE)) 
    s_axis_cmd_ready_reg_i_2
       (.I0(rst),
        .I1(phy_state_reg[2]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[0]),
        .I4(phy_state_reg[1]),
        .O(missed_ack_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_cmd_ready_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_cmd_ready_reg_i_1_n_0),
        .Q(cmd_ready_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000082)) 
    s_axis_data_tready_reg_i_1
       (.I0(s_axis_data_tready_next),
        .I1(phy_state_reg[1]),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[3]),
        .I4(phy_state_reg[2]),
        .I5(rst),
        .O(s_axis_data_tready_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_data_tready_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_data_tready_reg_i_1_n_0),
        .Q(data_in_ready_int),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    scl_i_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(i2c_scl_i),
        .Q(scl_i_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF77DFFFF20200A02)) 
    scl_o_reg_i_1
       (.I0(phy_state_next),
        .I1(phy_state_reg[1]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[2]),
        .I4(phy_state_reg[0]),
        .I5(i2c_scl_o),
        .O(scl_o_reg_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    scl_o_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_o_reg_i_1_n_0),
        .Q(i2c_scl_o),
        .S(rst));
  FDRE #(
    .INIT(1'b1)) 
    sda_i_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(i2c_sda_i),
        .Q(sda_i_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF02FF00000200)) 
    sda_o_reg_i_1
       (.I0(sda_o_reg_i_2_n_0),
        .I1(sda_o_reg_i_3_n_0),
        .I2(sda_o_reg_i_4_n_0),
        .I3(phy_state_next),
        .I4(sda_o_reg_i_5_n_0),
        .I5(i2c_sda_t),
        .O(sda_o_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFC33D01)) 
    sda_o_reg_i_11
       (.I0(\bit_count_reg_reg_n_0_[3] ),
        .I1(\bit_count_reg_reg_n_0_[1] ),
        .I2(\bit_count_reg_reg_n_0_[2] ),
        .I3(sda_o_reg_i_15_n_0),
        .I4(sda_o_reg_i_16_n_0),
        .I5(sda_o_reg_i_17_n_0),
        .O(sda_o_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_reg_i_13
       (.I0(data3),
        .I1(data2),
        .I2(\bit_count_reg_reg_n_0_[1] ),
        .I3(\data_reg_reg_n_0_[0] ),
        .I4(\bit_count_reg_reg_n_0_[0] ),
        .I5(data0),
        .O(sda_o_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_reg_i_14
       (.I0(data7),
        .I1(data6),
        .I2(\bit_count_reg_reg_n_0_[1] ),
        .I3(data5),
        .I4(\bit_count_reg_reg_n_0_[0] ),
        .I5(data4),
        .O(sda_o_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_reg_i_15
       (.I0(\addr_reg_reg[6]_0 [1]),
        .I1(\addr_reg_reg[6]_0 [0]),
        .I2(\bit_count_reg_reg_n_0_[1] ),
        .I3(addr_reg[3]),
        .I4(\bit_count_reg_reg_n_0_[0] ),
        .I5(\addr_reg_reg[6]_0 [2]),
        .O(sda_o_reg_i_15_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    sda_o_reg_i_16
       (.I0(addr_reg[5]),
        .I1(\bit_count_reg_reg_n_0_[0] ),
        .I2(addr_reg[4]),
        .I3(\bit_count_reg_reg_n_0_[1] ),
        .I4(\addr_reg_reg[6]_0 [3]),
        .O(sda_o_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'h333333373333333F)) 
    sda_o_reg_i_17
       (.I0(\bit_count_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(\bit_count_reg_reg_n_0_[3] ),
        .I3(\bit_count_reg_reg_n_0_[1] ),
        .I4(\bit_count_reg_reg_n_0_[2] ),
        .I5(mode_read_reg),
        .O(sda_o_reg_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFEFFFEF)) 
    sda_o_reg_i_2
       (.I0(sda_o_reg_i_6_n_0),
        .I1(phy_state_reg[2]),
        .I2(phy_state_reg[1]),
        .I3(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ),
        .I4(\FSM_sequential_phy_state_reg[0]_i_2_n_0 ),
        .I5(sda_o_reg_i_7_n_0),
        .O(sda_o_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sda_o_reg_i_3
       (.I0(phy_state_reg[2]),
        .I1(phy_state_reg[1]),
        .O(sda_o_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    sda_o_reg_i_4
       (.I0(phy_state_reg[1]),
        .I1(phy_state_reg[0]),
        .I2(phy_state_reg[3]),
        .I3(phy_state_reg[2]),
        .I4(\bit_count_reg_reg[0]_0 ),
        .O(sda_o_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFF10FFFFF0FFFF0)) 
    sda_o_reg_i_5
       (.I0(sda_o_reg_i_8_n_0),
        .I1(\FSM_sequential_phy_state_reg[0]_i_3_n_0 ),
        .I2(phy_state_reg[2]),
        .I3(phy_state_reg[3]),
        .I4(phy_state_reg[0]),
        .I5(phy_state_reg[1]),
        .O(sda_o_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888AAAAAAAA)) 
    sda_o_reg_i_6
       (.I0(p_4_in),
        .I1(\FSM_onehot_state_reg[7]_i_1_n_0 ),
        .I2(sda_o_reg_i_9_n_0),
        .I3(sda_o_reg_reg_i_10_n_0),
        .I4(sda_o_reg_i_11_n_0),
        .I5(sda_o_reg_i_2_0),
        .O(sda_o_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'hAAA08A80)) 
    sda_o_reg_i_7
       (.I0(p_4_in),
        .I1(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg[9]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(sda_o_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000041)) 
    sda_o_reg_i_8
       (.I0(\FSM_sequential_phy_state_reg[0]_i_2_n_0 ),
        .I1(phy_state_reg[1]),
        .I2(phy_state_reg[0]),
        .I3(phy_state_reg[3]),
        .I4(phy_state_reg[2]),
        .I5(\FSM_sequential_phy_state_reg[3]_i_4_n_0 ),
        .O(sda_o_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    sda_o_reg_i_9
       (.I0(\FSM_onehot_state_reg_reg_n_0_[9] ),
        .I1(\bit_count_reg_reg_n_0_[2] ),
        .I2(\bit_count_reg_reg_n_0_[0] ),
        .I3(\bit_count_reg_reg_n_0_[1] ),
        .I4(\bit_count_reg_reg_n_0_[3] ),
        .O(sda_o_reg_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sda_o_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sda_o_reg_i_1_n_0),
        .Q(i2c_sda_t),
        .S(rst));
  MUXF7 sda_o_reg_reg_i_10
       (.I0(sda_o_reg_i_13_n_0),
        .I1(sda_o_reg_i_14_n_0),
        .O(sda_o_reg_reg_i_10_n_0),
        .S(\bit_count_reg_reg_n_0_[2] ));
endmodule

(* ORIG_REF_NAME = "i2c_master_axil" *) 
module design_1_i2c_master_axil_0_0_i2c_master_axil
   (Q,
    s_axil_wready,
    s_axil_rvalid_reg_reg_0,
    s_axil_arready,
    s_axil_rdata,
    i2c_sda_t,
    i2c_scl_o,
    s_axil_araddr,
    rst,
    clk,
    s_axil_wdata,
    i2c_sda_i,
    i2c_scl_i,
    s_axil_bready,
    s_axil_awvalid,
    s_axil_wvalid,
    s_axil_rready,
    s_axil_arvalid,
    s_axil_awaddr,
    s_axil_wstrb);
  output Q;
  output s_axil_wready;
  output s_axil_rvalid_reg_reg_0;
  output s_axil_arready;
  output [15:0]s_axil_rdata;
  output i2c_sda_t;
  output i2c_scl_o;
  input [1:0]s_axil_araddr;
  input rst;
  input clk;
  input [15:0]s_axil_wdata;
  input i2c_sda_i;
  input i2c_scl_i;
  input s_axil_bready;
  input s_axil_awvalid;
  input s_axil_wvalid;
  input s_axil_rready;
  input s_axil_arvalid;
  input [1:0]s_axil_awaddr;
  input [1:0]s_axil_wstrb;

  wire Q;
  wire [6:0]addr_reg;
  wire bus_active_int;
  wire bus_control_int;
  wire busy_int;
  wire clk;
  wire [0:0]cmd_address_next;
  wire cmd_fifo_inst_n_1;
  wire cmd_fifo_inst_n_11;
  wire cmd_fifo_inst_n_13;
  wire cmd_fifo_inst_n_14;
  wire cmd_fifo_inst_n_15;
  wire cmd_fifo_inst_n_16;
  wire cmd_fifo_inst_n_17;
  wire cmd_fifo_inst_n_18;
  wire cmd_fifo_inst_n_19;
  wire cmd_fifo_inst_n_20;
  wire cmd_fifo_inst_n_21;
  wire cmd_fifo_inst_n_22;
  wire cmd_fifo_overflow_next5_out;
  wire cmd_fifo_overflow_reg;
  wire cmd_read_int;
  wire cmd_ready_int;
  wire cmd_start_next;
  wire cmd_valid_int;
  wire cmd_valid_next;
  wire cmd_valid_reg;
  wire cmd_valid_reg_i_2_n_0;
  wire cmd_write_multiple_int;
  wire [12:0]data1;
  wire data_in_last_next;
  wire [0:0]data_in_next;
  wire data_in_ready_int;
  wire data_in_valid_int;
  wire data_in_valid_next;
  wire data_in_valid_reg;
  wire data_out_ready_reg;
  wire i2c_master_inst_n_16;
  wire i2c_master_inst_n_17;
  wire i2c_master_inst_n_19;
  wire i2c_master_inst_n_20;
  wire i2c_master_inst_n_21;
  wire i2c_master_inst_n_22;
  wire i2c_master_inst_n_23;
  wire i2c_master_inst_n_24;
  wire i2c_master_inst_n_29;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_sda_i;
  wire i2c_sda_t;
  wire [16:1]in13;
  wire [7:0]m_axis_data_tdata_reg;
  wire m_axis_data_tlast_reg;
  wire missed_ack_next;
  wire missed_ack_reg;
  wire missed_ack_reg_i_2_n_0;
  wire p_0_in__1;
  wire \prescale_reg[15]_i_1_n_0 ;
  wire \prescale_reg[7]_i_1_n_0 ;
  wire read_fifo_inst_n_12;
  wire read_fifo_inst_n_13;
  wire read_fifo_inst_n_4;
  wire rst;
  wire [1:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arready_next;
  wire s_axil_arvalid;
  wire [1:0]s_axil_awaddr;
  wire s_axil_awready_next;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire s_axil_bvalid_reg_i_1_n_0;
  wire [15:0]s_axil_rdata;
  wire [15:0]s_axil_rdata_next;
  wire s_axil_rready;
  wire s_axil_rvalid_reg_i_1_n_0;
  wire s_axil_rvalid_reg_reg_0;
  wire [15:0]s_axil_wdata;
  wire s_axil_wready;
  wire [1:0]s_axil_wstrb;
  wire s_axil_wvalid;
  wire [8:0]s_axis;
  wire [6:0]s_axis_cmd_address;
  wire s_axis_data_tlast;
  wire write_fifo_inst_n_10;
  wire write_fifo_inst_n_11;
  wire write_fifo_inst_n_12;
  wire write_fifo_inst_n_13;
  wire write_fifo_inst_n_4;
  wire write_fifo_inst_n_6;
  wire write_fifo_inst_n_7;
  wire write_fifo_inst_n_8;
  wire write_fifo_inst_n_9;
  wire write_fifo_overflow_next1_out;
  wire write_fifo_overflow_reg;

  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \cmd_address_reg[6]_i_1 
       (.I0(s_axil_wstrb[0]),
        .I1(s_axil_awaddr[0]),
        .I2(Q),
        .I3(s_axil_wvalid),
        .I4(s_axil_awvalid),
        .I5(s_axil_awaddr[1]),
        .O(cmd_address_next));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[0] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[0]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[1] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[1]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[2] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[2]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[3] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[3]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[4] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[4]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[5] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[5]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_address_reg_reg[6] 
       (.C(clk),
        .CE(cmd_address_next),
        .D(s_axil_wdata[6]),
        .Q(data1[6]),
        .R(1'b0));
  design_1_i2c_master_axil_0_0_axis_fifo cmd_fifo_inst
       (.D(cmd_fifo_inst_n_18),
        .E(i2c_master_inst_n_16),
        .\FSM_onehot_state_reg[8]_i_2 ({i2c_master_inst_n_19,i2c_master_inst_n_20,i2c_master_inst_n_21,i2c_master_inst_n_22,i2c_master_inst_n_23}),
        .\FSM_onehot_state_reg_reg[5] (cmd_fifo_inst_n_21),
        .\FSM_onehot_state_reg_reg[6] (cmd_fifo_inst_n_16),
        .\FSM_onehot_state_reg_reg[6]_0 (i2c_master_inst_n_29),
        .\FSM_onehot_state_reg_reg[6]_1 (i2c_master_inst_n_24),
        .Q({s_axis_cmd_address,cmd_read_int,cmd_write_multiple_int,cmd_fifo_inst_n_11}),
        .bus_active_int(bus_active_int),
        .clk(clk),
        .cmd_fifo_overflow_next5_out(cmd_fifo_overflow_next5_out),
        .cmd_fifo_overflow_reg(cmd_fifo_overflow_reg),
        .cmd_fifo_overflow_reg_reg(cmd_valid_reg_i_2_n_0),
        .cmd_ready_int(cmd_ready_int),
        .cmd_start_next(cmd_start_next),
        .cmd_valid_int(cmd_valid_int),
        .cmd_valid_next(cmd_valid_next),
        .cmd_valid_reg(cmd_valid_reg),
        .\m_axis_pipe_reg_reg[1][0]_0 (cmd_fifo_inst_n_14),
        .\m_axis_pipe_reg_reg[1][2]_0 (cmd_fifo_inst_n_20),
        .\m_axis_pipe_reg_reg[1][3]_0 (cmd_fifo_inst_n_1),
        .\m_axis_pipe_reg_reg[1][3]_1 (cmd_fifo_inst_n_15),
        .\m_axis_pipe_reg_reg[1][3]_2 (cmd_fifo_inst_n_17),
        .\m_axis_tvalid_pipe_reg_reg[1]_0 (cmd_fifo_inst_n_19),
        .rst(rst),
        .s_axil_awaddr(s_axil_awaddr[0]),
        .\s_axil_awaddr[2] (cmd_fifo_inst_n_22),
        .s_axis_tdata({data1[6:0],data1[8],data1[9],data1[10],data1[11],data1[12]}),
        .sda_o_reg_i_12_0({addr_reg[6],addr_reg[2:0]}),
        .\wr_ptr_reg_reg[4]_0 (cmd_fifo_inst_n_13));
  LUT5 #(
    .INIT(32'h20202000)) 
    cmd_fifo_overflow_reg_i_2
       (.I0(s_axil_awready_next),
        .I1(s_axil_awaddr[1]),
        .I2(s_axil_wstrb[1]),
        .I3(s_axil_awaddr[0]),
        .I4(s_axil_wdata[10]),
        .O(cmd_fifo_overflow_next5_out));
  FDRE #(
    .INIT(1'b0)) 
    cmd_fifo_overflow_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_fifo_inst_n_22),
        .Q(cmd_fifo_overflow_reg),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    cmd_read_reg_reg
       (.C(clk),
        .CE(cmd_start_next),
        .D(s_axil_wdata[9]),
        .Q(data1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_start_reg_reg
       (.C(clk),
        .CE(cmd_start_next),
        .D(s_axil_wdata[8]),
        .Q(data1[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    cmd_stop_reg_i_1
       (.I0(s_axil_wstrb[1]),
        .I1(s_axil_awaddr[0]),
        .I2(Q),
        .I3(s_axil_wvalid),
        .I4(s_axil_awvalid),
        .I5(s_axil_awaddr[1]),
        .O(cmd_start_next));
  FDRE #(
    .INIT(1'b0)) 
    cmd_stop_reg_reg
       (.C(clk),
        .CE(cmd_start_next),
        .D(s_axil_wdata[12]),
        .Q(data1[12]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    cmd_valid_reg_i_2
       (.I0(s_axil_wdata[10]),
        .I1(s_axil_wdata[9]),
        .I2(s_axil_wdata[12]),
        .I3(s_axil_wdata[8]),
        .I4(s_axil_wdata[11]),
        .O(cmd_valid_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_valid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_valid_next),
        .Q(cmd_valid_reg),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    cmd_write_multiple_reg_reg
       (.C(clk),
        .CE(cmd_start_next),
        .D(s_axil_wdata[11]),
        .Q(data1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_write_reg_reg
       (.C(clk),
        .CE(cmd_start_next),
        .D(s_axil_wdata[10]),
        .Q(data1[10]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    data_in_last_reg_i_1
       (.I0(s_axil_wstrb[1]),
        .I1(s_axil_wdata[9]),
        .O(data_in_last_next));
  FDRE #(
    .INIT(1'b0)) 
    data_in_last_reg_reg
       (.C(clk),
        .CE(data_in_next),
        .D(data_in_last_next),
        .Q(s_axis[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \data_in_reg[7]_i_1 
       (.I0(s_axil_wstrb[0]),
        .I1(s_axil_awaddr[1]),
        .I2(s_axil_awaddr[0]),
        .I3(Q),
        .I4(s_axil_wvalid),
        .I5(s_axil_awvalid),
        .O(data_in_next));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[0]),
        .Q(s_axis[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[1] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[1]),
        .Q(s_axis[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[2] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[2]),
        .Q(s_axis[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[3] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[3]),
        .Q(s_axis[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[4] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[4]),
        .Q(s_axis[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[5] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[5]),
        .Q(s_axis[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[6] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[6]),
        .Q(s_axis[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[7] 
       (.C(clk),
        .CE(data_in_next),
        .D(s_axil_wdata[7]),
        .Q(s_axis[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    data_in_valid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_in_valid_next),
        .Q(data_in_valid_reg),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_out_ready_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_fifo_inst_n_13),
        .Q(data_out_ready_reg),
        .R(1'b0));
  design_1_i2c_master_axil_0_0_i2c_master i2c_master_inst
       (.D(cmd_fifo_inst_n_18),
        .E(i2c_master_inst_n_16),
        .\FSM_onehot_state_reg_reg[0]_0 (cmd_fifo_inst_n_19),
        .\FSM_onehot_state_reg_reg[11]_0 ({i2c_master_inst_n_19,i2c_master_inst_n_20,i2c_master_inst_n_21,i2c_master_inst_n_22,i2c_master_inst_n_23}),
        .\FSM_onehot_state_reg_reg[11]_1 (cmd_fifo_inst_n_14),
        .\FSM_onehot_state_reg_reg[4]_0 (cmd_fifo_inst_n_21),
        .\FSM_onehot_state_reg_reg[5]_0 (cmd_fifo_inst_n_15),
        .\FSM_onehot_state_reg_reg[8]_0 (cmd_fifo_inst_n_1),
        .\FSM_onehot_state_reg_reg[8]_1 (cmd_fifo_inst_n_17),
        .Q({s_axis_cmd_address,cmd_read_int,cmd_write_multiple_int,cmd_fifo_inst_n_11}),
        .\addr_reg_reg[3]_0 (i2c_master_inst_n_29),
        .\addr_reg_reg[4]_0 (i2c_master_inst_n_24),
        .\addr_reg_reg[6]_0 ({addr_reg[6],addr_reg[2:0]}),
        .\bit_count_reg_reg[0]_0 (cmd_fifo_inst_n_16),
        .bus_active_int(bus_active_int),
        .bus_control_int(bus_control_int),
        .busy_int(busy_int),
        .clk(clk),
        .cmd_ready_int(cmd_ready_int),
        .cmd_valid_int(cmd_valid_int),
        .data_in_ready_int(data_in_ready_int),
        .data_in_valid_int(data_in_valid_int),
        .\delay_reg_reg[15]_0 (in13),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_t(i2c_sda_t),
        .last_reg_reg_0({s_axis_data_tlast,write_fifo_inst_n_6,write_fifo_inst_n_7,write_fifo_inst_n_8,write_fifo_inst_n_9,write_fifo_inst_n_10,write_fifo_inst_n_11,write_fifo_inst_n_12,write_fifo_inst_n_13}),
        .m_axis_data_tvalid_reg_reg_0(p_0_in__1),
        .m_axis_data_tvalid_reg_reg_1(read_fifo_inst_n_12),
        .missed_ack_next(missed_ack_next),
        .missed_ack_reg(missed_ack_reg),
        .missed_ack_reg_reg_0(missed_ack_reg_i_2_n_0),
        .rst(rst),
        .s_axil_awaddr(s_axil_awaddr[1]),
        .s_axil_wdata(s_axil_wdata[3]),
        .s_axil_wstrb(s_axil_wstrb[0]),
        .s_axis({m_axis_data_tlast_reg,m_axis_data_tdata_reg}),
        .s_axis_data_tready_reg_reg_0(i2c_master_inst_n_17),
        .sda_o_reg_i_2_0(cmd_fifo_inst_n_20));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    missed_ack_reg_i_2
       (.I0(s_axil_awvalid),
        .I1(s_axil_wvalid),
        .I2(Q),
        .I3(s_axil_awaddr[0]),
        .O(missed_ack_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    missed_ack_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(missed_ack_next),
        .Q(missed_ack_reg),
        .R(rst));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \prescale_reg[15]_i_1 
       (.I0(s_axil_wstrb[1]),
        .I1(s_axil_awaddr[0]),
        .I2(Q),
        .I3(s_axil_wvalid),
        .I4(s_axil_awvalid),
        .I5(s_axil_awaddr[1]),
        .O(\prescale_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \prescale_reg[7]_i_1 
       (.I0(s_axil_wstrb[0]),
        .I1(s_axil_awaddr[0]),
        .I2(Q),
        .I3(s_axil_wvalid),
        .I4(s_axil_awvalid),
        .I5(s_axil_awaddr[1]),
        .O(\prescale_reg[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \prescale_reg_reg[0] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[0]),
        .Q(in13[1]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[10] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[10]),
        .Q(in13[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[11] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[11]),
        .Q(in13[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[12] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[12]),
        .Q(in13[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[13] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[13]),
        .Q(in13[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[14] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[14]),
        .Q(in13[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[15] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[15]),
        .Q(in13[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[1] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[1]),
        .Q(in13[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[2] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[2]),
        .Q(in13[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[3] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[3]),
        .Q(in13[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[4] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[4]),
        .Q(in13[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[5] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[5]),
        .Q(in13[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[6] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[6]),
        .Q(in13[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[7] 
       (.C(clk),
        .CE(\prescale_reg[7]_i_1_n_0 ),
        .D(s_axil_wdata[7]),
        .Q(in13[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[8] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[8]),
        .Q(in13[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[9] 
       (.C(clk),
        .CE(\prescale_reg[15]_i_1_n_0 ),
        .D(s_axil_wdata[9]),
        .Q(in13[10]),
        .R(rst));
  design_1_i2c_master_axil_0_0_axis_fifo__parameterized0 read_fifo_inst
       (.D({s_axil_rdata_next[15:14],s_axil_rdata_next[9:8],read_fifo_inst_n_4,s_axil_rdata_next[6:0]}),
        .E(p_0_in__1),
        .Q({in13[16:15],in13[10:1]}),
        .bus_active_int(bus_active_int),
        .bus_control_int(bus_control_int),
        .busy_int(busy_int),
        .clk(clk),
        .cmd_valid_int(cmd_valid_int),
        .data_out_ready_reg(data_out_ready_reg),
        .data_out_ready_reg_reg(s_axil_rvalid_reg_reg_0),
        .missed_ack_reg(missed_ack_reg),
        .rst(rst),
        .s_axil_araddr(s_axil_araddr),
        .\s_axil_araddr[2] (read_fifo_inst_n_13),
        .s_axil_arvalid(s_axil_arvalid),
        .\s_axil_rdata_reg_reg[9] (cmd_fifo_inst_n_13),
        .s_axis({m_axis_data_tlast_reg,m_axis_data_tdata_reg}),
        .s_axis_tdata({data1[6:0],data1[8],data1[9]}),
        .\wr_ptr_reg_reg[4]_0 (read_fifo_inst_n_12));
  LUT2 #(
    .INIT(4'h2)) 
    s_axil_arready_reg_i_1
       (.I0(s_axil_arvalid),
        .I1(s_axil_rvalid_reg_reg_0),
        .O(s_axil_arready_next));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_arready_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axil_arready_next),
        .Q(s_axil_arready),
        .R(rst));
  LUT3 #(
    .INIT(8'h40)) 
    s_axil_awready_reg_i_1
       (.I0(Q),
        .I1(s_axil_wvalid),
        .I2(s_axil_awvalid),
        .O(s_axil_awready_next));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_awready_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axil_awready_next),
        .Q(s_axil_wready),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h55C0)) 
    s_axil_bvalid_reg_i_1
       (.I0(s_axil_bready),
        .I1(s_axil_awvalid),
        .I2(s_axil_wvalid),
        .I3(Q),
        .O(s_axil_bvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_bvalid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axil_bvalid_reg_i_1_n_0),
        .Q(Q),
        .R(rst));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s_axil_rdata_reg[10]_i_1 
       (.I0(in13[11]),
        .I1(s_axil_araddr[1]),
        .I2(data1[10]),
        .I3(s_axil_araddr[0]),
        .I4(cmd_fifo_overflow_reg),
        .O(s_axil_rdata_next[10]));
  LUT4 #(
    .INIT(16'hC202)) 
    \s_axil_rdata_reg[13]_i_1 
       (.I0(write_fifo_overflow_reg),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(in13[14]),
        .O(s_axil_rdata_next[13]));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[0] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[0]),
        .Q(s_axil_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[10] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[10]),
        .Q(s_axil_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[11] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[11]),
        .Q(s_axil_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[12] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[12]),
        .Q(s_axil_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[13] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[13]),
        .Q(s_axil_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[14] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[14]),
        .Q(s_axil_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[15] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[15]),
        .Q(s_axil_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[1] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[1]),
        .Q(s_axil_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[2] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[2]),
        .Q(s_axil_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[3] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[3]),
        .Q(s_axil_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[4] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[4]),
        .Q(s_axil_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[5] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[5]),
        .Q(s_axil_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[6] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[6]),
        .Q(s_axil_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[7] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(read_fifo_inst_n_4),
        .Q(s_axil_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[8] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[8]),
        .Q(s_axil_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[9] 
       (.C(clk),
        .CE(s_axil_arready_next),
        .D(s_axil_rdata_next[9]),
        .Q(s_axil_rdata[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    s_axil_rvalid_reg_i_1
       (.I0(s_axil_rready),
        .I1(s_axil_rvalid_reg_reg_0),
        .I2(s_axil_arvalid),
        .O(s_axil_rvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_rvalid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axil_rvalid_reg_i_1_n_0),
        .Q(s_axil_rvalid_reg_reg_0),
        .R(rst));
  design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0 write_fifo_inst
       (.D(s_axil_rdata_next[12:11]),
        .E(data_in_next),
        .Q(in13[13:12]),
        .clk(clk),
        .data_in_ready_int(data_in_ready_int),
        .data_in_valid_int(data_in_valid_int),
        .data_in_valid_next(data_in_valid_next),
        .data_in_valid_reg(data_in_valid_reg),
        .\m_axis_pipe_reg_reg[1][8]_0 ({s_axis_data_tlast,write_fifo_inst_n_6,write_fifo_inst_n_7,write_fifo_inst_n_8,write_fifo_inst_n_9,write_fifo_inst_n_10,write_fifo_inst_n_11,write_fifo_inst_n_12,write_fifo_inst_n_13}),
        .\m_axis_pipe_reg_reg[1][8]_1 (i2c_master_inst_n_17),
        .rst(rst),
        .s_axil_araddr(s_axil_araddr),
        .s_axil_awaddr(s_axil_awaddr[1]),
        .\s_axil_awaddr[3] (write_fifo_inst_n_4),
        .s_axis(s_axis),
        .s_axis_tdata({data1[11],data1[12]}),
        .write_fifo_overflow_next1_out(write_fifo_overflow_next1_out),
        .write_fifo_overflow_reg(write_fifo_overflow_reg));
  LUT6 #(
    .INIT(64'h4444400000004000)) 
    write_fifo_overflow_reg_i_2
       (.I0(s_axil_awaddr[0]),
        .I1(s_axil_awready_next),
        .I2(s_axil_wdata[13]),
        .I3(s_axil_wstrb[1]),
        .I4(s_axil_awaddr[1]),
        .I5(s_axil_wstrb[0]),
        .O(write_fifo_overflow_next1_out));
  FDRE #(
    .INIT(1'b0)) 
    write_fifo_overflow_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(write_fifo_inst_n_4),
        .Q(write_fifo_overflow_reg),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
