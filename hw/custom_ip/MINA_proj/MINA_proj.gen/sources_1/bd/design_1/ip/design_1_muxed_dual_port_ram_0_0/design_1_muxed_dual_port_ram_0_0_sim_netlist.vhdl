-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Sep 10 20:56:00 2026
-- Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_muxed_dual_port_ram_0_0/design_1_muxed_dual_port_ram_0_0_sim_netlist.vhdl
-- Design      : design_1_muxed_dual_port_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_1_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_2_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_3_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    raw_b_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    axi_a_en : in STD_LOGIC;
    axi_a_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    raw_b_dout_0_sp_1 : in STD_LOGIC;
    \raw_b_dout[0]_0\ : in STD_LOGIC;
    raw_b_dout_1_sp_1 : in STD_LOGIC;
    raw_b_dout_2_sp_1 : in STD_LOGIC;
    raw_b_dout_3_sp_1 : in STD_LOGIC;
    raw_b_dout_4_sp_1 : in STD_LOGIC;
    raw_b_dout_5_sp_1 : in STD_LOGIC;
    raw_b_dout_6_sp_1 : in STD_LOGIC;
    raw_b_dout_7_sp_1 : in STD_LOGIC;
    raw_b_dout_8_sp_1 : in STD_LOGIC;
    raw_b_dout_9_sp_1 : in STD_LOGIC;
    raw_b_dout_10_sp_1 : in STD_LOGIC;
    raw_b_dout_11_sp_1 : in STD_LOGIC;
    raw_b_dout_12_sp_1 : in STD_LOGIC;
    raw_b_dout_13_sp_1 : in STD_LOGIC;
    raw_b_dout_14_sp_1 : in STD_LOGIC;
    raw_b_dout_15_sp_1 : in STD_LOGIC;
    raw_b_dout_16_sp_1 : in STD_LOGIC;
    raw_b_dout_17_sp_1 : in STD_LOGIC;
    raw_b_dout_18_sp_1 : in STD_LOGIC;
    raw_b_dout_19_sp_1 : in STD_LOGIC;
    raw_b_dout_20_sp_1 : in STD_LOGIC;
    raw_b_dout_21_sp_1 : in STD_LOGIC;
    raw_b_dout_22_sp_1 : in STD_LOGIC;
    raw_b_dout_23_sp_1 : in STD_LOGIC;
    raw_b_dout_24_sp_1 : in STD_LOGIC;
    raw_b_dout_25_sp_1 : in STD_LOGIC;
    raw_b_dout_26_sp_1 : in STD_LOGIC;
    raw_b_dout_27_sp_1 : in STD_LOGIC;
    raw_b_dout_28_sp_1 : in STD_LOGIC;
    raw_b_dout_29_sp_1 : in STD_LOGIC;
    raw_b_dout_30_sp_1 : in STD_LOGIC;
    raw_b_dout_31_sp_1 : in STD_LOGIC;
    axi_b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    raw_b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_en : in STD_LOGIC;
    mode_pin : in STD_LOGIC;
    raw_b_en : in STD_LOGIC;
    raw_b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    raw_b_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_b_addr : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram : entity is "muxed_dual_port_ram";
end design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram;

