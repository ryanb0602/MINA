-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Sep  6 16:33:31 2026
-- Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_muxed_dual_port_ram_0_0/design_1_muxed_dual_port_ram_0_0_stub.vhdl
-- Design      : design_1_muxed_dual_port_ram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_muxed_dual_port_ram_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    mode_pin : in STD_LOGIC;
    axi_a_en : in STD_LOGIC;
    axi_a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_a_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_b_en : in STD_LOGIC;
    axi_b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_b_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    raw_b_en : in STD_LOGIC;
    raw_b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    raw_b_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    raw_b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    raw_b_dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_muxed_dual_port_ram_0_0 : entity is "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_muxed_dual_port_ram_0_0 : entity is "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=muxed_dual_port_ram,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=32,ADDR_WIDTH=12}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_muxed_dual_port_ram_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_muxed_dual_port_ram_0_0 : entity is "module_ref";
end design_1_muxed_dual_port_ram_0_0;

architecture stub of design_1_muxed_dual_port_ram_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,mode_pin,axi_a_en,axi_a_we[3:0],axi_a_addr[11:0],axi_a_din[31:0],axi_a_dout[31:0],axi_b_en,axi_b_we[3:0],axi_b_addr[11:0],axi_b_din[31:0],axi_b_dout[31:0],raw_b_en,raw_b_we[3:0],raw_b_addr[11:0],raw_b_din[31:0],raw_b_dout[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "muxed_dual_port_ram,Vivado 2025.2";
begin
end;
