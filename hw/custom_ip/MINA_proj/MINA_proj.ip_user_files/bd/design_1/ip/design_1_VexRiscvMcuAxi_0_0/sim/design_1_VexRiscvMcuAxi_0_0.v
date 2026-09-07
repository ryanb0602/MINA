// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:VexRiscvMcuAxi:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_VexRiscvMcuAxi_0_0 (
  timerInterrupt,
  externalInterrupt,
  softwareInterrupt,
  iBusAxi_arvalid,
  iBusAxi_arready,
  iBusAxi_araddr,
  iBusAxi_arid,
  iBusAxi_arregion,
  iBusAxi_arlen,
  iBusAxi_arsize,
  iBusAxi_arburst,
  iBusAxi_arlock,
  iBusAxi_arcache,
  iBusAxi_arqos,
  iBusAxi_arprot,
  iBusAxi_rvalid,
  iBusAxi_rready,
  iBusAxi_rdata,
  iBusAxi_rid,
  iBusAxi_rresp,
  iBusAxi_rlast,
  dBusAxi_awvalid,
  dBusAxi_awready,
  dBusAxi_awaddr,
  dBusAxi_awid,
  dBusAxi_awregion,
  dBusAxi_awlen,
  dBusAxi_awsize,
  dBusAxi_awburst,
  dBusAxi_awlock,
  dBusAxi_awcache,
  dBusAxi_awqos,
  dBusAxi_awprot,
  dBusAxi_wvalid,
  dBusAxi_wready,
  dBusAxi_wdata,
  dBusAxi_wstrb,
  dBusAxi_wlast,
  dBusAxi_bvalid,
  dBusAxi_bready,
  dBusAxi_bid,
  dBusAxi_bresp,
  dBusAxi_arvalid,
  dBusAxi_arready,
  dBusAxi_araddr,
  dBusAxi_arid,
  dBusAxi_arregion,
  dBusAxi_arlen,
  dBusAxi_arsize,
  dBusAxi_arburst,
  dBusAxi_arlock,
  dBusAxi_arcache,
  dBusAxi_arqos,
  dBusAxi_arprot,
  dBusAxi_rvalid,
  dBusAxi_rready,
  dBusAxi_rdata,
  dBusAxi_rid,
  dBusAxi_rresp,
  dBusAxi_rlast,
  clk,
  reset
);