architecture STRUCTURE of design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram is
  signal \^doado\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal port_b_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal port_b_din : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^ram_reg_1_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ram_reg_2_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ram_reg_3_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_reg_3_i_13_n_0 : STD_LOGIC;
  signal ram_reg_3_i_14_n_0 : STD_LOGIC;
  signal ram_reg_3_i_15_n_0 : STD_LOGIC;
  signal ram_reg_3_i_16_n_0 : STD_LOGIC;
  signal ram_reg_3_i_17_n_0 : STD_LOGIC;
  signal ram_reg_3_i_18_n_0 : STD_LOGIC;
  signal ram_reg_3_i_19_n_0 : STD_LOGIC;
  signal ram_reg_3_i_20_n_0 : STD_LOGIC;
  signal raw_b_dout_0_sn_1 : STD_LOGIC;
  signal raw_b_dout_10_sn_1 : STD_LOGIC;
  signal raw_b_dout_11_sn_1 : STD_LOGIC;
  signal raw_b_dout_12_sn_1 : STD_LOGIC;
  signal raw_b_dout_13_sn_1 : STD_LOGIC;
  signal raw_b_dout_14_sn_1 : STD_LOGIC;
  signal raw_b_dout_15_sn_1 : STD_LOGIC;
  signal raw_b_dout_16_sn_1 : STD_LOGIC;
  signal raw_b_dout_17_sn_1 : STD_LOGIC;
  signal raw_b_dout_18_sn_1 : STD_LOGIC;
  signal raw_b_dout_19_sn_1 : STD_LOGIC;
  signal raw_b_dout_1_sn_1 : STD_LOGIC;
  signal raw_b_dout_20_sn_1 : STD_LOGIC;
  signal raw_b_dout_21_sn_1 : STD_LOGIC;
  signal raw_b_dout_22_sn_1 : STD_LOGIC;
  signal raw_b_dout_23_sn_1 : STD_LOGIC;
  signal raw_b_dout_24_sn_1 : STD_LOGIC;
  signal raw_b_dout_25_sn_1 : STD_LOGIC;
  signal raw_b_dout_26_sn_1 : STD_LOGIC;
  signal raw_b_dout_27_sn_1 : STD_LOGIC;
  signal raw_b_dout_28_sn_1 : STD_LOGIC;
  signal raw_b_dout_29_sn_1 : STD_LOGIC;
  signal raw_b_dout_2_sn_1 : STD_LOGIC;
  signal raw_b_dout_30_sn_1 : STD_LOGIC;
  signal raw_b_dout_31_sn_1 : STD_LOGIC;
  signal raw_b_dout_3_sn_1 : STD_LOGIC;
  signal raw_b_dout_4_sn_1 : STD_LOGIC;
  signal raw_b_dout_5_sn_1 : STD_LOGIC;
  signal raw_b_dout_6_sn_1 : STD_LOGIC;
  signal raw_b_dout_7_sn_1 : STD_LOGIC;
  signal raw_b_dout_8_sn_1 : STD_LOGIC;
  signal raw_b_dout_9_sn_1 : STD_LOGIC;
  signal NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_DIADI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_0_DIBDI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_1_DIADI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_1_DIBDI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_2_DIADI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_2_DIBDI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_3_DIADI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_3_DIBDI_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_0 : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg_0 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0 : label is "design_1_muxed_dual_port_ram_0_0/inst/ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_reg_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_0 : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_1 : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg_1 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of ram_reg_1 : label is "design_1_muxed_dual_port_ram_0_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_1 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_1 : label is "RAM_TDP";
  attribute ram_addr_begin of ram_reg_1 : label is 0;
  attribute ram_addr_end of ram_reg_1 : label is 4095;
  attribute ram_offset of ram_reg_1 : label is 0;
  attribute ram_slice_begin of ram_reg_1 : label is 8;
  attribute ram_slice_end of ram_reg_1 : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_2 : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg_2 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_2 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of ram_reg_2 : label is "design_1_muxed_dual_port_ram_0_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_2 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_2 : label is "RAM_TDP";
  attribute ram_addr_begin of ram_reg_2 : label is 0;
  attribute ram_addr_end of ram_reg_2 : label is 4095;
  attribute ram_offset of ram_reg_2 : label is 0;
  attribute ram_slice_begin of ram_reg_2 : label is 16;
  attribute ram_slice_end of ram_reg_2 : label is 23;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_3 : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg_3 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_3 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of ram_reg_3 : label is "design_1_muxed_dual_port_ram_0_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_3 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_3 : label is "RAM_TDP";
  attribute ram_addr_begin of ram_reg_3 : label is 0;
  attribute ram_addr_end of ram_reg_3 : label is 4095;
  attribute ram_offset of ram_reg_3 : label is 0;
  attribute ram_slice_begin of ram_reg_3 : label is 24;
  attribute ram_slice_end of ram_reg_3 : label is 31;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \raw_b_dout[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \raw_b_dout[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \raw_b_dout[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \raw_b_dout[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raw_b_dout[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raw_b_dout[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raw_b_dout[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raw_b_dout[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \raw_b_dout[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \raw_b_dout[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \raw_b_dout[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \raw_b_dout[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \raw_b_dout[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raw_b_dout[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raw_b_dout[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \raw_b_dout[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \raw_b_dout[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \raw_b_dout[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \raw_b_dout[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \raw_b_dout[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \raw_b_dout[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \raw_b_dout[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \raw_b_dout[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \raw_b_dout[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \raw_b_dout[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \raw_b_dout[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \raw_b_dout[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \raw_b_dout[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \raw_b_dout[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raw_b_dout[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raw_b_dout[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \raw_b_dout[9]_INST_0\ : label is "soft_lutpair4";
begin
  DOADO(7 downto 0) <= \^doado\(7 downto 0);
  ram_reg_1_0(7 downto 0) <= \^ram_reg_1_0\(7 downto 0);
  ram_reg_2_0(7 downto 0) <= \^ram_reg_2_0\(7 downto 0);
  ram_reg_3_0(7 downto 0) <= \^ram_reg_3_0\(7 downto 0);
  raw_b_dout_0_sn_1 <= raw_b_dout_0_sp_1;
  raw_b_dout_10_sn_1 <= raw_b_dout_10_sp_1;
  raw_b_dout_11_sn_1 <= raw_b_dout_11_sp_1;
  raw_b_dout_12_sn_1 <= raw_b_dout_12_sp_1;
  raw_b_dout_13_sn_1 <= raw_b_dout_13_sp_1;
  raw_b_dout_14_sn_1 <= raw_b_dout_14_sp_1;
  raw_b_dout_15_sn_1 <= raw_b_dout_15_sp_1;
  raw_b_dout_16_sn_1 <= raw_b_dout_16_sp_1;
  raw_b_dout_17_sn_1 <= raw_b_dout_17_sp_1;
  raw_b_dout_18_sn_1 <= raw_b_dout_18_sp_1;
  raw_b_dout_19_sn_1 <= raw_b_dout_19_sp_1;
  raw_b_dout_1_sn_1 <= raw_b_dout_1_sp_1;
  raw_b_dout_20_sn_1 <= raw_b_dout_20_sp_1;
  raw_b_dout_21_sn_1 <= raw_b_dout_21_sp_1;
  raw_b_dout_22_sn_1 <= raw_b_dout_22_sp_1;
  raw_b_dout_23_sn_1 <= raw_b_dout_23_sp_1;
  raw_b_dout_24_sn_1 <= raw_b_dout_24_sp_1;
  raw_b_dout_25_sn_1 <= raw_b_dout_25_sp_1;
  raw_b_dout_26_sn_1 <= raw_b_dout_26_sp_1;
  raw_b_dout_27_sn_1 <= raw_b_dout_27_sp_1;
  raw_b_dout_28_sn_1 <= raw_b_dout_28_sp_1;
  raw_b_dout_29_sn_1 <= raw_b_dout_29_sp_1;
  raw_b_dout_2_sn_1 <= raw_b_dout_2_sp_1;
  raw_b_dout_30_sn_1 <= raw_b_dout_30_sp_1;
  raw_b_dout_31_sn_1 <= raw_b_dout_31_sp_1;
  raw_b_dout_3_sn_1 <= raw_b_dout_3_sp_1;
  raw_b_dout_4_sn_1 <= raw_b_dout_4_sp_1;
  raw_b_dout_5_sn_1 <= raw_b_dout_5_sp_1;
  raw_b_dout_6_sn_1 <= raw_b_dout_6_sp_1;
  raw_b_dout_7_sn_1 <= raw_b_dout_7_sp_1;
  raw_b_dout_8_sn_1 <= raw_b_dout_8_sp_1;
  raw_b_dout_9_sn_1 <= raw_b_dout_9_sp_1;
ram_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => port_b_addr(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => axi_a_addr(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_ram_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => NLW_ram_reg_0_DIADI_UNCONNECTED(31 downto 8),
      DIADI(7 downto 0) => port_b_din(7 downto 0),
      DIBDI(31 downto 8) => NLW_ram_reg_0_DIBDI_UNCONNECTED(31 downto 8),
      DIBDI(7 downto 0) => axi_a_din(7 downto 0),
      DIPADIP(3 downto 1) => NLW_ram_reg_0_DIPADIP_UNCONNECTED(3 downto 1),
      DIPADIP(0) => '0',
      DIPBDIP(3 downto 1) => NLW_ram_reg_0_DIPBDIP_UNCONNECTED(3 downto 1),
      DIPBDIP(0) => '0',
      DOADO(31 downto 8) => NLW_ram_reg_0_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7 downto 0) => \^doado\(7 downto 0),
      DOBDO(31 downto 8) => NLW_ram_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => axi_a_dout(7 downto 0),
      DOPADOP(3 downto 0) => NLW_ram_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => axi_a_en,
      INJECTDBITERR => NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_0_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_3_in(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => axi_a_we(0)
    );
ram_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(7),
      I1 => axi_b_din(7),
      I2 => mode_pin,
      O => port_b_din(7)
    );
ram_reg_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(6),
      I1 => axi_b_din(6),
      I2 => mode_pin,
      O => port_b_din(6)
    );
ram_reg_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(5),
      I1 => axi_b_din(5),
      I2 => mode_pin,
      O => port_b_din(5)
    );
ram_reg_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(4),
      I1 => axi_b_din(4),
      I2 => mode_pin,
      O => port_b_din(4)
    );
ram_reg_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(3),
      I1 => axi_b_din(3),
      I2 => mode_pin,
      O => port_b_din(3)
    );
ram_reg_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(2),
      I1 => axi_b_din(2),
      I2 => mode_pin,
      O => port_b_din(2)
    );
ram_reg_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(1),
      I1 => axi_b_din(1),
      I2 => mode_pin,
      O => port_b_din(1)
    );
ram_reg_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(0),
      I1 => axi_b_din(0),
      I2 => mode_pin,
      O => port_b_din(0)
    );
ram_reg_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => axi_b_we(0),
      I1 => raw_b_we(0),
      I2 => axi_b_en,
      I3 => mode_pin,
      I4 => raw_b_en,
      O => p_3_in(0)
    );
ram_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => port_b_addr(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => axi_a_addr(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_ram_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => NLW_ram_reg_1_DIADI_UNCONNECTED(31 downto 8),
      DIADI(7 downto 0) => port_b_din(15 downto 8),
      DIBDI(31 downto 8) => NLW_ram_reg_1_DIBDI_UNCONNECTED(31 downto 8),
      DIBDI(7 downto 0) => axi_a_din(15 downto 8),
      DIPADIP(3 downto 1) => NLW_ram_reg_1_DIPADIP_UNCONNECTED(3 downto 1),
      DIPADIP(0) => '0',
      DIPBDIP(3 downto 1) => NLW_ram_reg_1_DIPBDIP_UNCONNECTED(3 downto 1),
      DIPBDIP(0) => '0',
      DOADO(31 downto 8) => NLW_ram_reg_1_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7 downto 0) => \^ram_reg_1_0\(7 downto 0),
      DOBDO(31 downto 8) => NLW_ram_reg_1_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => axi_a_dout(15 downto 8),
      DOPADOP(3 downto 0) => NLW_ram_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => axi_a_en,
      INJECTDBITERR => NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_1_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_3_in(8),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => axi_a_we(1)
    );
ram_reg_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(15),
      I1 => axi_b_din(15),
      I2 => mode_pin,
      O => port_b_din(15)
    );
ram_reg_1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(14),
      I1 => axi_b_din(14),
      I2 => mode_pin,
      O => port_b_din(14)
    );
ram_reg_1_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(13),
      I1 => axi_b_din(13),
      I2 => mode_pin,
      O => port_b_din(13)
    );
ram_reg_1_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(12),
      I1 => axi_b_din(12),
      I2 => mode_pin,
      O => port_b_din(12)
    );
ram_reg_1_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(11),
      I1 => axi_b_din(11),
      I2 => mode_pin,
      O => port_b_din(11)
    );
ram_reg_1_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(10),
      I1 => axi_b_din(10),
      I2 => mode_pin,
      O => port_b_din(10)
    );
ram_reg_1_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(9),
      I1 => axi_b_din(9),
      I2 => mode_pin,
      O => port_b_din(9)
    );
ram_reg_1_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(8),
      I1 => axi_b_din(8),
      I2 => mode_pin,
      O => port_b_din(8)
    );
ram_reg_1_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => axi_b_we(1),
      I1 => raw_b_we(1),
      I2 => axi_b_en,
      I3 => mode_pin,
      I4 => raw_b_en,
      O => p_3_in(8)
    );
ram_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => port_b_addr(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => axi_a_addr(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_ram_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => NLW_ram_reg_2_DIADI_UNCONNECTED(31 downto 8),
      DIADI(7 downto 0) => port_b_din(23 downto 16),
      DIBDI(31 downto 8) => NLW_ram_reg_2_DIBDI_UNCONNECTED(31 downto 8),
      DIBDI(7 downto 0) => axi_a_din(23 downto 16),
      DIPADIP(3 downto 1) => NLW_ram_reg_2_DIPADIP_UNCONNECTED(3 downto 1),
      DIPADIP(0) => '0',
      DIPBDIP(3 downto 1) => NLW_ram_reg_2_DIPBDIP_UNCONNECTED(3 downto 1),
      DIPBDIP(0) => '0',
      DOADO(31 downto 8) => NLW_ram_reg_2_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7 downto 0) => \^ram_reg_2_0\(7 downto 0),
      DOBDO(31 downto 8) => NLW_ram_reg_2_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => axi_a_dout(23 downto 16),
      DOPADOP(3 downto 0) => NLW_ram_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => axi_a_en,
      INJECTDBITERR => NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_2_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_3_in(16),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => axi_a_we(2)
    );
ram_reg_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(23),
      I1 => axi_b_din(23),
      I2 => mode_pin,
      O => port_b_din(23)
    );
ram_reg_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(22),
      I1 => axi_b_din(22),
      I2 => mode_pin,
      O => port_b_din(22)
    );
ram_reg_2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(21),
      I1 => axi_b_din(21),
      I2 => mode_pin,
      O => port_b_din(21)
    );
ram_reg_2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(20),
      I1 => axi_b_din(20),
      I2 => mode_pin,
      O => port_b_din(20)
    );
ram_reg_2_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(19),
      I1 => axi_b_din(19),
      I2 => mode_pin,
      O => port_b_din(19)
    );
ram_reg_2_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(18),
      I1 => axi_b_din(18),
      I2 => mode_pin,
      O => port_b_din(18)
    );
ram_reg_2_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(17),
      I1 => axi_b_din(17),
      I2 => mode_pin,
      O => port_b_din(17)
    );
ram_reg_2_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_din(16),
      I1 => axi_b_din(16),
      I2 => mode_pin,
      O => port_b_din(16)
    );
ram_reg_2_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => axi_b_we(2),
      I1 => raw_b_we(2),
      I2 => axi_b_en,
      I3 => mode_pin,
      I4 => raw_b_en,
      O => p_3_in(16)
    );
ram_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => port_b_addr(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => axi_a_addr(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_ram_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => NLW_ram_reg_3_DIADI_UNCONNECTED(31 downto 8),
      DIADI(7) => ram_reg_3_i_13_n_0,
      DIADI(6) => ram_reg_3_i_14_n_0,
      DIADI(5) => ram_reg_3_i_15_n_0,
      DIADI(4) => ram_reg_3_i_16_n_0,
      DIADI(3) => ram_reg_3_i_17_n_0,
      DIADI(2) => ram_reg_3_i_18_n_0,
      DIADI(1) => ram_reg_3_i_19_n_0,
      DIADI(0) => ram_reg_3_i_20_n_0,
      DIBDI(31 downto 8) => NLW_ram_reg_3_DIBDI_UNCONNECTED(31 downto 8),
      DIBDI(7 downto 0) => axi_a_din(31 downto 24),
      DIPADIP(3 downto 1) => NLW_ram_reg_3_DIPADIP_UNCONNECTED(3 downto 1),
      DIPADIP(0) => '0',
      DIPBDIP(3 downto 1) => NLW_ram_reg_3_DIPBDIP_UNCONNECTED(3 downto 1),
      DIPBDIP(0) => '0',
      DOADO(31 downto 8) => NLW_ram_reg_3_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7 downto 0) => \^ram_reg_3_0\(7 downto 0),
      DOBDO(31 downto 8) => NLW_ram_reg_3_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => axi_a_dout(31 downto 24),
      DOPADOP(3 downto 0) => NLW_ram_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => axi_a_en,
      INJECTDBITERR => NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_3_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_3_in(24),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => axi_a_we(3)
    );
ram_reg_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(11),
      I1 => axi_b_addr(11),
      I2 => mode_pin,
      O => port_b_addr(11)
    );
ram_reg_3_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(2),
      I1 => axi_b_addr(2),
      I2 => mode_pin,
      O => port_b_addr(2)
    );
ram_reg_3_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(1),
      I1 => axi_b_addr(1),
      I2 => mode_pin,
      O => port_b_addr(1)
    );
ram_reg_3_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(0),
      I1 => axi_b_addr(0),
      I2 => mode_pin,
      O => port_b_addr(0)
    );
ram_reg_3_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(31),
      I4 => raw_b_din(31),
      O => ram_reg_3_i_13_n_0
    );
