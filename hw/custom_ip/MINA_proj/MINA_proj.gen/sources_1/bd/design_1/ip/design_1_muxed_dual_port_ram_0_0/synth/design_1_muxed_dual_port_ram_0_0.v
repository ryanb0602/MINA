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


// IP VLNV: xilinx.com:module_ref:muxed_dual_port_ram:1.0
// IP Revision: 1

(* X_CORE_INFO = "muxed_dual_port_ram,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{}" *)
(* CORE_GENERATION_INFO = "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=muxed_dual_port_ram,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=32,ADDR_WIDTH=12}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_muxed_dual_port_ram_0_0 (
  clk,
  mode_pin,
  axi_a_en,
  axi_a_we,
  axi_a_addr,
  axi_a_din,
  axi_a_dout,
  axi_b_en,
  axi_b_we,
  axi_b_addr,
  axi_b_din,
  axi_b_dout,
  raw_b_en,
  raw_b_we,
  raw_b_addr,
  raw_b_din,
  raw_b_dout
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
input wire clk;
input wire mode_pin;
input wire axi_a_en;
input wire [3 : 0] axi_a_we;
input wire [11 : 0] axi_a_addr;
input wire [31 : 0] axi_a_din;
output wire [31 : 0] axi_a_dout;
input wire axi_b_en;
input wire [3 : 0] axi_b_we;
input wire [11 : 0] axi_b_addr;
input wire [31 : 0] axi_b_din;
output wire [31 : 0] axi_b_dout;
input wire raw_b_en;
input wire [3 : 0] raw_b_we;
input wire [11 : 0] raw_b_addr;
input wire [31 : 0] raw_b_din;
output wire [31 : 0] raw_b_dout;

  muxed_dual_port_ram #(
    .DATA_WIDTH(32),
    .ADDR_WIDTH(12)
  ) inst (
    .clk(clk),
    .mode_pin(mode_pin),
    .axi_a_en(axi_a_en),
    .axi_a_we(axi_a_we),
    .axi_a_addr(axi_a_addr),
    .axi_a_din(axi_a_din),
    .axi_a_dout(axi_a_dout),
    .axi_b_en(axi_b_en),
    .axi_b_we(axi_b_we),
    .axi_b_addr(axi_b_addr),
    .axi_b_din(axi_b_din),
    .axi_b_dout(axi_b_dout),
    .raw_b_en(raw_b_en),
    .raw_b_we(raw_b_we),
    .raw_b_addr(raw_b_addr),
    .raw_b_din(raw_b_din),
    .raw_b_dout(raw_b_dout)
  );
endmodule
