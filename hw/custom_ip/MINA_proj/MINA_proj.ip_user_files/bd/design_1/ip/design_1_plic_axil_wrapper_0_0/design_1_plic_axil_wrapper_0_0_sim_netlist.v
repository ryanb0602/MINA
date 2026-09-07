// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Sep  6 16:34:03 2026
// Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
// Command     : write_verilog -force -mode funcsim
//               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_plic_axil_wrapper_0_0/design_1_plic_axil_wrapper_0_0_sim_netlist.v
// Design      : design_1_plic_axil_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_plic_axil_wrapper_0_0,plic_axil_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "plic_axil_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_plic_axil_wrapper_0_0
   (intr_pins,
    ext_intr,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input [7:0]intr_pins;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ext_intr INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ext_intr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [7:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire ext_intr;
  wire [7:0]intr_pins;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7:0] = \^S_AXI_RDATA [7:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_plic_axil_wrapper_0_0_plic_axil_wrapper inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[7:0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .ext_intr(ext_intr),
        .intr_pins(intr_pins));
endmodule

(* ORIG_REF_NAME = "plic" *) 
module design_1_plic_axil_wrapper_0_0_plic
   (SR,
    ext_intr,
    D,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    Q,
    \pending_reg[7]_0 ,
    intr_pins,
    S_AXI_ARADDR);
  output [0:0]SR;
  output ext_intr;
  output [7:0]D;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [7:0]Q;
  input [7:0]\pending_reg[7]_0 ;
  input [7:0]intr_pins;
  input [1:0]S_AXI_ARADDR;

  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire ext_intr;
  wire ext_intr_INST_0_i_1_n_0;
  wire [7:0]intr_pins;
  wire \pending[0]_i_1_n_0 ;
  wire \pending[1]_i_1_n_0 ;
  wire \pending[2]_i_1_n_0 ;
  wire \pending[3]_i_1_n_0 ;
  wire \pending[4]_i_1_n_0 ;
  wire \pending[5]_i_1_n_0 ;
  wire \pending[6]_i_1_n_0 ;
  wire \pending[7]_i_1_n_0 ;
  wire [7:0]pending_out;
  wire [7:0]\pending_reg[7]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[0]_i_1 
       (.I0(\pending_reg[7]_0 [0]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[0]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[1]_i_1 
       (.I0(\pending_reg[7]_0 [1]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[1]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_1 
       (.I0(\pending_reg[7]_0 [2]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[2]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_1 
       (.I0(\pending_reg[7]_0 [3]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[3]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_1 
       (.I0(\pending_reg[7]_0 [4]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[4]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_1 
       (.I0(\pending_reg[7]_0 [5]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[5]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_1 
       (.I0(\pending_reg[7]_0 [6]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[6]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_2 
       (.I0(\pending_reg[7]_0 [7]),
        .I1(S_AXI_ARADDR[0]),
        .I2(pending_out[7]),
        .I3(S_AXI_ARADDR[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    ext_intr_INST_0
       (.I0(pending_out[0]),
        .I1(pending_out[1]),
        .I2(pending_out[2]),
        .I3(pending_out[3]),
        .I4(ext_intr_INST_0_i_1_n_0),
        .O(ext_intr));
  LUT4 #(
    .INIT(16'h0001)) 
    ext_intr_INST_0_i_1
       (.I0(pending_out[6]),
        .I1(pending_out[7]),
        .I2(pending_out[5]),
        .I3(pending_out[4]),
        .O(ext_intr_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[0]_i_1 
       (.I0(Q[0]),
        .I1(pending_out[0]),
        .I2(\pending_reg[7]_0 [0]),
        .I3(intr_pins[0]),
        .O(\pending[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[1]_i_1 
       (.I0(Q[1]),
        .I1(pending_out[1]),
        .I2(\pending_reg[7]_0 [1]),
        .I3(intr_pins[1]),
        .O(\pending[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[2]_i_1 
       (.I0(Q[2]),
        .I1(pending_out[2]),
        .I2(\pending_reg[7]_0 [2]),
        .I3(intr_pins[2]),
        .O(\pending[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[3]_i_1 
       (.I0(Q[3]),
        .I1(pending_out[3]),
        .I2(\pending_reg[7]_0 [3]),
        .I3(intr_pins[3]),
        .O(\pending[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[4]_i_1 
       (.I0(Q[4]),
        .I1(pending_out[4]),
        .I2(\pending_reg[7]_0 [4]),
        .I3(intr_pins[4]),
        .O(\pending[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[5]_i_1 
       (.I0(Q[5]),
        .I1(pending_out[5]),
        .I2(\pending_reg[7]_0 [5]),
        .I3(intr_pins[5]),
        .O(\pending[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[6]_i_1 
       (.I0(Q[6]),
        .I1(pending_out[6]),
        .I2(\pending_reg[7]_0 [6]),
        .I3(intr_pins[6]),
        .O(\pending[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pending[7]_i_1 
       (.I0(Q[7]),
        .I1(pending_out[7]),
        .I2(\pending_reg[7]_0 [7]),
        .I3(intr_pins[7]),
        .O(\pending[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[0]_i_1_n_0 ),
        .Q(pending_out[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[1]_i_1_n_0 ),
        .Q(pending_out[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[2]_i_1_n_0 ),
        .Q(pending_out[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[3]_i_1_n_0 ),
        .Q(pending_out[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[4]_i_1_n_0 ),
        .Q(pending_out[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[5]_i_1_n_0 ),
        .Q(pending_out[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[6]_i_1_n_0 ),
        .Q(pending_out[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pending_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\pending[7]_i_1_n_0 ),
        .Q(pending_out[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "plic_axil_wrapper" *) 
module design_1_plic_axil_wrapper_0_0_plic_axil_wrapper
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    ext_intr,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ACLK,
    S_AXI_WDATA,
    intr_pins,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [7:0]S_AXI_RDATA;
  output ext_intr;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ACLK;
  input [7:0]S_AXI_WDATA;
  input [7:0]intr_pins;
  input [1:0]S_AXI_ARADDR;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [7:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [7:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire ext_intr;
  wire [7:0]intr_pins;
  wire [7:0]p_0_in;
  wire [7:0]p_1_in;
  wire [7:0]p_1_in_0;
  wire [7:0]pulse_claim;
  wire \pulse_claim[7]_i_1_n_0 ;
  wire [0:0]reg_intr_actv;
  wire reset;
  wire slv_reg_rden;

  design_1_plic_axil_wrapper_0_0_plic U_PLIC
       (.D(p_0_in),
        .Q(pulse_claim),
        .SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .ext_intr(ext_intr),
        .intr_pins(intr_pins),
        .\pending_reg[7]_0 (p_1_in_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(reset));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[7]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[0]),
        .Q(S_AXI_RDATA[0]),
        .R(reset));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[1]),
        .Q(S_AXI_RDATA[1]),
        .R(reset));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[2]),
        .Q(S_AXI_RDATA[2]),
        .R(reset));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[3]),
        .Q(S_AXI_RDATA[3]),
        .R(reset));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[4]),
        .Q(S_AXI_RDATA[4]),
        .R(reset));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[5]),
        .Q(S_AXI_RDATA[5]),
        .R(reset));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[6]),
        .Q(S_AXI_RDATA[6]),
        .R(reset));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(p_0_in[7]),
        .Q(S_AXI_RDATA[7]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[0]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[0]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[1]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[1]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[2]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[2]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[3]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[4]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[4]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[5]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[5]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[6]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[6]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pulse_claim[7]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .O(\pulse_claim[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pulse_claim[7]_i_2 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WDATA[7]),
        .I2(S_AXI_AWADDR[0]),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(pulse_claim[0]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(pulse_claim[1]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(pulse_claim[2]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(pulse_claim[3]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(pulse_claim[4]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(pulse_claim[5]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(pulse_claim[6]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_claim_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(pulse_claim[7]),
        .R(\pulse_claim[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_intr_actv[7]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWADDR[1]),
        .I5(S_AXI_AWADDR[0]),
        .O(reg_intr_actv));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[0]),
        .Q(p_1_in_0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[1]),
        .Q(p_1_in_0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[2]),
        .Q(p_1_in_0[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[3]),
        .Q(p_1_in_0[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[4]),
        .Q(p_1_in_0[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[5]),
        .Q(p_1_in_0[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[6]),
        .Q(p_1_in_0[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_intr_actv_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(reg_intr_actv),
        .D(S_AXI_WDATA[7]),
        .Q(p_1_in_0[7]),
        .R(reset));
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