ram_reg_3_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(30),
      I4 => raw_b_din(30),
      O => ram_reg_3_i_14_n_0
    );
ram_reg_3_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(29),
      I4 => raw_b_din(29),
      O => ram_reg_3_i_15_n_0
    );
ram_reg_3_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(28),
      I4 => raw_b_din(28),
      O => ram_reg_3_i_16_n_0
    );
ram_reg_3_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(27),
      I4 => raw_b_din(27),
      O => ram_reg_3_i_17_n_0
    );
ram_reg_3_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(26),
      I4 => raw_b_din(26),
      O => ram_reg_3_i_18_n_0
    );
ram_reg_3_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(25),
      I4 => raw_b_din(25),
      O => ram_reg_3_i_19_n_0
    );
ram_reg_3_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(10),
      I1 => axi_b_addr(10),
      I2 => mode_pin,
      O => port_b_addr(10)
    );
ram_reg_3_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAC00A00"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => mode_pin,
      I3 => axi_b_din(24),
      I4 => raw_b_din(24),
      O => ram_reg_3_i_20_n_0
    );
ram_reg_3_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => axi_b_we(3),
      I1 => raw_b_we(3),
      I2 => axi_b_en,
      I3 => mode_pin,
      I4 => raw_b_en,
      O => p_3_in(24)
    );
