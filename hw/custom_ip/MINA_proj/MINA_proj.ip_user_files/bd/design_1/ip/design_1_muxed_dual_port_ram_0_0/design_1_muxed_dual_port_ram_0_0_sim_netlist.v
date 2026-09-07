// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Sep  6 16:33:31 2026
// Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
// Command     : write_verilog -force -mode funcsim
//               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_muxed_dual_port_ram_0_0/design_1_muxed_dual_port_ram_0_0_sim_netlist.v
// Design      : design_1_muxed_dual_port_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "muxed_dual_port_ram,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_muxed_dual_port_ram_0_0
   (clk,
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
    raw_b_dout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
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

  wire [11:0]axi_a_addr;
  wire [31:0]axi_a_din;
  wire [31:0]axi_a_dout;
  wire axi_a_en;
  wire [3:0]axi_a_we;
  wire [11:0]axi_b_addr;
  wire [31:0]axi_b_din;
  wire axi_b_en;
  wire [3:0]axi_b_we;
  wire clk;
  wire inst_n_0;
  wire inst_n_1;
  wire inst_n_2;
  wire inst_n_3;
  wire inst_n_4;
  wire inst_n_40;
  wire inst_n_41;
  wire inst_n_42;
  wire inst_n_43;
  wire inst_n_44;
  wire inst_n_45;
  wire inst_n_46;
  wire inst_n_47;
  wire inst_n_48;
  wire inst_n_49;
  wire inst_n_5;
  wire inst_n_50;
  wire inst_n_51;
  wire inst_n_52;
  wire inst_n_53;
  wire inst_n_54;
  wire inst_n_55;
  wire inst_n_56;
  wire inst_n_57;
  wire inst_n_58;
  wire inst_n_59;
  wire inst_n_6;
  wire inst_n_60;
  wire inst_n_61;
  wire inst_n_62;
  wire inst_n_63;
  wire inst_n_7;
  wire mode_pin;
  wire port_b_en;
  wire [11:0]raw_b_addr;
  wire [31:0]raw_b_din;
  wire [31:0]raw_b_dout;
  wire \raw_b_dout[0]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[10]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[11]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[12]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[13]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[14]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[15]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[16]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[17]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[18]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[19]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[1]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[20]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[21]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[22]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[23]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[24]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[25]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[26]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[27]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[28]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[29]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[2]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[30]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[31]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[31]_INST_0_i_2_n_0 ;
  wire \raw_b_dout[3]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[4]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[5]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[6]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[7]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[8]_INST_0_i_1_n_0 ;
  wire \raw_b_dout[9]_INST_0_i_1_n_0 ;
  wire raw_b_en;
  wire [3:0]raw_b_we;

  assign axi_b_dout[31:0] = raw_b_dout;
  design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram inst
       (.DOADO({inst_n_0,inst_n_1,inst_n_2,inst_n_3,inst_n_4,inst_n_5,inst_n_6,inst_n_7}),
        .axi_a_addr(axi_a_addr),
        .axi_a_din(axi_a_din),
        .axi_a_dout(axi_a_dout),
        .axi_a_en(axi_a_en),
        .axi_a_we(axi_a_we),
        .axi_b_addr(axi_b_addr),
        .axi_b_din(axi_b_din),
        .axi_b_en(axi_b_en),
        .axi_b_we(axi_b_we),
        .clk(clk),
        .mode_pin(mode_pin),
        .ram_reg_1_0({inst_n_40,inst_n_41,inst_n_42,inst_n_43,inst_n_44,inst_n_45,inst_n_46,inst_n_47}),
        .ram_reg_2_0({inst_n_48,inst_n_49,inst_n_50,inst_n_51,inst_n_52,inst_n_53,inst_n_54,inst_n_55}),
        .ram_reg_3_0({inst_n_56,inst_n_57,inst_n_58,inst_n_59,inst_n_60,inst_n_61,inst_n_62,inst_n_63}),
        .raw_b_addr(raw_b_addr),
        .raw_b_din(raw_b_din),
        .raw_b_dout(raw_b_dout),
        .\raw_b_dout[0]_0 (\raw_b_dout[0]_INST_0_i_1_n_0 ),
        .raw_b_dout_0_sp_1(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .raw_b_dout_10_sp_1(\raw_b_dout[10]_INST_0_i_1_n_0 ),
        .raw_b_dout_11_sp_1(\raw_b_dout[11]_INST_0_i_1_n_0 ),
        .raw_b_dout_12_sp_1(\raw_b_dout[12]_INST_0_i_1_n_0 ),
        .raw_b_dout_13_sp_1(\raw_b_dout[13]_INST_0_i_1_n_0 ),
        .raw_b_dout_14_sp_1(\raw_b_dout[14]_INST_0_i_1_n_0 ),
        .raw_b_dout_15_sp_1(\raw_b_dout[15]_INST_0_i_1_n_0 ),
        .raw_b_dout_16_sp_1(\raw_b_dout[16]_INST_0_i_1_n_0 ),
        .raw_b_dout_17_sp_1(\raw_b_dout[17]_INST_0_i_1_n_0 ),
        .raw_b_dout_18_sp_1(\raw_b_dout[18]_INST_0_i_1_n_0 ),
        .raw_b_dout_19_sp_1(\raw_b_dout[19]_INST_0_i_1_n_0 ),
        .raw_b_dout_1_sp_1(\raw_b_dout[1]_INST_0_i_1_n_0 ),
        .raw_b_dout_20_sp_1(\raw_b_dout[20]_INST_0_i_1_n_0 ),
        .raw_b_dout_21_sp_1(\raw_b_dout[21]_INST_0_i_1_n_0 ),
        .raw_b_dout_22_sp_1(\raw_b_dout[22]_INST_0_i_1_n_0 ),
        .raw_b_dout_23_sp_1(\raw_b_dout[23]_INST_0_i_1_n_0 ),
        .raw_b_dout_24_sp_1(\raw_b_dout[24]_INST_0_i_1_n_0 ),
        .raw_b_dout_25_sp_1(\raw_b_dout[25]_INST_0_i_1_n_0 ),
        .raw_b_dout_26_sp_1(\raw_b_dout[26]_INST_0_i_1_n_0 ),
        .raw_b_dout_27_sp_1(\raw_b_dout[27]_INST_0_i_1_n_0 ),
        .raw_b_dout_28_sp_1(\raw_b_dout[28]_INST_0_i_1_n_0 ),
        .raw_b_dout_29_sp_1(\raw_b_dout[29]_INST_0_i_1_n_0 ),
        .raw_b_dout_2_sp_1(\raw_b_dout[2]_INST_0_i_1_n_0 ),
        .raw_b_dout_30_sp_1(\raw_b_dout[30]_INST_0_i_1_n_0 ),
        .raw_b_dout_31_sp_1(\raw_b_dout[31]_INST_0_i_2_n_0 ),
        .raw_b_dout_3_sp_1(\raw_b_dout[3]_INST_0_i_1_n_0 ),
        .raw_b_dout_4_sp_1(\raw_b_dout[4]_INST_0_i_1_n_0 ),
        .raw_b_dout_5_sp_1(\raw_b_dout[5]_INST_0_i_1_n_0 ),
        .raw_b_dout_6_sp_1(\raw_b_dout[6]_INST_0_i_1_n_0 ),
        .raw_b_dout_7_sp_1(\raw_b_dout[7]_INST_0_i_1_n_0 ),
        .raw_b_dout_8_sp_1(\raw_b_dout[8]_INST_0_i_1_n_0 ),
        .raw_b_dout_9_sp_1(\raw_b_dout[9]_INST_0_i_1_n_0 ),
        .raw_b_en(raw_b_en),
        .raw_b_we(raw_b_we));
  FDRE \raw_b_dout[0]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_7),
        .Q(\raw_b_dout[0]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[10]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_45),
        .Q(\raw_b_dout[10]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[11]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_44),
        .Q(\raw_b_dout[11]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[12]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_43),
        .Q(\raw_b_dout[12]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[13]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_42),
        .Q(\raw_b_dout[13]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[14]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_41),
        .Q(\raw_b_dout[14]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[15]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_40),
        .Q(\raw_b_dout[15]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[16]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_55),
        .Q(\raw_b_dout[16]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[17]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_54),
        .Q(\raw_b_dout[17]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[18]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_53),
        .Q(\raw_b_dout[18]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[19]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_52),
        .Q(\raw_b_dout[19]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[1]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_6),
        .Q(\raw_b_dout[1]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[20]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_51),
        .Q(\raw_b_dout[20]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[21]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_50),
        .Q(\raw_b_dout[21]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[22]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_49),
        .Q(\raw_b_dout[22]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[23]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_48),
        .Q(\raw_b_dout[23]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[24]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_63),
        .Q(\raw_b_dout[24]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[25]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_62),
        .Q(\raw_b_dout[25]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[26]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_61),
        .Q(\raw_b_dout[26]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[27]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_60),
        .Q(\raw_b_dout[27]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[28]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_59),
        .Q(\raw_b_dout[28]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[29]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_58),
        .Q(\raw_b_dout[29]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[2]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_5),
        .Q(\raw_b_dout[2]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[30]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_57),
        .Q(\raw_b_dout[30]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \raw_b_dout[31]_INST_0_i_1 
       (.C(clk),
        .CE(1'b1),
        .D(port_b_en),
        .Q(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[31]_INST_0_i_2 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_56),
        .Q(\raw_b_dout[31]_INST_0_i_2_n_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[31]_INST_0_i_3 
       (.I0(raw_b_en),
        .I1(mode_pin),
        .I2(axi_b_en),
        .O(port_b_en));
  FDRE \raw_b_dout[3]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_4),
        .Q(\raw_b_dout[3]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[4]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_3),
        .Q(\raw_b_dout[4]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[5]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_2),
        .Q(\raw_b_dout[5]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[6]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_1),
        .Q(\raw_b_dout[6]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[7]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_0),
        .Q(\raw_b_dout[7]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[8]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_47),
        .Q(\raw_b_dout[8]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \raw_b_dout[9]_INST_0_i_1 
       (.C(clk),
        .CE(\raw_b_dout[31]_INST_0_i_1_n_0 ),
        .D(inst_n_46),
        .Q(\raw_b_dout[9]_INST_0_i_1_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "muxed_dual_port_ram" *) 
module design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram
   (DOADO,
    axi_a_dout,
    ram_reg_1_0,
    ram_reg_2_0,
    ram_reg_3_0,
    raw_b_dout,
    clk,
    axi_a_en,
    axi_a_addr,
    axi_a_din,
    axi_a_we,
    raw_b_dout_0_sp_1,
    \raw_b_dout[0]_0 ,
    raw_b_dout_1_sp_1,
    raw_b_dout_2_sp_1,
    raw_b_dout_3_sp_1,
    raw_b_dout_4_sp_1,
    raw_b_dout_5_sp_1,
    raw_b_dout_6_sp_1,
    raw_b_dout_7_sp_1,
    raw_b_dout_8_sp_1,
    raw_b_dout_9_sp_1,
    raw_b_dout_10_sp_1,
    raw_b_dout_11_sp_1,
    raw_b_dout_12_sp_1,
    raw_b_dout_13_sp_1,
    raw_b_dout_14_sp_1,
    raw_b_dout_15_sp_1,
    raw_b_dout_16_sp_1,
    raw_b_dout_17_sp_1,
    raw_b_dout_18_sp_1,
    raw_b_dout_19_sp_1,
    raw_b_dout_20_sp_1,
    raw_b_dout_21_sp_1,
    raw_b_dout_22_sp_1,
    raw_b_dout_23_sp_1,
    raw_b_dout_24_sp_1,
    raw_b_dout_25_sp_1,
    raw_b_dout_26_sp_1,
    raw_b_dout_27_sp_1,
    raw_b_dout_28_sp_1,
    raw_b_dout_29_sp_1,
    raw_b_dout_30_sp_1,
    raw_b_dout_31_sp_1,
    axi_b_we,
    raw_b_we,
    axi_b_en,
    mode_pin,
    raw_b_en,
    raw_b_din,
    axi_b_din,
    raw_b_addr,
    axi_b_addr);
  output [7:0]DOADO;
  output [31:0]axi_a_dout;
  output [7:0]ram_reg_1_0;
  output [7:0]ram_reg_2_0;
  output [7:0]ram_reg_3_0;
  output [31:0]raw_b_dout;
  input clk;
  input axi_a_en;
  input [11:0]axi_a_addr;
  input [31:0]axi_a_din;
  input [3:0]axi_a_we;
  input raw_b_dout_0_sp_1;
  input \raw_b_dout[0]_0 ;
  input raw_b_dout_1_sp_1;
  input raw_b_dout_2_sp_1;
  input raw_b_dout_3_sp_1;
  input raw_b_dout_4_sp_1;
  input raw_b_dout_5_sp_1;
  input raw_b_dout_6_sp_1;
  input raw_b_dout_7_sp_1;
  input raw_b_dout_8_sp_1;
  input raw_b_dout_9_sp_1;
  input raw_b_dout_10_sp_1;
  input raw_b_dout_11_sp_1;
  input raw_b_dout_12_sp_1;
  input raw_b_dout_13_sp_1;
  input raw_b_dout_14_sp_1;
  input raw_b_dout_15_sp_1;
  input raw_b_dout_16_sp_1;
  input raw_b_dout_17_sp_1;
  input raw_b_dout_18_sp_1;
  input raw_b_dout_19_sp_1;
  input raw_b_dout_20_sp_1;
  input raw_b_dout_21_sp_1;
  input raw_b_dout_22_sp_1;
  input raw_b_dout_23_sp_1;
  input raw_b_dout_24_sp_1;
  input raw_b_dout_25_sp_1;
  input raw_b_dout_26_sp_1;
  input raw_b_dout_27_sp_1;
  input raw_b_dout_28_sp_1;
  input raw_b_dout_29_sp_1;
  input raw_b_dout_30_sp_1;
  input raw_b_dout_31_sp_1;
  input [3:0]axi_b_we;
  input [3:0]raw_b_we;
  input axi_b_en;
  input mode_pin;
  input raw_b_en;
  input [31:0]raw_b_din;
  input [31:0]axi_b_din;
  input [11:0]raw_b_addr;
  input [11:0]axi_b_addr;

  wire [7:0]DOADO;
  wire [11:0]axi_a_addr;
  wire [31:0]axi_a_din;
  wire [31:0]axi_a_dout;
  wire axi_a_en;
  wire [3:0]axi_a_we;
  wire [11:0]axi_b_addr;
  wire [31:0]axi_b_din;
  wire axi_b_en;
  wire [3:0]axi_b_we;
  wire clk;
  wire mode_pin;
  wire [24:0]p_3_in;
  wire [11:0]port_b_addr;
  wire [23:0]port_b_din;
  wire [7:0]ram_reg_1_0;
  wire [7:0]ram_reg_2_0;
  wire [7:0]ram_reg_3_0;
  wire ram_reg_3_i_13_n_0;
  wire ram_reg_3_i_14_n_0;
  wire ram_reg_3_i_15_n_0;
  wire ram_reg_3_i_16_n_0;
  wire ram_reg_3_i_17_n_0;
  wire ram_reg_3_i_18_n_0;
  wire ram_reg_3_i_19_n_0;
  wire ram_reg_3_i_20_n_0;
  wire [11:0]raw_b_addr;
  wire [31:0]raw_b_din;
  wire [31:0]raw_b_dout;
  wire \raw_b_dout[0]_0 ;
  wire raw_b_dout_0_sn_1;
  wire raw_b_dout_10_sn_1;
  wire raw_b_dout_11_sn_1;
  wire raw_b_dout_12_sn_1;
  wire raw_b_dout_13_sn_1;
  wire raw_b_dout_14_sn_1;
  wire raw_b_dout_15_sn_1;
  wire raw_b_dout_16_sn_1;
  wire raw_b_dout_17_sn_1;
  wire raw_b_dout_18_sn_1;
  wire raw_b_dout_19_sn_1;
  wire raw_b_dout_1_sn_1;
  wire raw_b_dout_20_sn_1;
  wire raw_b_dout_21_sn_1;
  wire raw_b_dout_22_sn_1;
  wire raw_b_dout_23_sn_1;
  wire raw_b_dout_24_sn_1;
  wire raw_b_dout_25_sn_1;
  wire raw_b_dout_26_sn_1;
  wire raw_b_dout_27_sn_1;
  wire raw_b_dout_28_sn_1;
  wire raw_b_dout_29_sn_1;
  wire raw_b_dout_2_sn_1;
  wire raw_b_dout_30_sn_1;
  wire raw_b_dout_31_sn_1;
  wire raw_b_dout_3_sn_1;
  wire raw_b_dout_4_sn_1;
  wire raw_b_dout_5_sn_1;
  wire raw_b_dout_6_sn_1;
  wire raw_b_dout_7_sn_1;
  wire raw_b_dout_8_sn_1;
  wire raw_b_dout_9_sn_1;
  wire raw_b_en;
  wire [3:0]raw_b_we;
  wire NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_ram_reg_0_DIADI_UNCONNECTED;
  wire [31:8]NLW_ram_reg_0_DIBDI_UNCONNECTED;
  wire [3:1]NLW_ram_reg_0_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_ram_reg_0_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_ram_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_SBITERR_UNCONNECTED;
  wire [31:8]NLW_ram_reg_1_DIADI_UNCONNECTED;
  wire [31:8]NLW_ram_reg_1_DIBDI_UNCONNECTED;
  wire [3:1]NLW_ram_reg_1_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_ram_reg_1_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_ram_reg_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_SBITERR_UNCONNECTED;
  wire [31:8]NLW_ram_reg_2_DIADI_UNCONNECTED;
  wire [31:8]NLW_ram_reg_2_DIBDI_UNCONNECTED;
  wire [3:1]NLW_ram_reg_2_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_ram_reg_2_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_ram_reg_2_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_SBITERR_UNCONNECTED;
  wire [31:8]NLW_ram_reg_3_DIADI_UNCONNECTED;
  wire [31:8]NLW_ram_reg_3_DIBDI_UNCONNECTED;
  wire [3:1]NLW_ram_reg_3_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_ram_reg_3_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_ram_reg_3_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_3_RDADDRECC_UNCONNECTED;

  assign raw_b_dout_0_sn_1 = raw_b_dout_0_sp_1;
  assign raw_b_dout_10_sn_1 = raw_b_dout_10_sp_1;
  assign raw_b_dout_11_sn_1 = raw_b_dout_11_sp_1;
  assign raw_b_dout_12_sn_1 = raw_b_dout_12_sp_1;
  assign raw_b_dout_13_sn_1 = raw_b_dout_13_sp_1;
  assign raw_b_dout_14_sn_1 = raw_b_dout_14_sp_1;
  assign raw_b_dout_15_sn_1 = raw_b_dout_15_sp_1;
  assign raw_b_dout_16_sn_1 = raw_b_dout_16_sp_1;
  assign raw_b_dout_17_sn_1 = raw_b_dout_17_sp_1;
  assign raw_b_dout_18_sn_1 = raw_b_dout_18_sp_1;
  assign raw_b_dout_19_sn_1 = raw_b_dout_19_sp_1;
  assign raw_b_dout_1_sn_1 = raw_b_dout_1_sp_1;
  assign raw_b_dout_20_sn_1 = raw_b_dout_20_sp_1;
  assign raw_b_dout_21_sn_1 = raw_b_dout_21_sp_1;
  assign raw_b_dout_22_sn_1 = raw_b_dout_22_sp_1;
  assign raw_b_dout_23_sn_1 = raw_b_dout_23_sp_1;
  assign raw_b_dout_24_sn_1 = raw_b_dout_24_sp_1;
  assign raw_b_dout_25_sn_1 = raw_b_dout_25_sp_1;
  assign raw_b_dout_26_sn_1 = raw_b_dout_26_sp_1;
  assign raw_b_dout_27_sn_1 = raw_b_dout_27_sp_1;
  assign raw_b_dout_28_sn_1 = raw_b_dout_28_sp_1;
  assign raw_b_dout_29_sn_1 = raw_b_dout_29_sp_1;
  assign raw_b_dout_2_sn_1 = raw_b_dout_2_sp_1;
  assign raw_b_dout_30_sn_1 = raw_b_dout_30_sp_1;
  assign raw_b_dout_31_sn_1 = raw_b_dout_31_sp_1;
  assign raw_b_dout_3_sn_1 = raw_b_dout_3_sp_1;
  assign raw_b_dout_4_sn_1 = raw_b_dout_4_sp_1;
  assign raw_b_dout_5_sn_1 = raw_b_dout_5_sp_1;
  assign raw_b_dout_6_sn_1 = raw_b_dout_6_sp_1;
  assign raw_b_dout_7_sn_1 = raw_b_dout_7_sp_1;
  assign raw_b_dout_8_sn_1 = raw_b_dout_8_sp_1;
  assign raw_b_dout_9_sn_1 = raw_b_dout_9_sp_1;
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "design_1_muxed_dual_port_ram_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg_0
       (.ADDRARDADDR({1'b1,port_b_addr,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,axi_a_addr,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_ram_reg_0_DBITERR_UNCONNECTED),
        .DIADI({NLW_ram_reg_0_DIADI_UNCONNECTED[31:8],port_b_din[7:0]}),
        .DIBDI({NLW_ram_reg_0_DIBDI_UNCONNECTED[31:8],axi_a_din[7:0]}),
        .DIPADIP({NLW_ram_reg_0_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_ram_reg_0_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_ram_reg_0_DOADO_UNCONNECTED[31:8],DOADO}),
        .DOBDO({NLW_ram_reg_0_DOBDO_UNCONNECTED[31:8],axi_a_dout[7:0]}),
        .DOPADOP(NLW_ram_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(axi_a_en),
        .INJECTDBITERR(NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,p_3_in[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_a_we[0]}));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_1
       (.I0(raw_b_din[7]),
        .I1(axi_b_din[7]),
        .I2(mode_pin),
        .O(port_b_din[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_2
       (.I0(raw_b_din[6]),
        .I1(axi_b_din[6]),
        .I2(mode_pin),
        .O(port_b_din[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_3
       (.I0(raw_b_din[5]),
        .I1(axi_b_din[5]),
        .I2(mode_pin),
        .O(port_b_din[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_4
       (.I0(raw_b_din[4]),
        .I1(axi_b_din[4]),
        .I2(mode_pin),
        .O(port_b_din[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_5
       (.I0(raw_b_din[3]),
        .I1(axi_b_din[3]),
        .I2(mode_pin),
        .O(port_b_din[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_6
       (.I0(raw_b_din[2]),
        .I1(axi_b_din[2]),
        .I2(mode_pin),
        .O(port_b_din[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_7
       (.I0(raw_b_din[1]),
        .I1(axi_b_din[1]),
        .I2(mode_pin),
        .O(port_b_din[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_0_i_8
       (.I0(raw_b_din[0]),
        .I1(axi_b_din[0]),
        .I2(mode_pin),
        .O(port_b_din[0]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    ram_reg_0_i_9
       (.I0(axi_b_we[0]),
        .I1(raw_b_we[0]),
        .I2(axi_b_en),
        .I3(mode_pin),
        .I4(raw_b_en),
        .O(p_3_in[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "design_1_muxed_dual_port_ram_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg_1
       (.ADDRARDADDR({1'b1,port_b_addr,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,axi_a_addr,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_ram_reg_1_DBITERR_UNCONNECTED),
        .DIADI({NLW_ram_reg_1_DIADI_UNCONNECTED[31:8],port_b_din[15:8]}),
        .DIBDI({NLW_ram_reg_1_DIBDI_UNCONNECTED[31:8],axi_a_din[15:8]}),
        .DIPADIP({NLW_ram_reg_1_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_ram_reg_1_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_ram_reg_1_DOADO_UNCONNECTED[31:8],ram_reg_1_0}),
        .DOBDO({NLW_ram_reg_1_DOBDO_UNCONNECTED[31:8],axi_a_dout[15:8]}),
        .DOPADOP(NLW_ram_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(axi_a_en),
        .INJECTDBITERR(NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,p_3_in[8]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_a_we[1]}));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_1
       (.I0(raw_b_din[15]),
        .I1(axi_b_din[15]),
        .I2(mode_pin),
        .O(port_b_din[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_2
       (.I0(raw_b_din[14]),
        .I1(axi_b_din[14]),
        .I2(mode_pin),
        .O(port_b_din[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_3
       (.I0(raw_b_din[13]),
        .I1(axi_b_din[13]),
        .I2(mode_pin),
        .O(port_b_din[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_4
       (.I0(raw_b_din[12]),
        .I1(axi_b_din[12]),
        .I2(mode_pin),
        .O(port_b_din[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_5
       (.I0(raw_b_din[11]),
        .I1(axi_b_din[11]),
        .I2(mode_pin),
        .O(port_b_din[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_6
       (.I0(raw_b_din[10]),
        .I1(axi_b_din[10]),
        .I2(mode_pin),
        .O(port_b_din[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_7
       (.I0(raw_b_din[9]),
        .I1(axi_b_din[9]),
        .I2(mode_pin),
        .O(port_b_din[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_1_i_8
       (.I0(raw_b_din[8]),
        .I1(axi_b_din[8]),
        .I2(mode_pin),
        .O(port_b_din[8]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    ram_reg_1_i_9
       (.I0(axi_b_we[1]),
        .I1(raw_b_we[1]),
        .I2(axi_b_en),
        .I3(mode_pin),
        .I4(raw_b_en),
        .O(p_3_in[8]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "design_1_muxed_dual_port_ram_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg_2
       (.ADDRARDADDR({1'b1,port_b_addr,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,axi_a_addr,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_ram_reg_2_DBITERR_UNCONNECTED),
        .DIADI({NLW_ram_reg_2_DIADI_UNCONNECTED[31:8],port_b_din[23:16]}),
        .DIBDI({NLW_ram_reg_2_DIBDI_UNCONNECTED[31:8],axi_a_din[23:16]}),
        .DIPADIP({NLW_ram_reg_2_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_ram_reg_2_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_ram_reg_2_DOADO_UNCONNECTED[31:8],ram_reg_2_0}),
        .DOBDO({NLW_ram_reg_2_DOBDO_UNCONNECTED[31:8],axi_a_dout[23:16]}),
        .DOPADOP(NLW_ram_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(axi_a_en),
        .INJECTDBITERR(NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,p_3_in[16]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_a_we[2]}));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_1
       (.I0(raw_b_din[23]),
        .I1(axi_b_din[23]),
        .I2(mode_pin),
        .O(port_b_din[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_2
       (.I0(raw_b_din[22]),
        .I1(axi_b_din[22]),
        .I2(mode_pin),
        .O(port_b_din[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_3
       (.I0(raw_b_din[21]),
        .I1(axi_b_din[21]),
        .I2(mode_pin),
        .O(port_b_din[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_4
       (.I0(raw_b_din[20]),
        .I1(axi_b_din[20]),
        .I2(mode_pin),
        .O(port_b_din[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_5
       (.I0(raw_b_din[19]),
        .I1(axi_b_din[19]),
        .I2(mode_pin),
        .O(port_b_din[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_6
       (.I0(raw_b_din[18]),
        .I1(axi_b_din[18]),
        .I2(mode_pin),
        .O(port_b_din[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_7
       (.I0(raw_b_din[17]),
        .I1(axi_b_din[17]),
        .I2(mode_pin),
        .O(port_b_din[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_2_i_8
       (.I0(raw_b_din[16]),
        .I1(axi_b_din[16]),
        .I2(mode_pin),
        .O(port_b_din[16]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    ram_reg_2_i_9
       (.I0(axi_b_we[2]),
        .I1(raw_b_we[2]),
        .I2(axi_b_en),
        .I3(mode_pin),
        .I4(raw_b_en),
        .O(p_3_in[16]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "design_1_muxed_dual_port_ram_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg_3
       (.ADDRARDADDR({1'b1,port_b_addr,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,axi_a_addr,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_ram_reg_3_DBITERR_UNCONNECTED),
        .DIADI({NLW_ram_reg_3_DIADI_UNCONNECTED[31:8],ram_reg_3_i_13_n_0,ram_reg_3_i_14_n_0,ram_reg_3_i_15_n_0,ram_reg_3_i_16_n_0,ram_reg_3_i_17_n_0,ram_reg_3_i_18_n_0,ram_reg_3_i_19_n_0,ram_reg_3_i_20_n_0}),
        .DIBDI({NLW_ram_reg_3_DIBDI_UNCONNECTED[31:8],axi_a_din[31:24]}),
        .DIPADIP({NLW_ram_reg_3_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_ram_reg_3_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_ram_reg_3_DOADO_UNCONNECTED[31:8],ram_reg_3_0}),
        .DOBDO({NLW_ram_reg_3_DOBDO_UNCONNECTED[31:8],axi_a_dout[31:24]}),
        .DOPADOP(NLW_ram_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(axi_a_en),
        .INJECTDBITERR(NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,p_3_in[24]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_a_we[3]}));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_1
       (.I0(raw_b_addr[11]),
        .I1(axi_b_addr[11]),
        .I2(mode_pin),
        .O(port_b_addr[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_10
       (.I0(raw_b_addr[2]),
        .I1(axi_b_addr[2]),
        .I2(mode_pin),
        .O(port_b_addr[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_11
       (.I0(raw_b_addr[1]),
        .I1(axi_b_addr[1]),
        .I2(mode_pin),
        .O(port_b_addr[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_12
       (.I0(raw_b_addr[0]),
        .I1(axi_b_addr[0]),
        .I2(mode_pin),
        .O(port_b_addr[0]));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_13
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[31]),
        .I4(raw_b_din[31]),
        .O(ram_reg_3_i_13_n_0));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_14
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[30]),
        .I4(raw_b_din[30]),
        .O(ram_reg_3_i_14_n_0));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_15
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[29]),
        .I4(raw_b_din[29]),
        .O(ram_reg_3_i_15_n_0));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_16
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[28]),
        .I4(raw_b_din[28]),
        .O(ram_reg_3_i_16_n_0));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_17
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[27]),
        .I4(raw_b_din[27]),
        .O(ram_reg_3_i_17_n_0));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_18
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[26]),
        .I4(raw_b_din[26]),
        .O(ram_reg_3_i_18_n_0));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_19
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[25]),
        .I4(raw_b_din[25]),
        .O(ram_reg_3_i_19_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_2
       (.I0(raw_b_addr[10]),
        .I1(axi_b_addr[10]),
        .I2(mode_pin),
        .O(port_b_addr[10]));
  LUT5 #(
    .INIT(32'hCAC00A00)) 
    ram_reg_3_i_20
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(mode_pin),
        .I3(axi_b_din[24]),
        .I4(raw_b_din[24]),
        .O(ram_reg_3_i_20_n_0));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    ram_reg_3_i_21
       (.I0(axi_b_we[3]),
        .I1(raw_b_we[3]),
        .I2(axi_b_en),
        .I3(mode_pin),
        .I4(raw_b_en),
        .O(p_3_in[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_3
       (.I0(raw_b_addr[9]),
        .I1(axi_b_addr[9]),
        .I2(mode_pin),
        .O(port_b_addr[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_4
       (.I0(raw_b_addr[8]),
        .I1(axi_b_addr[8]),
        .I2(mode_pin),
        .O(port_b_addr[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_5
       (.I0(raw_b_addr[7]),
        .I1(axi_b_addr[7]),
        .I2(mode_pin),
        .O(port_b_addr[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_6
       (.I0(raw_b_addr[6]),
        .I1(axi_b_addr[6]),
        .I2(mode_pin),
        .O(port_b_addr[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_7
       (.I0(raw_b_addr[5]),
        .I1(axi_b_addr[5]),
        .I2(mode_pin),
        .O(port_b_addr[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_8
       (.I0(raw_b_addr[4]),
        .I1(axi_b_addr[4]),
        .I2(mode_pin),
        .O(port_b_addr[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_3_i_9
       (.I0(raw_b_addr[3]),
        .I1(axi_b_addr[3]),
        .I2(mode_pin),
        .O(port_b_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(raw_b_dout_0_sn_1),
        .I2(\raw_b_dout[0]_0 ),
        .O(raw_b_dout[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[10]_INST_0 
       (.I0(ram_reg_1_0[2]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_10_sn_1),
        .O(raw_b_dout[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[11]_INST_0 
       (.I0(ram_reg_1_0[3]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_11_sn_1),
        .O(raw_b_dout[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[12]_INST_0 
       (.I0(ram_reg_1_0[4]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_12_sn_1),
        .O(raw_b_dout[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[13]_INST_0 
       (.I0(ram_reg_1_0[5]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_13_sn_1),
        .O(raw_b_dout[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[14]_INST_0 
       (.I0(ram_reg_1_0[6]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_14_sn_1),
        .O(raw_b_dout[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[15]_INST_0 
       (.I0(ram_reg_1_0[7]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_15_sn_1),
        .O(raw_b_dout[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[16]_INST_0 
       (.I0(ram_reg_2_0[0]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_16_sn_1),
        .O(raw_b_dout[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[17]_INST_0 
       (.I0(ram_reg_2_0[1]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_17_sn_1),
        .O(raw_b_dout[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[18]_INST_0 
       (.I0(ram_reg_2_0[2]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_18_sn_1),
        .O(raw_b_dout[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[19]_INST_0 
       (.I0(ram_reg_2_0[3]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_19_sn_1),
        .O(raw_b_dout[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_1_sn_1),
        .O(raw_b_dout[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[20]_INST_0 
       (.I0(ram_reg_2_0[4]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_20_sn_1),
        .O(raw_b_dout[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[21]_INST_0 
       (.I0(ram_reg_2_0[5]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_21_sn_1),
        .O(raw_b_dout[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[22]_INST_0 
       (.I0(ram_reg_2_0[6]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_22_sn_1),
        .O(raw_b_dout[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[23]_INST_0 
       (.I0(ram_reg_2_0[7]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_23_sn_1),
        .O(raw_b_dout[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[24]_INST_0 
       (.I0(ram_reg_3_0[0]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_24_sn_1),
        .O(raw_b_dout[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[25]_INST_0 
       (.I0(ram_reg_3_0[1]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_25_sn_1),
        .O(raw_b_dout[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[26]_INST_0 
       (.I0(ram_reg_3_0[2]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_26_sn_1),
        .O(raw_b_dout[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[27]_INST_0 
       (.I0(ram_reg_3_0[3]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_27_sn_1),
        .O(raw_b_dout[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[28]_INST_0 
       (.I0(ram_reg_3_0[4]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_28_sn_1),
        .O(raw_b_dout[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[29]_INST_0 
       (.I0(ram_reg_3_0[5]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_29_sn_1),
        .O(raw_b_dout[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_2_sn_1),
        .O(raw_b_dout[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[30]_INST_0 
       (.I0(ram_reg_3_0[6]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_30_sn_1),
        .O(raw_b_dout[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[31]_INST_0 
       (.I0(ram_reg_3_0[7]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_31_sn_1),
        .O(raw_b_dout[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_3_sn_1),
        .O(raw_b_dout[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_4_sn_1),
        .O(raw_b_dout[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_5_sn_1),
        .O(raw_b_dout[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_6_sn_1),
        .O(raw_b_dout[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_7_sn_1),
        .O(raw_b_dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[8]_INST_0 
       (.I0(ram_reg_1_0[0]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_8_sn_1),
        .O(raw_b_dout[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raw_b_dout[9]_INST_0 
       (.I0(ram_reg_1_0[1]),
        .I1(raw_b_dout_0_sn_1),
        .I2(raw_b_dout_9_sn_1),
        .O(raw_b_dout[9]));
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