input wire timerInterrupt;
input wire externalInterrupt;
input wire softwareInterrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME iBusAxi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire iBusAxi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARREADY" *)
input wire iBusAxi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARADDR" *)
output wire [31 : 0] iBusAxi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARID" *)
output wire [0 : 0] iBusAxi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARREGION" *)
output wire [3 : 0] iBusAxi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARLEN" *)
output wire [7 : 0] iBusAxi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARSIZE" *)
output wire [2 : 0] iBusAxi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARBURST" *)
output wire [1 : 0] iBusAxi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARLOCK" *)
output wire [0 : 0] iBusAxi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARCACHE" *)
output wire [3 : 0] iBusAxi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARQOS" *)
output wire [3 : 0] iBusAxi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi ARPROT" *)
output wire [2 : 0] iBusAxi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi RVALID" *)
input wire iBusAxi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi RREADY" *)
output wire iBusAxi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi RDATA" *)
input wire [31 : 0] iBusAxi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi RID" *)
input wire [0 : 0] iBusAxi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi RRESP" *)
input wire [1 : 0] iBusAxi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 iBusAxi RLAST" *)
input wire iBusAxi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dBusAxi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire dBusAxi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWREADY" *)
input wire dBusAxi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWADDR" *)
output wire [31 : 0] dBusAxi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWID" *)
output wire [0 : 0] dBusAxi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWREGION" *)
output wire [3 : 0] dBusAxi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWLEN" *)
output wire [7 : 0] dBusAxi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWSIZE" *)
output wire [2 : 0] dBusAxi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWBURST" *)
output wire [1 : 0] dBusAxi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWLOCK" *)
output wire [0 : 0] dBusAxi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWCACHE" *)
output wire [3 : 0] dBusAxi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWQOS" *)
output wire [3 : 0] dBusAxi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi AWPROT" *)
output wire [2 : 0] dBusAxi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi WVALID" *)
output wire dBusAxi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi WREADY" *)
input wire dBusAxi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi WDATA" *)
output wire [31 : 0] dBusAxi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi WSTRB" *)
output wire [3 : 0] dBusAxi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi WLAST" *)
output wire dBusAxi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi BVALID" *)
input wire dBusAxi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi BREADY" *)
output wire dBusAxi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi BID" *)
input wire [0 : 0] dBusAxi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi BRESP" *)
input wire [1 : 0] dBusAxi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARVALID" *)
output wire dBusAxi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARREADY" *)
input wire dBusAxi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARADDR" *)
output wire [31 : 0] dBusAxi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARID" *)
output wire [0 : 0] dBusAxi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARREGION" *)
output wire [3 : 0] dBusAxi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARLEN" *)
output wire [7 : 0] dBusAxi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARSIZE" *)
output wire [2 : 0] dBusAxi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARBURST" *)
output wire [1 : 0] dBusAxi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARLOCK" *)
output wire [0 : 0] dBusAxi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARCACHE" *)
output wire [3 : 0] dBusAxi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARQOS" *)
output wire [3 : 0] dBusAxi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi ARPROT" *)
output wire [2 : 0] dBusAxi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi RVALID" *)
input wire dBusAxi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi RREADY" *)
output wire dBusAxi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi RDATA" *)
input wire [31 : 0] dBusAxi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi RID" *)
input wire [0 : 0] dBusAxi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi RRESP" *)
input wire [1 : 0] dBusAxi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dBusAxi RLAST" *)
input wire dBusAxi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF dBusAxi:iBusAxi, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;

  VexRiscvMcuAxi inst (
    .timerInterrupt(timerInterrupt),
    .externalInterrupt(externalInterrupt),
    .softwareInterrupt(softwareInterrupt),
    .iBusAxi_arvalid(iBusAxi_arvalid),
    .iBusAxi_arready(iBusAxi_arready),
    .iBusAxi_araddr(iBusAxi_araddr),
    .iBusAxi_arid(iBusAxi_arid),
    .iBusAxi_arregion(iBusAxi_arregion),
    .iBusAxi_arlen(iBusAxi_arlen),
    .iBusAxi_arsize(iBusAxi_arsize),
    .iBusAxi_arburst(iBusAxi_arburst),
    .iBusAxi_arlock(iBusAxi_arlock),
    .iBusAxi_arcache(iBusAxi_arcache),
    .iBusAxi_arqos(iBusAxi_arqos),
    .iBusAxi_arprot(iBusAxi_arprot),
    .iBusAxi_rvalid(iBusAxi_rvalid),
    .iBusAxi_rready(iBusAxi_rready),
    .iBusAxi_rdata(iBusAxi_rdata),
    .iBusAxi_rid(iBusAxi_rid),
    .iBusAxi_rresp(iBusAxi_rresp),
    .iBusAxi_rlast(iBusAxi_rlast),
    .dBusAxi_awvalid(dBusAxi_awvalid),
    .dBusAxi_awready(dBusAxi_awready),
    .dBusAxi_awaddr(dBusAxi_awaddr),
    .dBusAxi_awid(dBusAxi_awid),
    .dBusAxi_awregion(dBusAxi_awregion),
    .dBusAxi_awlen(dBusAxi_awlen),
    .dBusAxi_awsize(dBusAxi_awsize),
    .dBusAxi_awburst(dBusAxi_awburst),
    .dBusAxi_awlock(dBusAxi_awlock),
    .dBusAxi_awcache(dBusAxi_awcache),
    .dBusAxi_awqos(dBusAxi_awqos),
    .dBusAxi_awprot(dBusAxi_awprot),
    .dBusAxi_wvalid(dBusAxi_wvalid),
    .dBusAxi_wready(dBusAxi_wready),
    .dBusAxi_wdata(dBusAxi_wdata),
    .dBusAxi_wstrb(dBusAxi_wstrb),
    .dBusAxi_wlast(dBusAxi_wlast),
    .dBusAxi_bvalid(dBusAxi_bvalid),
    .dBusAxi_bready(dBusAxi_bready),
    .dBusAxi_bid(dBusAxi_bid),
    .dBusAxi_bresp(dBusAxi_bresp),
    .dBusAxi_arvalid(dBusAxi_arvalid),
    .dBusAxi_arready(dBusAxi_arready),
    .dBusAxi_araddr(dBusAxi_araddr),
    .dBusAxi_arid(dBusAxi_arid),
    .dBusAxi_arregion(dBusAxi_arregion),
    .dBusAxi_arlen(dBusAxi_arlen),
    .dBusAxi_arsize(dBusAxi_arsize),
    .dBusAxi_arburst(dBusAxi_arburst),
    .dBusAxi_arlock(dBusAxi_arlock),
    .dBusAxi_arcache(dBusAxi_arcache),
    .dBusAxi_arqos(dBusAxi_arqos),
    .dBusAxi_arprot(dBusAxi_arprot),
    .dBusAxi_rvalid(dBusAxi_rvalid),
    .dBusAxi_rready(dBusAxi_rready),
    .dBusAxi_rdata(dBusAxi_rdata),
    .dBusAxi_rid(dBusAxi_rid),
    .dBusAxi_rresp(dBusAxi_rresp),
    .dBusAxi_rlast(dBusAxi_rlast),
    .clk(clk),
    .reset(reset)
  );
endmodule