ram_reg_3_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(9),
      I1 => axi_b_addr(9),
      I2 => mode_pin,
      O => port_b_addr(9)
    );
ram_reg_3_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(8),
      I1 => axi_b_addr(8),
      I2 => mode_pin,
      O => port_b_addr(8)
    );
ram_reg_3_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(7),
      I1 => axi_b_addr(7),
      I2 => mode_pin,
      O => port_b_addr(7)
    );
ram_reg_3_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(6),
      I1 => axi_b_addr(6),
      I2 => mode_pin,
      O => port_b_addr(6)
    );
ram_reg_3_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(5),
      I1 => axi_b_addr(5),
      I2 => mode_pin,
      O => port_b_addr(5)
    );
ram_reg_3_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(4),
      I1 => axi_b_addr(4),
      I2 => mode_pin,
      O => port_b_addr(4)
    );
ram_reg_3_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => raw_b_addr(3),
      I1 => axi_b_addr(3),
      I2 => mode_pin,
      O => port_b_addr(3)
    );
\raw_b_dout[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(0),
      I1 => raw_b_dout_0_sn_1,
      I2 => \raw_b_dout[0]_0\,
      O => raw_b_dout(0)
    );
\raw_b_dout[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(2),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_10_sn_1,
      O => raw_b_dout(10)
    );
