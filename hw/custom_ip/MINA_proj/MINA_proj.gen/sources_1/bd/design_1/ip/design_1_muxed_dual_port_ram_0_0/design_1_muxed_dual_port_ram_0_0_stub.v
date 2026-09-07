// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Sep  6 16:33:31 2026
// Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_muxed_dual_port_ram_0_0/design_1_muxed_dual_port_ram_0_0_stub.v
// Design      : design_1_muxed_dual_port_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{}" *) (* CORE_GENERATION_INFO = "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=muxed_dual_port_ram,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=32,ADDR_WIDTH=12}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "muxed_dual_port_ram,Vivado 2025.2" *) 
module design_1_muxed_dual_port_ram_0_0(clk, mode_pin, axi_a_en, axi_a_we, axi_a_addr, 
  axi_a_din, axi_a_dout, axi_b_en, axi_b_we, axi_b_addr, axi_b_din, axi_b_dout, raw_b_en, raw_b_we, 
  raw_b_addr, raw_b_din, raw_b_dout)
/* synthesis syn_black_box black_box_pad_pin="mode_pin,axi_a_en,axi_a_we[3:0],axi_a_addr[11:0],axi_a_din[31:0],axi_a_dout[31:0],axi_b_en,axi_b_we[3:0],axi_b_addr[11:0],axi_b_din[31:0],axi_b_dout[31:0],raw_b_en,raw_b_we[3:0],raw_b_addr[11:0],raw_b_din[31:0],raw_b_dout[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input mode_pin;
  input axi_a_en;
  input [3:0]axi_a_we;
  input [11:0]axi_a_addr;
  input [31:0]axi_a_din;
  output [31:0]axi_a_dout;
  input axi_b_en;
  input [3:0]axi_b_we;
  input [11:0]axi_b_addr;
  input [31:0]axi_b_din;
  output [31:0]axi_b_dout;
  input raw_b_en;
  input [3:0]raw_b_we;
  input [11:0]raw_b_addr;
  input [31:0]raw_b_din;
  output [31:0]raw_b_dout;
endmodule