\raw_b_dout[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(3),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_11_sn_1,
      O => raw_b_dout(11)
    );
\raw_b_dout[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(4),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_12_sn_1,
      O => raw_b_dout(12)
    );
\raw_b_dout[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(5),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_13_sn_1,
      O => raw_b_dout(13)
    );
\raw_b_dout[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(6),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_14_sn_1,
      O => raw_b_dout(14)
    );
\raw_b_dout[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(7),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_15_sn_1,
      O => raw_b_dout(15)
    );
\raw_b_dout[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(0),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_16_sn_1,
      O => raw_b_dout(16)
    );
\raw_b_dout[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(1),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_17_sn_1,
      O => raw_b_dout(17)
    );
\raw_b_dout[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(2),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_18_sn_1,
      O => raw_b_dout(18)
    );
\raw_b_dout[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(3),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_19_sn_1,
      O => raw_b_dout(19)
    );
\raw_b_dout[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(1),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_1_sn_1,
      O => raw_b_dout(1)
    );
\raw_b_dout[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(4),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_20_sn_1,
      O => raw_b_dout(20)
    );
\raw_b_dout[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(5),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_21_sn_1,
      O => raw_b_dout(21)
    );
\raw_b_dout[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(6),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_22_sn_1,
      O => raw_b_dout(22)
    );
\raw_b_dout[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_2_0\(7),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_23_sn_1,
      O => raw_b_dout(23)
    );
\raw_b_dout[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(0),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_24_sn_1,
      O => raw_b_dout(24)
    );
\raw_b_dout[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(1),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_25_sn_1,
      O => raw_b_dout(25)
    );
\raw_b_dout[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(2),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_26_sn_1,
      O => raw_b_dout(26)
    );
\raw_b_dout[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(3),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_27_sn_1,
      O => raw_b_dout(27)
    );
\raw_b_dout[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(4),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_28_sn_1,
      O => raw_b_dout(28)
    );
\raw_b_dout[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(5),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_29_sn_1,
      O => raw_b_dout(29)
    );
\raw_b_dout[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(2),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_2_sn_1,
      O => raw_b_dout(2)
    );
\raw_b_dout[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(6),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_30_sn_1,
      O => raw_b_dout(30)
    );
\raw_b_dout[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_3_0\(7),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_31_sn_1,
      O => raw_b_dout(31)
    );
\raw_b_dout[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(3),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_3_sn_1,
      O => raw_b_dout(3)
    );
\raw_b_dout[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(4),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_4_sn_1,
      O => raw_b_dout(4)
    );
\raw_b_dout[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(5),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_5_sn_1,
      O => raw_b_dout(5)
    );
\raw_b_dout[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(6),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_6_sn_1,
      O => raw_b_dout(6)
    );
\raw_b_dout[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(7),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_7_sn_1,
      O => raw_b_dout(7)
    );
\raw_b_dout[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(0),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_8_sn_1,
      O => raw_b_dout(8)
    );
\raw_b_dout[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ram_reg_1_0\(1),
      I1 => raw_b_dout_0_sn_1,
      I2 => raw_b_dout_9_sn_1,
      O => raw_b_dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muxed_dual_port_ram_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_muxed_dual_port_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_muxed_dual_port_ram_0_0 : entity is "design_1_muxed_dual_port_ram_0_0,muxed_dual_port_ram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_muxed_dual_port_ram_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_muxed_dual_port_ram_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_muxed_dual_port_ram_0_0 : entity is "muxed_dual_port_ram,Vivado 2025.2";
end design_1_muxed_dual_port_ram_0_0;

architecture STRUCTURE of design_1_muxed_dual_port_ram_0_0 is
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal inst_n_2 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal inst_n_40 : STD_LOGIC;
  signal inst_n_41 : STD_LOGIC;
  signal inst_n_42 : STD_LOGIC;
  signal inst_n_43 : STD_LOGIC;
  signal inst_n_44 : STD_LOGIC;
  signal inst_n_45 : STD_LOGIC;
  signal inst_n_46 : STD_LOGIC;
  signal inst_n_47 : STD_LOGIC;
  signal inst_n_48 : STD_LOGIC;
  signal inst_n_49 : STD_LOGIC;
  signal inst_n_5 : STD_LOGIC;
  signal inst_n_50 : STD_LOGIC;
  signal inst_n_51 : STD_LOGIC;
  signal inst_n_52 : STD_LOGIC;
  signal inst_n_53 : STD_LOGIC;
  signal inst_n_54 : STD_LOGIC;
  signal inst_n_55 : STD_LOGIC;
  signal inst_n_56 : STD_LOGIC;
  signal inst_n_57 : STD_LOGIC;
  signal inst_n_58 : STD_LOGIC;
  signal inst_n_59 : STD_LOGIC;
  signal inst_n_6 : STD_LOGIC;
  signal inst_n_60 : STD_LOGIC;
  signal inst_n_61 : STD_LOGIC;
  signal inst_n_62 : STD_LOGIC;
  signal inst_n_63 : STD_LOGIC;
  signal inst_n_7 : STD_LOGIC;
  signal port_b_en : STD_LOGIC;
  signal \^raw_b_dout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \raw_b_dout[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \raw_b_dout[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \raw_b_dout[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  axi_b_dout(31 downto 0) <= \^raw_b_dout\(31 downto 0);
  raw_b_dout(31 downto 0) <= \^raw_b_dout\(31 downto 0);
inst: entity work.design_1_muxed_dual_port_ram_0_0_muxed_dual_port_ram
     port map (
      DOADO(7) => inst_n_0,
      DOADO(6) => inst_n_1,
      DOADO(5) => inst_n_2,
      DOADO(4) => inst_n_3,
      DOADO(3) => inst_n_4,
      DOADO(2) => inst_n_5,
      DOADO(1) => inst_n_6,
      DOADO(0) => inst_n_7,
      axi_a_addr(11 downto 0) => axi_a_addr(11 downto 0),
      axi_a_din(31 downto 0) => axi_a_din(31 downto 0),
      axi_a_dout(31 downto 0) => axi_a_dout(31 downto 0),
      axi_a_en => axi_a_en,
      axi_a_we(3 downto 0) => axi_a_we(3 downto 0),
      axi_b_addr(11 downto 0) => axi_b_addr(11 downto 0),
      axi_b_din(31 downto 0) => axi_b_din(31 downto 0),
      axi_b_en => axi_b_en,
      axi_b_we(3 downto 0) => axi_b_we(3 downto 0),
      clk => clk,
      mode_pin => mode_pin,
      ram_reg_1_0(7) => inst_n_40,
      ram_reg_1_0(6) => inst_n_41,
      ram_reg_1_0(5) => inst_n_42,
      ram_reg_1_0(4) => inst_n_43,
      ram_reg_1_0(3) => inst_n_44,
      ram_reg_1_0(2) => inst_n_45,
      ram_reg_1_0(1) => inst_n_46,
      ram_reg_1_0(0) => inst_n_47,
      ram_reg_2_0(7) => inst_n_48,
      ram_reg_2_0(6) => inst_n_49,
      ram_reg_2_0(5) => inst_n_50,
      ram_reg_2_0(4) => inst_n_51,
      ram_reg_2_0(3) => inst_n_52,
      ram_reg_2_0(2) => inst_n_53,
      ram_reg_2_0(1) => inst_n_54,
      ram_reg_2_0(0) => inst_n_55,
      ram_reg_3_0(7) => inst_n_56,
      ram_reg_3_0(6) => inst_n_57,
      ram_reg_3_0(5) => inst_n_58,
      ram_reg_3_0(4) => inst_n_59,
      ram_reg_3_0(3) => inst_n_60,
      ram_reg_3_0(2) => inst_n_61,
      ram_reg_3_0(1) => inst_n_62,
      ram_reg_3_0(0) => inst_n_63,
      raw_b_addr(11 downto 0) => raw_b_addr(11 downto 0),
      raw_b_din(31 downto 0) => raw_b_din(31 downto 0),
      raw_b_dout(31 downto 0) => \^raw_b_dout\(31 downto 0),
      \raw_b_dout[0]_0\ => \raw_b_dout[0]_INST_0_i_1_n_0\,
      raw_b_dout_0_sp_1 => \raw_b_dout[31]_INST_0_i_1_n_0\,
      raw_b_dout_10_sp_1 => \raw_b_dout[10]_INST_0_i_1_n_0\,
      raw_b_dout_11_sp_1 => \raw_b_dout[11]_INST_0_i_1_n_0\,
      raw_b_dout_12_sp_1 => \raw_b_dout[12]_INST_0_i_1_n_0\,
      raw_b_dout_13_sp_1 => \raw_b_dout[13]_INST_0_i_1_n_0\,
      raw_b_dout_14_sp_1 => \raw_b_dout[14]_INST_0_i_1_n_0\,
      raw_b_dout_15_sp_1 => \raw_b_dout[15]_INST_0_i_1_n_0\,
      raw_b_dout_16_sp_1 => \raw_b_dout[16]_INST_0_i_1_n_0\,
      raw_b_dout_17_sp_1 => \raw_b_dout[17]_INST_0_i_1_n_0\,
      raw_b_dout_18_sp_1 => \raw_b_dout[18]_INST_0_i_1_n_0\,
      raw_b_dout_19_sp_1 => \raw_b_dout[19]_INST_0_i_1_n_0\,
      raw_b_dout_1_sp_1 => \raw_b_dout[1]_INST_0_i_1_n_0\,
      raw_b_dout_20_sp_1 => \raw_b_dout[20]_INST_0_i_1_n_0\,
      raw_b_dout_21_sp_1 => \raw_b_dout[21]_INST_0_i_1_n_0\,
      raw_b_dout_22_sp_1 => \raw_b_dout[22]_INST_0_i_1_n_0\,
      raw_b_dout_23_sp_1 => \raw_b_dout[23]_INST_0_i_1_n_0\,
      raw_b_dout_24_sp_1 => \raw_b_dout[24]_INST_0_i_1_n_0\,
      raw_b_dout_25_sp_1 => \raw_b_dout[25]_INST_0_i_1_n_0\,
      raw_b_dout_26_sp_1 => \raw_b_dout[26]_INST_0_i_1_n_0\,
      raw_b_dout_27_sp_1 => \raw_b_dout[27]_INST_0_i_1_n_0\,
      raw_b_dout_28_sp_1 => \raw_b_dout[28]_INST_0_i_1_n_0\,
      raw_b_dout_29_sp_1 => \raw_b_dout[29]_INST_0_i_1_n_0\,
      raw_b_dout_2_sp_1 => \raw_b_dout[2]_INST_0_i_1_n_0\,
      raw_b_dout_30_sp_1 => \raw_b_dout[30]_INST_0_i_1_n_0\,
      raw_b_dout_31_sp_1 => \raw_b_dout[31]_INST_0_i_2_n_0\,
      raw_b_dout_3_sp_1 => \raw_b_dout[3]_INST_0_i_1_n_0\,
      raw_b_dout_4_sp_1 => \raw_b_dout[4]_INST_0_i_1_n_0\,
      raw_b_dout_5_sp_1 => \raw_b_dout[5]_INST_0_i_1_n_0\,
      raw_b_dout_6_sp_1 => \raw_b_dout[6]_INST_0_i_1_n_0\,
      raw_b_dout_7_sp_1 => \raw_b_dout[7]_INST_0_i_1_n_0\,
      raw_b_dout_8_sp_1 => \raw_b_dout[8]_INST_0_i_1_n_0\,
      raw_b_dout_9_sp_1 => \raw_b_dout[9]_INST_0_i_1_n_0\,
      raw_b_en => raw_b_en,
      raw_b_we(3 downto 0) => raw_b_we(3 downto 0)
    );
\raw_b_dout[0]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_7,
      Q => \raw_b_dout[0]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[10]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_45,
      Q => \raw_b_dout[10]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[11]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_44,
      Q => \raw_b_dout[11]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[12]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_43,
      Q => \raw_b_dout[12]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[13]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_42,
      Q => \raw_b_dout[13]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[14]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_41,
      Q => \raw_b_dout[14]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[15]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_40,
      Q => \raw_b_dout[15]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[16]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_55,
      Q => \raw_b_dout[16]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[17]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_54,
      Q => \raw_b_dout[17]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[18]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_53,
      Q => \raw_b_dout[18]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[19]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_52,
      Q => \raw_b_dout[19]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[1]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_6,
      Q => \raw_b_dout[1]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[20]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_51,
      Q => \raw_b_dout[20]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[21]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_50,
      Q => \raw_b_dout[21]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[22]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_49,
      Q => \raw_b_dout[22]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[23]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_48,
      Q => \raw_b_dout[23]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[24]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_63,
      Q => \raw_b_dout[24]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[25]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_62,
      Q => \raw_b_dout[25]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[26]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_61,
      Q => \raw_b_dout[26]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[27]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_60,
      Q => \raw_b_dout[27]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[28]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_59,
      Q => \raw_b_dout[28]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[29]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_58,
      Q => \raw_b_dout[29]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[2]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_5,
      Q => \raw_b_dout[2]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[30]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_57,
      Q => \raw_b_dout[30]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[31]_INST_0_i_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => port_b_en,
      Q => \raw_b_dout[31]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[31]_INST_0_i_2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_56,
      Q => \raw_b_dout[31]_INST_0_i_2_n_0\,
      R => '0'
    );
\raw_b_dout[31]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raw_b_en,
      I1 => mode_pin,
      I2 => axi_b_en,
      O => port_b_en
    );
\raw_b_dout[3]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_4,
      Q => \raw_b_dout[3]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[4]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_3,
      Q => \raw_b_dout[4]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[5]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_2,
      Q => \raw_b_dout[5]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[6]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_1,
      Q => \raw_b_dout[6]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[7]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_0,
      Q => \raw_b_dout[7]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[8]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_47,
      Q => \raw_b_dout[8]_INST_0_i_1_n_0\,
      R => '0'
    );
\raw_b_dout[9]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \raw_b_dout[31]_INST_0_i_1_n_0\,
      D => inst_n_46,
      Q => \raw_b_dout[9]_INST_0_i_1_n_0\,
      R => '0'
    );
end STRUCTURE;
