-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Sep  6 16:34:27 2026
-- Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_i2c_master_axil_0_0/design_1_i2c_master_axil_0_0_sim_netlist.vhdl
-- Design      : design_1_i2c_master_axil_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_master_axil_0_0_axis_fifo is
  port (
    cmd_valid_int : out STD_LOGIC;
    \m_axis_pipe_reg_reg[1][3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    cmd_valid_next : out STD_LOGIC;
    \wr_ptr_reg_reg[4]_0\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[1][0]_0\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[1][3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[6]\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[1][3]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axis_tvalid_pipe_reg_reg[1]_0\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[1][2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[5]\ : out STD_LOGIC;
    \s_axil_awaddr[2]\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    cmd_ready_int : in STD_LOGIC;
    \FSM_onehot_state_reg[8]_i_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cmd_fifo_overflow_reg_reg : in STD_LOGIC;
    cmd_start_next : in STD_LOGIC;
    cmd_valid_reg : in STD_LOGIC;
    bus_active_int : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[6]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[6]_1\ : in STD_LOGIC;
    sda_o_reg_i_12_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_fifo_overflow_next5_out : in STD_LOGIC;
    cmd_fifo_overflow_reg : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_i2c_master_axil_0_0_axis_fifo : entity is "axis_fifo";
end design_1_i2c_master_axil_0_0_axis_fifo;

architecture STRUCTURE of design_1_i2c_master_axil_0_0_axis_fifo is
  signal \FSM_onehot_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cmd_start_int : STD_LOGIC;
  signal \^cmd_valid_int\ : STD_LOGIC;
  signal cmd_write_int : STD_LOGIC;
  signal \m_axis_pipe_reg[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^m_axis_pipe_reg_reg[1][3]_0\ : STD_LOGIC;
  signal \^m_axis_pipe_reg_reg[1][3]_2\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid_pipe_reg_reg[1]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_3_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rd_ptr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal rd_ptr_reg_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \s_axil_rdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal sda_o_reg_i_18_n_0 : STD_LOGIC;
  signal \^wr_ptr_reg_reg[4]_0\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "design_1_i2c_master_axil_0_0/inst/cmd_fifo_inst/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0_31_0_5 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_11 : label is 384;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_11 : label is "design_1_i2c_master_axil_0_0/inst/cmd_fifo_inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_31_6_11 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_11 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of \rd_ptr_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_ptr_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_ptr_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_ptr_reg[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_ptr_reg[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_ptr_reg[4]_i_1\ : label is "soft_lutpair2";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  cmd_valid_int <= \^cmd_valid_int\;
  \m_axis_pipe_reg_reg[1][3]_0\ <= \^m_axis_pipe_reg_reg[1][3]_0\;
  \m_axis_pipe_reg_reg[1][3]_2\ <= \^m_axis_pipe_reg_reg[1][3]_2\;
  \m_axis_tvalid_pipe_reg_reg[1]_0\ <= \^m_axis_tvalid_pipe_reg_reg[1]_0\;
  \wr_ptr_reg_reg[4]_0\ <= \^wr_ptr_reg_reg[4]_0\;
\FSM_onehot_state_reg[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C0C0C0C080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^cmd_valid_int\,
      I2 => cmd_ready_int,
      I3 => \^q\(1),
      I4 => cmd_write_int,
      I5 => \^q\(2),
      O => \m_axis_pipe_reg_reg[1][0]_0\
    );
\FSM_onehot_state_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EE00EE000000E0"
    )
        port map (
      I0 => \^m_axis_pipe_reg_reg[1][3]_0\,
      I1 => \^m_axis_pipe_reg_reg[1][3]_2\,
      I2 => \FSM_onehot_state_reg[2]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg[8]_i_2\(3),
      I4 => \FSM_onehot_state_reg[8]_i_2\(1),
      I5 => bus_active_int,
      O => \FSM_onehot_state_reg_reg[6]\
    );
\FSM_onehot_state_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => cmd_write_int,
      I3 => cmd_ready_int,
      I4 => \^cmd_valid_int\,
      I5 => \FSM_onehot_state_reg[8]_i_2\(0),
      O => \FSM_onehot_state_reg[2]_i_3_n_0\
    );
\FSM_onehot_state_reg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg[6]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg[8]_i_2\(2),
      I2 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => \FSM_onehot_state_reg_reg[5]\
    );
\FSM_onehot_state_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => \FSM_onehot_state_reg[8]_i_2\(2),
      I2 => \FSM_onehot_state_reg[6]_i_3_n_0\,
      O => D(0)
    );
\FSM_onehot_state_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7777F"
    )
        port map (
      I0 => \^cmd_valid_int\,
      I1 => cmd_ready_int,
      I2 => cmd_write_int,
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^m_axis_tvalid_pipe_reg_reg[1]_0\
    );
\FSM_onehot_state_reg[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cmd_write_int,
      I1 => \FSM_onehot_state_reg_reg[6]_1\,
      I2 => \FSM_onehot_state_reg[6]_i_5_n_0\,
      I3 => \FSM_onehot_state_reg[6]_i_6_n_0\,
      I4 => \FSM_onehot_state_reg_reg[6]_0\,
      O => \FSM_onehot_state_reg[6]_i_3_n_0\
    );
\FSM_onehot_state_reg[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => \^q\(4),
      I1 => sda_o_reg_i_12_0(1),
      I2 => sda_o_reg_i_12_0(3),
      I3 => \^q\(9),
      I4 => \^q\(5),
      I5 => sda_o_reg_i_12_0(2),
      O => \FSM_onehot_state_reg[6]_i_5_n_0\
    );
\FSM_onehot_state_reg[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEFFBE"
    )
        port map (
      I0 => cmd_start_int,
      I1 => \^q\(3),
      I2 => sda_o_reg_i_12_0(0),
      I3 => sda_o_reg_i_12_0(1),
      I4 => \^q\(4),
      O => \FSM_onehot_state_reg[6]_i_6_n_0\
    );
\FSM_onehot_state_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => cmd_write_int,
      I2 => \^q\(1),
      I3 => cmd_ready_int,
      I4 => \^cmd_valid_int\,
      I5 => \^q\(0),
      O => \m_axis_pipe_reg_reg[1][3]_1\
    );
\FSM_onehot_state_reg[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => cmd_write_int,
      I3 => cmd_ready_int,
      I4 => \^cmd_valid_int\,
      I5 => \FSM_onehot_state_reg[8]_i_2\(4),
      O => \^m_axis_pipe_reg_reg[1][3]_0\
    );
\FSM_onehot_state_reg[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state_reg_reg[6]_1\,
      I2 => \FSM_onehot_state_reg[6]_i_5_n_0\,
      I3 => \FSM_onehot_state_reg[6]_i_6_n_0\,
      I4 => \FSM_onehot_state_reg_reg[6]_0\,
      O => \^m_axis_pipe_reg_reg[1][3]_2\
    );
cmd_fifo_overflow_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFF2000"
    )
        port map (
      I0 => s_axil_awaddr(0),
      I1 => cmd_fifo_overflow_reg_reg,
      I2 => \^wr_ptr_reg_reg[4]_0\,
      I3 => cmd_fifo_overflow_next5_out,
      I4 => cmd_fifo_overflow_reg,
      O => \s_axil_awaddr[2]\
    );
cmd_valid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => cmd_fifo_overflow_reg_reg,
      I1 => cmd_start_next,
      I2 => cmd_valid_reg,
      I3 => \^wr_ptr_reg_reg[4]_0\,
      O => cmd_valid_next
    );
\m_axis_pipe_reg[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^cmd_valid_int\,
      I1 => cmd_ready_int,
      I2 => p_1_in(1),
      O => \m_axis_pipe_reg[0][11]_i_1_n_0\
    );
\m_axis_pipe_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(0),
      Q => \m_axis_pipe_reg_reg[0]\(0),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(10),
      Q => \m_axis_pipe_reg_reg[0]\(10),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(11),
      Q => \m_axis_pipe_reg_reg[0]\(11),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(1),
      Q => \m_axis_pipe_reg_reg[0]\(1),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(2),
      Q => \m_axis_pipe_reg_reg[0]\(2),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(3),
      Q => \m_axis_pipe_reg_reg[0]\(3),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(4),
      Q => \m_axis_pipe_reg_reg[0]\(4),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(5),
      Q => \m_axis_pipe_reg_reg[0]\(5),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(6),
      Q => \m_axis_pipe_reg_reg[0]\(6),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(7),
      Q => \m_axis_pipe_reg_reg[0]\(7),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(8),
      Q => \m_axis_pipe_reg_reg[0]\(8),
      R => '0'
    );
\m_axis_pipe_reg_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][11]_i_1_n_0\,
      D => p_3_out(9),
      Q => \m_axis_pipe_reg_reg[0]\(9),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(0),
      Q => \^q\(0),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(10),
      Q => \^q\(8),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(11),
      Q => \^q\(9),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(1),
      Q => \^q\(1),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(2),
      Q => cmd_write_int,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(3),
      Q => \^q\(2),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(4),
      Q => cmd_start_int,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(5),
      Q => \^q\(3),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(6),
      Q => \^q\(4),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(7),
      Q => \^q\(5),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(8),
      Q => \^q\(6),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_pipe_reg_reg[0]\(9),
      Q => \^q\(7),
      R => '0'
    );
\m_axis_tvalid_pipe_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF20FFFF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => cmd_ready_int,
      I2 => \^cmd_valid_int\,
      I3 => \m_axis_tvalid_pipe_reg[0]_i_2_n_0\,
      I4 => \m_axis_tvalid_pipe_reg[0]_i_3_n_0\,
      O => \m_axis_tvalid_pipe_reg[0]_i_1_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rd_ptr_reg_reg(3),
      I1 => \wr_ptr_reg_reg_n_0_[3]\,
      I2 => rd_ptr_reg_reg(4),
      I3 => \wr_ptr_reg_reg_n_0_[4]\,
      I4 => rd_ptr_reg_reg(5),
      I5 => \wr_ptr_reg_reg_n_0_[5]\,
      O => \m_axis_tvalid_pipe_reg[0]_i_2_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_reg_reg(1),
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      I3 => rd_ptr_reg_reg(0),
      I4 => \wr_ptr_reg_reg_n_0_[2]\,
      I5 => rd_ptr_reg_reg(2),
      O => \m_axis_tvalid_pipe_reg[0]_i_3_n_0\
    );
\m_axis_tvalid_pipe_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_1_in(1),
      I1 => cmd_ready_int,
      I2 => \^cmd_valid_int\,
      O => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\
    );
\m_axis_tvalid_pipe_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[0]_i_1_n_0\,
      Q => p_1_in(1),
      R => rst
    );
\m_axis_tvalid_pipe_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\,
      Q => \^cmd_valid_int\,
      R => rst
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRB(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRC(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRD(4) => \wr_ptr_reg_reg_n_0_[4]\,
      ADDRD(3) => \wr_ptr_reg_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_reg_n_0_[0]\,
      DIA(1 downto 0) => s_axis_tdata(1 downto 0),
      DIB(1 downto 0) => s_axis_tdata(3 downto 2),
      DIC(1 downto 0) => s_axis_tdata(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_3_out(1 downto 0),
      DOB(1 downto 0) => p_3_out(3 downto 2),
      DOC(1 downto 0) => p_3_out(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
mem_reg_0_31_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cmd_valid_reg,
      I1 => \^wr_ptr_reg_reg[4]_0\,
      O => p_0_in
    );
mem_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRB(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRC(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRD(4) => \wr_ptr_reg_reg_n_0_[4]\,
      ADDRD(3) => \wr_ptr_reg_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_reg_n_0_[0]\,
      DIA(1 downto 0) => s_axis_tdata(7 downto 6),
      DIB(1 downto 0) => s_axis_tdata(9 downto 8),
      DIC(1 downto 0) => s_axis_tdata(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_3_out(7 downto 6),
      DOB(1 downto 0) => p_3_out(9 downto 8),
      DOC(1 downto 0) => p_3_out(11 downto 10),
      DOD(1 downto 0) => NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
\rd_ptr_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[0]_i_1_n_0\
    );
\rd_ptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg_reg(1),
      I1 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[1]_i_1_n_0\
    );
\rd_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_ptr_reg_reg(2),
      I1 => rd_ptr_reg_reg(0),
      I2 => rd_ptr_reg_reg(1),
      O => \rd_ptr_reg[2]_i_1_n_0\
    );
\rd_ptr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(3),
      I1 => rd_ptr_reg_reg(1),
      I2 => rd_ptr_reg_reg(0),
      I3 => rd_ptr_reg_reg(2),
      O => \rd_ptr_reg[3]_i_1_n_0\
    );
\rd_ptr_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(4),
      I1 => rd_ptr_reg_reg(2),
      I2 => rd_ptr_reg_reg(0),
      I3 => rd_ptr_reg_reg(1),
      I4 => rd_ptr_reg_reg(3),
      O => \rd_ptr_reg[4]_i_1_n_0\
    );
\rd_ptr_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF00DFDF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => cmd_ready_int,
      I2 => \^cmd_valid_int\,
      I3 => \m_axis_tvalid_pipe_reg[0]_i_2_n_0\,
      I4 => \m_axis_tvalid_pipe_reg[0]_i_3_n_0\,
      O => \rd_ptr_reg[5]_i_1_n_0\
    );
\rd_ptr_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(5),
      I1 => rd_ptr_reg_reg(3),
      I2 => rd_ptr_reg_reg(1),
      I3 => rd_ptr_reg_reg(0),
      I4 => rd_ptr_reg_reg(2),
      I5 => rd_ptr_reg_reg(4),
      O => \p_0_in__2\(5)
    );
\rd_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1_n_0\,
      D => \rd_ptr_reg[0]_i_1_n_0\,
      Q => rd_ptr_reg_reg(0),
      R => rst
    );
\rd_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1_n_0\,
      D => \rd_ptr_reg[1]_i_1_n_0\,
      Q => rd_ptr_reg_reg(1),
      R => rst
    );
\rd_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1_n_0\,
      D => \rd_ptr_reg[2]_i_1_n_0\,
      Q => rd_ptr_reg_reg(2),
      R => rst
    );
\rd_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1_n_0\,
      D => \rd_ptr_reg[3]_i_1_n_0\,
      Q => rd_ptr_reg_reg(3),
      R => rst
    );
\rd_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1_n_0\,
      D => \rd_ptr_reg[4]_i_1_n_0\,
      Q => rd_ptr_reg_reg(4),
      R => rst
    );
\rd_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1_n_0\,
      D => \p_0_in__2\(5),
      Q => rd_ptr_reg_reg(5),
      R => rst
    );
\s_axil_rdata_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200220020000"
    )
        port map (
      I0 => \m_axis_tvalid_pipe_reg[0]_i_3_n_0\,
      I1 => \s_axil_rdata_reg[9]_i_3_n_0\,
      I2 => \wr_ptr_reg_reg_n_0_[4]\,
      I3 => rd_ptr_reg_reg(4),
      I4 => \wr_ptr_reg_reg_n_0_[5]\,
      I5 => rd_ptr_reg_reg(5),
      O => \^wr_ptr_reg_reg[4]_0\
    );
\s_axil_rdata_reg[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[3]\,
      I1 => rd_ptr_reg_reg(3),
      O => \s_axil_rdata_reg[9]_i_3_n_0\
    );
sda_o_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[6]_0\,
      I1 => \FSM_onehot_state_reg[6]_i_6_n_0\,
      I2 => \FSM_onehot_state_reg[6]_i_5_n_0\,
      I3 => \FSM_onehot_state_reg_reg[6]_1\,
      I4 => cmd_write_int,
      I5 => sda_o_reg_i_18_n_0,
      O => \m_axis_pipe_reg_reg[1][2]_0\
    );
sda_o_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => cmd_write_int,
      I3 => cmd_ready_int,
      I4 => \^cmd_valid_int\,
      I5 => \FSM_onehot_state_reg[8]_i_2\(2),
      O => sda_o_reg_i_18_n_0
    );
\wr_ptr_reg[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \p_0_in__3\(0)
    );
\wr_ptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      O => \p_0_in__3\(1)
    );
\wr_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[2]\,
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \p_0_in__3\(2)
    );
\wr_ptr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[3]\,
      I1 => \wr_ptr_reg_reg_n_0_[0]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_reg_n_0_[2]\,
      O => \p_0_in__3\(3)
    );
\wr_ptr_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[4]\,
      I1 => \wr_ptr_reg_reg_n_0_[2]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_reg_n_0_[0]\,
      I4 => \wr_ptr_reg_reg_n_0_[3]\,
      O => \p_0_in__3\(4)
    );
\wr_ptr_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[5]\,
      I1 => \wr_ptr_reg_reg_n_0_[3]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      I3 => \wr_ptr_reg_reg_n_0_[1]\,
      I4 => \wr_ptr_reg_reg_n_0_[2]\,
      I5 => \wr_ptr_reg_reg_n_0_[4]\,
      O => \p_0_in__3\(5)
    );
\wr_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => \p_0_in__3\(0),
      Q => \wr_ptr_reg_reg_n_0_[0]\,
      R => rst
    );
\wr_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => \p_0_in__3\(1),
      Q => \wr_ptr_reg_reg_n_0_[1]\,
      R => rst
    );
\wr_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => \p_0_in__3\(2),
      Q => \wr_ptr_reg_reg_n_0_[2]\,
      R => rst
    );
\wr_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => \p_0_in__3\(3),
      Q => \wr_ptr_reg_reg_n_0_[3]\,
      R => rst
    );
\wr_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => \p_0_in__3\(4),
      Q => \wr_ptr_reg_reg_n_0_[4]\,
      R => rst
    );
\wr_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => \p_0_in__3\(5),
      Q => \wr_ptr_reg_reg_n_0_[5]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \wr_ptr_reg_reg[4]_0\ : out STD_LOGIC;
    \s_axil_araddr[2]\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_out_ready_reg : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \s_axil_rdata_reg_reg[9]\ : in STD_LOGIC;
    s_axil_arvalid : in STD_LOGIC;
    data_out_ready_reg_reg : in STD_LOGIC;
    cmd_valid_int : in STD_LOGIC;
    missed_ack_reg : in STD_LOGIC;
    bus_active_int : in STD_LOGIC;
    bus_control_int : in STD_LOGIC;
    busy_int : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0\ : entity is "axis_fifo";
end \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0\;

architecture STRUCTURE of \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0\ is
  signal data_out_valid : STD_LOGIC;
  signal \m_axis_pipe_reg[0][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_axis_pipe_reg[1][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__6\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \p_0_in__7\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_3_out__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \rd_ptr_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[5]_i_1__1_n_0\ : STD_LOGIC;
  signal rd_ptr_reg_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \s_axil_rdata_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \^wr_ptr_reg_reg[4]_0\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[0]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[1]_i_1\ : label is "soft_lutpair20";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "design_1_i2c_master_axil_0_0/inst/read_fifo_inst/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0_31_0_5 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_8 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_8 : label is 288;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_8 : label is "design_1_i2c_master_axil_0_0/inst/read_fifo_inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_31_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_8 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_8 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_8 : label is 8;
  attribute SOFT_HLUTNM of \rd_ptr_reg[1]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_ptr_reg[2]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_ptr_reg[3]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rd_ptr_reg[4]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wr_ptr_reg[1]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_ptr_reg[2]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_ptr_reg[3]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wr_ptr_reg[4]_i_1__1\ : label is "soft_lutpair22";
begin
  \wr_ptr_reg_reg[4]_0\ <= \^wr_ptr_reg_reg[4]_0\;
data_out_ready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => data_out_valid,
      I2 => s_axil_araddr(1),
      I3 => s_axil_arvalid,
      I4 => data_out_ready_reg_reg,
      I5 => rst,
      O => \s_axil_araddr[2]\
    );
\m_axis_pipe_reg[0][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => data_out_valid,
      I1 => data_out_ready_reg,
      I2 => p_1_in(1),
      O => \m_axis_pipe_reg[0][8]_i_1__0_n_0\
    );
\m_axis_pipe_reg[1][8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_out_ready_reg,
      I1 => data_out_valid,
      O => \m_axis_pipe_reg[1][8]_i_1__0_n_0\
    );
\m_axis_pipe_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(0),
      Q => \m_axis_pipe_reg_reg_n_0_[0][0]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(1),
      Q => \m_axis_pipe_reg_reg_n_0_[0][1]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(2),
      Q => \m_axis_pipe_reg_reg_n_0_[0][2]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(3),
      Q => \m_axis_pipe_reg_reg_n_0_[0][3]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(4),
      Q => \m_axis_pipe_reg_reg_n_0_[0][4]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(5),
      Q => \m_axis_pipe_reg_reg_n_0_[0][5]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(6),
      Q => \m_axis_pipe_reg_reg_n_0_[0][6]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(7),
      Q => \m_axis_pipe_reg_reg_n_0_[0][7]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1__0_n_0\,
      D => \p_3_out__1\(8),
      Q => \m_axis_pipe_reg_reg_n_0_[0][8]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][0]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][0]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][1]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][1]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][2]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][2]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][3]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][3]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][4]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][4]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][5]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][5]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][6]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][6]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][7]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][7]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[1][8]_i_1__0_n_0\,
      D => \m_axis_pipe_reg_reg_n_0_[0][8]\,
      Q => \m_axis_pipe_reg_reg_n_0_[1][8]\,
      R => '0'
    );
\m_axis_tvalid_pipe_reg[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF20FFFF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => data_out_ready_reg,
      I2 => data_out_valid,
      I3 => \m_axis_tvalid_pipe_reg[0]_i_2__1_n_0\,
      I4 => \m_axis_tvalid_pipe_reg[0]_i_3__1_n_0\,
      O => \m_axis_tvalid_pipe_reg[0]_i_1__1_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rd_ptr_reg_reg(3),
      I1 => \wr_ptr_reg_reg_n_0_[3]\,
      I2 => rd_ptr_reg_reg(4),
      I3 => \wr_ptr_reg_reg_n_0_[4]\,
      I4 => rd_ptr_reg_reg(5),
      I5 => \wr_ptr_reg_reg_n_0_[5]\,
      O => \m_axis_tvalid_pipe_reg[0]_i_2__1_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      I1 => \wr_ptr_reg_reg_n_0_[0]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => rd_ptr_reg_reg(1),
      I4 => \wr_ptr_reg_reg_n_0_[2]\,
      I5 => rd_ptr_reg_reg(2),
      O => \m_axis_tvalid_pipe_reg[0]_i_3__1_n_0\
    );
\m_axis_tvalid_pipe_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_1_in(1),
      I1 => data_out_ready_reg,
      I2 => data_out_valid,
      O => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\
    );
\m_axis_tvalid_pipe_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[0]_i_1__1_n_0\,
      Q => p_1_in(1),
      R => rst
    );
\m_axis_tvalid_pipe_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\,
      Q => data_out_valid,
      R => rst
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRB(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRC(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRD(4) => \wr_ptr_reg_reg_n_0_[4]\,
      ADDRD(3) => \wr_ptr_reg_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_reg_n_0_[0]\,
      DIA(1 downto 0) => s_axis(1 downto 0),
      DIB(1 downto 0) => s_axis(3 downto 2),
      DIC(1 downto 0) => s_axis(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \p_3_out__1\(1 downto 0),
      DOB(1 downto 0) => \p_3_out__1\(3 downto 2),
      DOC(1 downto 0) => \p_3_out__1\(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => E(0)
    );
mem_reg_0_31_6_8: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRB(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRC(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRD(4) => \wr_ptr_reg_reg_n_0_[4]\,
      ADDRD(3) => \wr_ptr_reg_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_reg_n_0_[0]\,
      DIA(1 downto 0) => s_axis(7 downto 6),
      DIB(1) => '0',
      DIB(0) => s_axis(8),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \p_3_out__1\(7 downto 6),
      DOB(1) => NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED(1),
      DOB(0) => \p_3_out__1\(8),
      DOC(1 downto 0) => NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => E(0)
    );
\rd_ptr_reg[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[0]_i_1__1_n_0\
    );
\rd_ptr_reg[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg_reg(1),
      I1 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[1]_i_1__1_n_0\
    );
\rd_ptr_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_ptr_reg_reg(2),
      I1 => rd_ptr_reg_reg(0),
      I2 => rd_ptr_reg_reg(1),
      O => \rd_ptr_reg[2]_i_1__1_n_0\
    );
\rd_ptr_reg[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(3),
      I1 => rd_ptr_reg_reg(1),
      I2 => rd_ptr_reg_reg(0),
      I3 => rd_ptr_reg_reg(2),
      O => \rd_ptr_reg[3]_i_1__1_n_0\
    );
\rd_ptr_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(4),
      I1 => rd_ptr_reg_reg(2),
      I2 => rd_ptr_reg_reg(0),
      I3 => rd_ptr_reg_reg(1),
      I4 => rd_ptr_reg_reg(3),
      O => \rd_ptr_reg[4]_i_1__1_n_0\
    );
\rd_ptr_reg[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF00DFDF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => data_out_ready_reg,
      I2 => data_out_valid,
      I3 => \m_axis_tvalid_pipe_reg[0]_i_2__1_n_0\,
      I4 => \m_axis_tvalid_pipe_reg[0]_i_3__1_n_0\,
      O => \rd_ptr_reg[5]_i_1__1_n_0\
    );
\rd_ptr_reg[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(5),
      I1 => rd_ptr_reg_reg(3),
      I2 => rd_ptr_reg_reg(1),
      I3 => rd_ptr_reg_reg(0),
      I4 => rd_ptr_reg_reg(2),
      I5 => rd_ptr_reg_reg(4),
      O => \p_0_in__6\(5)
    );
\rd_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__1_n_0\,
      D => \rd_ptr_reg[0]_i_1__1_n_0\,
      Q => rd_ptr_reg_reg(0),
      R => rst
    );
\rd_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__1_n_0\,
      D => \rd_ptr_reg[1]_i_1__1_n_0\,
      Q => rd_ptr_reg_reg(1),
      R => rst
    );
\rd_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__1_n_0\,
      D => \rd_ptr_reg[2]_i_1__1_n_0\,
      Q => rd_ptr_reg_reg(2),
      R => rst
    );
\rd_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__1_n_0\,
      D => \rd_ptr_reg[3]_i_1__1_n_0\,
      Q => rd_ptr_reg_reg(3),
      R => rst
    );
\rd_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__1_n_0\,
      D => \rd_ptr_reg[4]_i_1__1_n_0\,
      Q => rd_ptr_reg_reg(4),
      R => rst
    );
\rd_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__1_n_0\,
      D => \p_0_in__6\(5),
      Q => rd_ptr_reg_reg(5),
      R => rst
    );
\s_axil_rdata_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][0]\,
      I2 => s_axil_araddr(1),
      I3 => s_axis_tdata(2),
      I4 => s_axil_araddr(0),
      I5 => busy_int,
      O => D(0)
    );
\s_axil_rdata_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C101"
    )
        port map (
      I0 => data_out_valid,
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => Q(10),
      O => D(10)
    );
\s_axil_rdata_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^wr_ptr_reg_reg[4]_0\,
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => Q(11),
      O => D(11)
    );
\s_axil_rdata_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200220020000"
    )
        port map (
      I0 => \m_axis_tvalid_pipe_reg[0]_i_3__1_n_0\,
      I1 => \s_axil_rdata_reg[15]_i_3_n_0\,
      I2 => \wr_ptr_reg_reg_n_0_[4]\,
      I3 => rd_ptr_reg_reg(4),
      I4 => \wr_ptr_reg_reg_n_0_[5]\,
      I5 => rd_ptr_reg_reg(5),
      O => \^wr_ptr_reg_reg[4]_0\
    );
\s_axil_rdata_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[3]\,
      I1 => rd_ptr_reg_reg(3),
      O => \s_axil_rdata_reg[15]_i_3_n_0\
    );
\s_axil_rdata_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][1]\,
      I2 => s_axil_araddr(1),
      I3 => s_axis_tdata(3),
      I4 => s_axil_araddr(0),
      I5 => bus_control_int,
      O => D(1)
    );
\s_axil_rdata_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(2),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][2]\,
      I2 => s_axil_araddr(1),
      I3 => s_axis_tdata(4),
      I4 => s_axil_araddr(0),
      I5 => bus_active_int,
      O => D(2)
    );
\s_axil_rdata_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][3]\,
      I2 => s_axil_araddr(1),
      I3 => s_axis_tdata(5),
      I4 => s_axil_araddr(0),
      I5 => missed_ack_reg,
      O => D(3)
    );
\s_axil_rdata_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(4),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][4]\,
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      I4 => s_axis_tdata(6),
      O => D(4)
    );
\s_axil_rdata_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(5),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][5]\,
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      I4 => s_axis_tdata(7),
      O => D(5)
    );
\s_axil_rdata_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(6),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][6]\,
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      I4 => s_axis_tdata(8),
      O => D(6)
    );
\s_axil_rdata_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \m_axis_pipe_reg_reg_n_0_[1][7]\,
      I1 => s_axil_araddr(0),
      I2 => Q(7),
      I3 => s_axil_araddr(1),
      O => D(7)
    );
\s_axil_rdata_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF03300AAF033"
    )
        port map (
      I0 => data_out_valid,
      I1 => cmd_valid_int,
      I2 => s_axis_tdata(1),
      I3 => s_axil_araddr(0),
      I4 => s_axil_araddr(1),
      I5 => Q(8),
      O => D(8)
    );
\s_axil_rdata_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(9),
      I1 => \m_axis_pipe_reg_reg_n_0_[1][8]\,
      I2 => s_axil_araddr(1),
      I3 => s_axis_tdata(0),
      I4 => s_axil_araddr(0),
      I5 => \s_axil_rdata_reg_reg[9]\,
      O => D(9)
    );
\wr_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \p_0_in__7\(0)
    );
\wr_ptr_reg[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      O => \p_0_in__7\(1)
    );
\wr_ptr_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[2]\,
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \p_0_in__7\(2)
    );
\wr_ptr_reg[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[3]\,
      I1 => \wr_ptr_reg_reg_n_0_[0]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_reg_n_0_[2]\,
      O => \p_0_in__7\(3)
    );
\wr_ptr_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[4]\,
      I1 => \wr_ptr_reg_reg_n_0_[2]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_reg_n_0_[0]\,
      I4 => \wr_ptr_reg_reg_n_0_[3]\,
      O => \p_0_in__7\(4)
    );
\wr_ptr_reg[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[5]\,
      I1 => \wr_ptr_reg_reg_n_0_[3]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      I3 => \wr_ptr_reg_reg_n_0_[1]\,
      I4 => \wr_ptr_reg_reg_n_0_[2]\,
      I5 => \wr_ptr_reg_reg_n_0_[4]\,
      O => \p_0_in__7\(5)
    );
\wr_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__7\(0),
      Q => \wr_ptr_reg_reg_n_0_[0]\,
      R => rst
    );
\wr_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__7\(1),
      Q => \wr_ptr_reg_reg_n_0_[1]\,
      R => rst
    );
\wr_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__7\(2),
      Q => \wr_ptr_reg_reg_n_0_[2]\,
      R => rst
    );
\wr_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__7\(3),
      Q => \wr_ptr_reg_reg_n_0_[3]\,
      R => rst
    );
\wr_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__7\(4),
      Q => \wr_ptr_reg_reg_n_0_[4]\,
      R => rst
    );
\wr_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__7\(5),
      Q => \wr_ptr_reg_reg_n_0_[5]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0\ is
  port (
    data_in_valid_int : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_valid_next : out STD_LOGIC;
    \s_axil_awaddr[3]\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[1][8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in_ready_int : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_valid_reg : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    write_fifo_overflow_next1_out : in STD_LOGIC;
    write_fifo_overflow_reg : in STD_LOGIC;
    s_axis : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \m_axis_pipe_reg_reg[1][8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0\ : entity is "axis_fifo";
end \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0\;

architecture STRUCTURE of \design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0\ is
  signal \^data_in_valid_int\ : STD_LOGIC;
  signal \m_axis_pipe_reg[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \m_axis_pipe_reg_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_3_out__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \rd_ptr_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal rd_ptr_reg_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \s_axil_rdata_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[0]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[1]_i_1\ : label is "soft_lutpair25";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "design_1_i2c_master_axil_0_0/inst/write_fifo_inst/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0_31_0_5 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_8 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_8 : label is 288;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_8 : label is "design_1_i2c_master_axil_0_0/inst/write_fifo_inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_31_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_8 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_8 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_8 : label is 8;
  attribute SOFT_HLUTNM of \rd_ptr_reg[1]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rd_ptr_reg[2]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rd_ptr_reg[3]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rd_ptr_reg[4]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_ptr_reg[1]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wr_ptr_reg[2]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wr_ptr_reg[3]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wr_ptr_reg[4]_i_1__0\ : label is "soft_lutpair27";
begin
  data_in_valid_int <= \^data_in_valid_int\;
data_in_valid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => E(0),
      I1 => \s_axil_rdata_reg[12]_i_2_n_0\,
      I2 => data_in_valid_reg,
      O => data_in_valid_next
    );
\m_axis_pipe_reg[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^data_in_valid_int\,
      I1 => data_in_ready_int,
      I2 => p_1_in(1),
      O => \m_axis_pipe_reg[0][8]_i_1_n_0\
    );
\m_axis_pipe_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(0),
      Q => \m_axis_pipe_reg_reg_n_0_[0][0]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(1),
      Q => \m_axis_pipe_reg_reg_n_0_[0][1]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(2),
      Q => \m_axis_pipe_reg_reg_n_0_[0][2]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(3),
      Q => \m_axis_pipe_reg_reg_n_0_[0][3]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(4),
      Q => \m_axis_pipe_reg_reg_n_0_[0][4]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(5),
      Q => \m_axis_pipe_reg_reg_n_0_[0][5]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(6),
      Q => \m_axis_pipe_reg_reg_n_0_[0][6]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(7),
      Q => \m_axis_pipe_reg_reg_n_0_[0][7]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg[0][8]_i_1_n_0\,
      D => \p_3_out__0\(8),
      Q => \m_axis_pipe_reg_reg_n_0_[0][8]\,
      R => '0'
    );
\m_axis_pipe_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][0]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(0),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][1]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(1),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][2]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(2),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][3]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(3),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][4]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(4),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][5]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(5),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][6]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(6),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][7]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(7),
      R => '0'
    );
\m_axis_pipe_reg_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_pipe_reg_reg[1][8]_1\(0),
      D => \m_axis_pipe_reg_reg_n_0_[0][8]\,
      Q => \m_axis_pipe_reg_reg[1][8]_0\(8),
      R => '0'
    );
\m_axis_tvalid_pipe_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF20FFFF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => data_in_ready_int,
      I2 => \^data_in_valid_int\,
      I3 => \m_axis_tvalid_pipe_reg[0]_i_2__0_n_0\,
      I4 => \m_axis_tvalid_pipe_reg[0]_i_3__0_n_0\,
      O => \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rd_ptr_reg_reg(3),
      I1 => \wr_ptr_reg_reg_n_0_[3]\,
      I2 => rd_ptr_reg_reg(4),
      I3 => \wr_ptr_reg_reg_n_0_[4]\,
      I4 => rd_ptr_reg_reg(5),
      I5 => \wr_ptr_reg_reg_n_0_[5]\,
      O => \m_axis_tvalid_pipe_reg[0]_i_2__0_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      I1 => \wr_ptr_reg_reg_n_0_[0]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => rd_ptr_reg_reg(1),
      I4 => \wr_ptr_reg_reg_n_0_[2]\,
      I5 => rd_ptr_reg_reg(2),
      O => \m_axis_tvalid_pipe_reg[0]_i_3__0_n_0\
    );
\m_axis_tvalid_pipe_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_1_in(1),
      I1 => data_in_ready_int,
      I2 => \^data_in_valid_int\,
      O => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\
    );
\m_axis_tvalid_pipe_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0\,
      Q => p_1_in(1),
      R => rst
    );
\m_axis_tvalid_pipe_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\,
      Q => \^data_in_valid_int\,
      R => rst
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRB(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRC(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRD(4) => \wr_ptr_reg_reg_n_0_[4]\,
      ADDRD(3) => \wr_ptr_reg_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_reg_n_0_[0]\,
      DIA(1 downto 0) => s_axis(1 downto 0),
      DIB(1 downto 0) => s_axis(3 downto 2),
      DIC(1 downto 0) => s_axis(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \p_3_out__0\(1 downto 0),
      DOB(1 downto 0) => \p_3_out__0\(3 downto 2),
      DOC(1 downto 0) => \p_3_out__0\(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \p_0_in__0\
    );
\mem_reg_0_31_0_5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_valid_reg,
      I1 => \s_axil_rdata_reg[12]_i_2_n_0\,
      O => \p_0_in__0\
    );
mem_reg_0_31_6_8: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRB(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRC(4 downto 0) => rd_ptr_reg_reg(4 downto 0),
      ADDRD(4) => \wr_ptr_reg_reg_n_0_[4]\,
      ADDRD(3) => \wr_ptr_reg_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_reg_n_0_[0]\,
      DIA(1 downto 0) => s_axis(7 downto 6),
      DIB(1) => '0',
      DIB(0) => s_axis(8),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \p_3_out__0\(7 downto 6),
      DOB(1) => NLW_mem_reg_0_31_6_8_DOB_UNCONNECTED(1),
      DOB(0) => \p_3_out__0\(8),
      DOC(1 downto 0) => NLW_mem_reg_0_31_6_8_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_31_6_8_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \p_0_in__0\
    );
\rd_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[0]_i_1__0_n_0\
    );
\rd_ptr_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg_reg(1),
      I1 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[1]_i_1__0_n_0\
    );
\rd_ptr_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_ptr_reg_reg(2),
      I1 => rd_ptr_reg_reg(0),
      I2 => rd_ptr_reg_reg(1),
      O => \rd_ptr_reg[2]_i_1__0_n_0\
    );
\rd_ptr_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(3),
      I1 => rd_ptr_reg_reg(1),
      I2 => rd_ptr_reg_reg(0),
      I3 => rd_ptr_reg_reg(2),
      O => \rd_ptr_reg[3]_i_1__0_n_0\
    );
\rd_ptr_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(4),
      I1 => rd_ptr_reg_reg(2),
      I2 => rd_ptr_reg_reg(0),
      I3 => rd_ptr_reg_reg(1),
      I4 => rd_ptr_reg_reg(3),
      O => \rd_ptr_reg[4]_i_1__0_n_0\
    );
\rd_ptr_reg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF00DFDF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => data_in_ready_int,
      I2 => \^data_in_valid_int\,
      I3 => \m_axis_tvalid_pipe_reg[0]_i_2__0_n_0\,
      I4 => \m_axis_tvalid_pipe_reg[0]_i_3__0_n_0\,
      O => \rd_ptr_reg[5]_i_1__0_n_0\
    );
\rd_ptr_reg[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_ptr_reg_reg(5),
      I1 => rd_ptr_reg_reg(3),
      I2 => rd_ptr_reg_reg(1),
      I3 => rd_ptr_reg_reg(0),
      I4 => rd_ptr_reg_reg(2),
      I5 => rd_ptr_reg_reg(4),
      O => \p_0_in__4\(5)
    );
\rd_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__0_n_0\,
      D => \rd_ptr_reg[0]_i_1__0_n_0\,
      Q => rd_ptr_reg_reg(0),
      R => rst
    );
\rd_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__0_n_0\,
      D => \rd_ptr_reg[1]_i_1__0_n_0\,
      Q => rd_ptr_reg_reg(1),
      R => rst
    );
\rd_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__0_n_0\,
      D => \rd_ptr_reg[2]_i_1__0_n_0\,
      Q => rd_ptr_reg_reg(2),
      R => rst
    );
\rd_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__0_n_0\,
      D => \rd_ptr_reg[3]_i_1__0_n_0\,
      Q => rd_ptr_reg_reg(3),
      R => rst
    );
\rd_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__0_n_0\,
      D => \rd_ptr_reg[4]_i_1__0_n_0\,
      Q => rd_ptr_reg_reg(4),
      R => rst
    );
\rd_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rd_ptr_reg[5]_i_1__0_n_0\,
      D => \p_0_in__4\(5),
      Q => rd_ptr_reg_reg(5),
      R => rst
    );
\s_axil_rdata_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C500C5"
    )
        port map (
      I0 => \^data_in_valid_int\,
      I1 => s_axis_tdata(1),
      I2 => s_axil_araddr(0),
      I3 => s_axil_araddr(1),
      I4 => Q(0),
      O => D(0)
    );
\s_axil_rdata_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(1),
      I1 => s_axil_araddr(1),
      I2 => s_axis_tdata(0),
      I3 => s_axil_araddr(0),
      I4 => \s_axil_rdata_reg[12]_i_2_n_0\,
      O => D(1)
    );
\s_axil_rdata_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200220020000"
    )
        port map (
      I0 => \m_axis_tvalid_pipe_reg[0]_i_3__0_n_0\,
      I1 => \s_axil_rdata_reg[12]_i_3_n_0\,
      I2 => \wr_ptr_reg_reg_n_0_[4]\,
      I3 => rd_ptr_reg_reg(4),
      I4 => \wr_ptr_reg_reg_n_0_[5]\,
      I5 => rd_ptr_reg_reg(5),
      O => \s_axil_rdata_reg[12]_i_2_n_0\
    );
\s_axil_rdata_reg[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[3]\,
      I1 => rd_ptr_reg_reg(3),
      O => \s_axil_rdata_reg[12]_i_3_n_0\
    );
\wr_ptr_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \p_0_in__5\(0)
    );
\wr_ptr_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      O => \p_0_in__5\(1)
    );
\wr_ptr_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[2]\,
      I1 => \wr_ptr_reg_reg_n_0_[1]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \p_0_in__5\(2)
    );
\wr_ptr_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[3]\,
      I1 => \wr_ptr_reg_reg_n_0_[0]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_reg_n_0_[2]\,
      O => \p_0_in__5\(3)
    );
\wr_ptr_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[4]\,
      I1 => \wr_ptr_reg_reg_n_0_[2]\,
      I2 => \wr_ptr_reg_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_reg_n_0_[0]\,
      I4 => \wr_ptr_reg_reg_n_0_[3]\,
      O => \p_0_in__5\(4)
    );
\wr_ptr_reg[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[5]\,
      I1 => \wr_ptr_reg_reg_n_0_[3]\,
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      I3 => \wr_ptr_reg_reg_n_0_[1]\,
      I4 => \wr_ptr_reg_reg_n_0_[2]\,
      I5 => \wr_ptr_reg_reg_n_0_[4]\,
      O => \p_0_in__5\(5)
    );
\wr_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\,
      D => \p_0_in__5\(0),
      Q => \wr_ptr_reg_reg_n_0_[0]\,
      R => rst
    );
\wr_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\,
      D => \p_0_in__5\(1),
      Q => \wr_ptr_reg_reg_n_0_[1]\,
      R => rst
    );
\wr_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\,
      D => \p_0_in__5\(2),
      Q => \wr_ptr_reg_reg_n_0_[2]\,
      R => rst
    );
\wr_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\,
      D => \p_0_in__5\(3),
      Q => \wr_ptr_reg_reg_n_0_[3]\,
      R => rst
    );
\wr_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\,
      D => \p_0_in__5\(4),
      Q => \wr_ptr_reg_reg_n_0_[4]\,
      R => rst
    );
\wr_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\,
      D => \p_0_in__5\(5),
      Q => \wr_ptr_reg_reg_n_0_[5]\,
      R => rst
    );
write_fifo_overflow_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF80"
    )
        port map (
      I0 => s_axil_awaddr(0),
      I1 => \s_axil_rdata_reg[12]_i_2_n_0\,
      I2 => write_fifo_overflow_next1_out,
      I3 => write_fifo_overflow_reg,
      O => \s_axil_awaddr[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_master_axil_0_0_i2c_master is
  port (
    busy_int : out STD_LOGIC;
    bus_active_int : out STD_LOGIC;
    i2c_sda_t : out STD_LOGIC;
    i2c_scl_o : out STD_LOGIC;
    data_in_ready_int : out STD_LOGIC;
    cmd_ready_int : out STD_LOGIC;
    bus_control_int : out STD_LOGIC;
    s_axis : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_data_tready_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_data_tvalid_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg_reg[11]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \addr_reg_reg[4]_0\ : out STD_LOGIC;
    \addr_reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \addr_reg_reg[3]_0\ : out STD_LOGIC;
    missed_ack_next : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    i2c_sda_i : in STD_LOGIC;
    i2c_scl_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    cmd_valid_int : in STD_LOGIC;
    data_in_valid_int : in STD_LOGIC;
    m_axis_data_tvalid_reg_reg_1 : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[4]_0\ : in STD_LOGIC;
    \bit_count_reg_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[8]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[8]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[5]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[11]_1\ : in STD_LOGIC;
    sda_o_reg_i_2_0 : in STD_LOGIC;
    \delay_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    missed_ack_reg_reg_0 : in STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    missed_ack_reg : in STD_LOGIC;
    last_reg_reg_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_i2c_master_axil_0_0_i2c_master : entity is "i2c_master";
end design_1_i2c_master_axil_0_0_i2c_master;

architecture STRUCTURE of design_1_i2c_master_axil_0_0_i2c_master is
  signal \FSM_onehot_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg_reg[11]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_phy_state_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal addr_reg : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \addr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \^addr_reg_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bit_count_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bit_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \bit_count_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \bit_count_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \^bus_active_int\ : STD_LOGIC;
  signal bus_active_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_control_int\ : STD_LOGIC;
  signal bus_control_reg_i_1_n_0 : STD_LOGIC;
  signal busy_reg0 : STD_LOGIC;
  signal \^cmd_ready_int\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal \^data_in_ready_int\ : STD_LOGIC;
  signal data_out_valid_int : STD_LOGIC;
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal delay_next0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \delay_next0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__0_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__0_n_1\ : STD_LOGIC;
  signal \delay_next0_carry__0_n_2\ : STD_LOGIC;
  signal \delay_next0_carry__0_n_3\ : STD_LOGIC;
  signal \delay_next0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__1_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__1_n_1\ : STD_LOGIC;
  signal \delay_next0_carry__1_n_2\ : STD_LOGIC;
  signal \delay_next0_carry__1_n_3\ : STD_LOGIC;
  signal \delay_next0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \delay_next0_carry__2_n_1\ : STD_LOGIC;
  signal \delay_next0_carry__2_n_2\ : STD_LOGIC;
  signal \delay_next0_carry__2_n_3\ : STD_LOGIC;
  signal delay_next0_carry_i_1_n_0 : STD_LOGIC;
  signal delay_next0_carry_i_2_n_0 : STD_LOGIC;
  signal delay_next0_carry_i_3_n_0 : STD_LOGIC;
  signal delay_next0_carry_i_4_n_0 : STD_LOGIC;
  signal delay_next0_carry_n_0 : STD_LOGIC;
  signal delay_next0_carry_n_1 : STD_LOGIC;
  signal delay_next0_carry_n_2 : STD_LOGIC;
  signal delay_next0_carry_n_3 : STD_LOGIC;
  signal delay_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \delay_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \delay_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \delay_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \delay_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \delay_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal delay_scl_reg : STD_LOGIC;
  signal delay_scl_reg_i_1_n_0 : STD_LOGIC;
  signal delay_scl_reg_i_2_n_0 : STD_LOGIC;
  signal \^i2c_scl_o\ : STD_LOGIC;
  signal \^i2c_sda_t\ : STD_LOGIC;
  signal last_reg : STD_LOGIC;
  signal last_reg_i_1_n_0 : STD_LOGIC;
  signal last_sda_i_reg : STD_LOGIC;
  signal m_axis_data_tlast_next5_out : STD_LOGIC;
  signal m_axis_data_tlast_reg_i_1_n_0 : STD_LOGIC;
  signal m_axis_data_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal m_axis_data_tvalid_reg_i_2_n_0 : STD_LOGIC;
  signal m_axis_data_tvalid_reg_i_3_n_0 : STD_LOGIC;
  signal missed_ack_int : STD_LOGIC;
  signal missed_ack_reg_0 : STD_LOGIC;
  signal \missed_ack_reg_i_1__0_n_0\ : STD_LOGIC;
  signal mode_read_reg : STD_LOGIC;
  signal mode_stop_reg : STD_LOGIC;
  signal mode_write_multiple_reg : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_4_in : STD_LOGIC;
  signal phy_rx_data_reg_i_1_n_0 : STD_LOGIC;
  signal phy_rx_data_reg_i_2_n_0 : STD_LOGIC;
  signal phy_state_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal phy_state_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal s_axis_cmd_ready_reg_i_1_n_0 : STD_LOGIC;
  signal s_axis_data_tready_next : STD_LOGIC;
  signal s_axis_data_tready_reg_i_1_n_0 : STD_LOGIC;
  signal scl_i_reg : STD_LOGIC;
  signal scl_o_reg_i_1_n_0 : STD_LOGIC;
  signal sda_i_reg : STD_LOGIC;
  signal sda_o_reg_i_11_n_0 : STD_LOGIC;
  signal sda_o_reg_i_13_n_0 : STD_LOGIC;
  signal sda_o_reg_i_14_n_0 : STD_LOGIC;
  signal sda_o_reg_i_15_n_0 : STD_LOGIC;
  signal sda_o_reg_i_16_n_0 : STD_LOGIC;
  signal sda_o_reg_i_17_n_0 : STD_LOGIC;
  signal sda_o_reg_i_1_n_0 : STD_LOGIC;
  signal sda_o_reg_i_2_n_0 : STD_LOGIC;
  signal sda_o_reg_i_3_n_0 : STD_LOGIC;
  signal sda_o_reg_i_4_n_0 : STD_LOGIC;
  signal sda_o_reg_i_5_n_0 : STD_LOGIC;
  signal sda_o_reg_i_6_n_0 : STD_LOGIC;
  signal sda_o_reg_i_7_n_0 : STD_LOGIC;
  signal sda_o_reg_i_8_n_0 : STD_LOGIC;
  signal sda_o_reg_i_9_n_0 : STD_LOGIC;
  signal sda_o_reg_reg_i_10_n_0 : STD_LOGIC;
  signal \NLW_delay_next0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[0]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[9]_i_2\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[0]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[10]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[11]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[1]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[2]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[3]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[4]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[5]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[6]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[7]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[8]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[9]\ : label is "STATE_IDLE:000000000001,STATE_WRITE_3:010000000000,STATE_WRITE_1:000100000000,STATE_WRITE_2:001000000000,STATE_ADDRESS_2:000000001000,STATE_ADDRESS_1:000000000100,STATE_START_WAIT:000000000010,STATE_START:000001000000,STATE_ACTIVE_READ:000000100000,STATE_STOP:000010000000,STATE_READ:000000010000,STATE_ACTIVE_WRITE:100000000000";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[0]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[0]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[3]_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[3]_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_phy_state_reg[3]_i_9\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES of \FSM_sequential_phy_state_reg_reg[0]\ : label is "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_phy_state_reg_reg[1]\ : label is "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_phy_state_reg_reg[2]\ : label is "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_phy_state_reg_reg[3]\ : label is "PHY_STATE_STOP_2:1110,PHY_STATE_STOP_1:1101,PHY_STATE_READ_BIT_4:1100,PHY_STATE_REPEATED_START_2:0101,PHY_STATE_REPEATED_START_1:0100,PHY_STATE_ACTIVE:0011,PHY_STATE_READ_BIT_3:1011,PHY_STATE_IDLE:0000,PHY_STATE_READ_BIT_2:1010,PHY_STATE_WRITE_BIT_2:0111,PHY_STATE_WRITE_BIT_1:0110,PHY_STATE_READ_BIT_1:1001,PHY_STATE_WRITE_BIT_3:1000,PHY_STATE_START_2:0010,PHY_STATE_START_1:0001,PHY_STATE_STOP_3:1111";
  attribute SOFT_HLUTNM of \bit_count_reg[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bit_count_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bit_count_reg[3]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bit_count_reg[3]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of busy_reg_i_1 : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delay_next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \delay_next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_next0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_next0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \delay_reg[16]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \delay_reg[16]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \delay_reg[16]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of delay_scl_reg_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_pipe_reg[1][8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of phy_rx_data_reg_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of s_axis_cmd_ready_reg_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sda_o_reg_i_4 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of sda_o_reg_i_9 : label is "soft_lutpair7";
begin
  \FSM_onehot_state_reg_reg[11]_0\(4 downto 0) <= \^fsm_onehot_state_reg_reg[11]_0\(4 downto 0);
  \addr_reg_reg[6]_0\(3 downto 0) <= \^addr_reg_reg[6]_0\(3 downto 0);
  bus_active_int <= \^bus_active_int\;
  bus_control_int <= \^bus_control_int\;
  cmd_ready_int <= \^cmd_ready_int\;
  data_in_ready_int <= \^data_in_ready_int\;
  i2c_scl_o <= \^i2c_scl_o\;
  i2c_sda_t <= \^i2c_sda_t\;
  s_axis(8 downto 0) <= \^s_axis\(8 downto 0);
\FSM_onehot_state_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_reg[0]_0\,
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      O => \FSM_onehot_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DD0D"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I1 => \FSM_onehot_state_reg_reg[5]_0\,
      I2 => mode_stop_reg,
      I3 => \FSM_onehot_state_reg[0]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[7]\,
      O => \FSM_onehot_state_reg[0]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => last_reg,
      I1 => mode_write_multiple_reg,
      I2 => \FSM_onehot_state_reg_reg_n_0_[10]\,
      O => \FSM_onehot_state_reg[0]_i_3_n_0\
    );
\FSM_onehot_state_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I1 => \bit_count_reg_reg_n_0_[2]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[1]\,
      I4 => \bit_count_reg_reg_n_0_[3]\,
      O => \FSM_onehot_state_reg[10]_i_1_n_0\
    );
\FSM_onehot_state_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => phy_state_reg(1),
      I1 => phy_state_reg(0),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(2),
      O => p_4_in
    );
\FSM_onehot_state_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4FF4444"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[11]_1\,
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I2 => last_reg,
      I3 => mode_write_multiple_reg,
      I4 => \FSM_onehot_state_reg_reg_n_0_[10]\,
      I5 => mode_stop_reg,
      O => \FSM_onehot_state_reg[11]_i_2_n_0\
    );
\FSM_onehot_state_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \^bus_active_int\,
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(1),
      I2 => \FSM_onehot_state_reg_reg[0]_0\,
      I3 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      O => \FSM_onehot_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[3]\,
      I1 => \bit_count_reg_reg_n_0_[1]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I5 => \bit_count_reg_reg[0]_0\,
      O => \FSM_onehot_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[3]\,
      I1 => \bit_count_reg_reg_n_0_[1]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => \FSM_onehot_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[4]_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg[9]_i_2_n_0\,
      I3 => mode_read_reg,
      I4 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      O => \FSM_onehot_state_reg[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FF808080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[0]_0\,
      I1 => \FSM_onehot_state_reg_reg[5]_0\,
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg[9]_i_2_n_0\,
      I5 => mode_stop_reg,
      O => \FSM_onehot_state_reg[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F66"
    )
        port map (
      I0 => addr_reg(4),
      I1 => Q(7),
      I2 => Q(5),
      I3 => \^addr_reg_reg[6]_0\(2),
      O => \addr_reg_reg[4]_0\
    );
\FSM_onehot_state_reg[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => addr_reg(3),
      I1 => Q(6),
      I2 => addr_reg(5),
      I3 => Q(8),
      O => \addr_reg_reg[3]_0\
    );
\FSM_onehot_state_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg[9]_i_2_n_0\,
      I2 => mode_stop_reg,
      I3 => \FSM_onehot_state_reg_reg[5]_0\,
      I4 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      O => \FSM_onehot_state_reg[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => mode_write_multiple_reg,
      I1 => last_reg,
      I2 => \FSM_onehot_state_reg_reg_n_0_[10]\,
      I3 => s_axis_data_tready_next,
      O => \FSM_onehot_state_reg[8]_i_1_n_0\
    );
\FSM_onehot_state_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I1 => \FSM_onehot_state_reg[8]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => mode_read_reg,
      I4 => \FSM_onehot_state_reg_reg[8]_0\,
      I5 => \FSM_onehot_state_reg_reg[8]_1\,
      O => s_axis_data_tready_next
    );
\FSM_onehot_state_reg[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_in_ready_int\,
      I1 => data_in_valid_int,
      O => \FSM_onehot_state_reg[8]_i_3_n_0\
    );
\FSM_onehot_state_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \^data_in_ready_int\,
      I1 => data_in_valid_int,
      I2 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I3 => \FSM_onehot_state_reg[9]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      O => \FSM_onehot_state_reg[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[3]\,
      I1 => \bit_count_reg_reg_n_0_[1]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[2]\,
      O => \FSM_onehot_state_reg[9]_i_2_n_0\
    );
\FSM_onehot_state_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[0]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg_reg[11]_0\(0),
      S => rst
    );
\FSM_onehot_state_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[10]\,
      R => rst
    );
\FSM_onehot_state_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[11]_i_2_n_0\,
      Q => \^fsm_onehot_state_reg_reg[11]_0\(4),
      R => rst
    );
\FSM_onehot_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[1]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg_reg[11]_0\(1),
      R => rst
    );
\FSM_onehot_state_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[2]\,
      R => rst
    );
\FSM_onehot_state_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[3]\,
      R => rst
    );
\FSM_onehot_state_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[4]\,
      R => rst
    );
\FSM_onehot_state_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[5]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg_reg[11]_0\(2),
      R => rst
    );
\FSM_onehot_state_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => D(0),
      Q => \^fsm_onehot_state_reg_reg[11]_0\(3),
      R => rst
    );
\FSM_onehot_state_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[7]\,
      R => rst
    );
\FSM_onehot_state_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[8]\,
      R => rst
    );
\FSM_onehot_state_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_in,
      D => \FSM_onehot_state_reg[9]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[9]\,
      R => rst
    );
\FSM_sequential_phy_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00441044FFFFFFEE"
    )
        port map (
      I0 => phy_state_reg(3),
      I1 => phy_state_reg(2),
      I2 => \FSM_sequential_phy_state_reg[0]_i_2_n_0\,
      I3 => phy_state_reg(1),
      I4 => \FSM_sequential_phy_state_reg[0]_i_3_n_0\,
      I5 => phy_state_reg(0),
      O => \FSM_sequential_phy_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_phy_state_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A200F3F3"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[5]_0\,
      I1 => mode_stop_reg,
      I2 => \FSM_sequential_phy_state_reg[0]_i_4_n_0\,
      I3 => \FSM_onehot_state_reg_reg[0]_0\,
      I4 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      I5 => \FSM_sequential_phy_state_reg[0]_i_5_n_0\,
      O => \FSM_sequential_phy_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_phy_state_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888A88"
    )
        port map (
      I0 => p_4_in,
      I1 => \FSM_sequential_phy_state_reg[0]_i_6_n_0\,
      I2 => \FSM_onehot_state_reg_reg[8]_1\,
      I3 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I4 => \FSM_onehot_state_reg_reg[0]_0\,
      O => \FSM_sequential_phy_state_reg[0]_i_3_n_0\
    );
\FSM_sequential_phy_state_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I1 => \bit_count_reg_reg_n_0_[2]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[1]\,
      I4 => \bit_count_reg_reg_n_0_[3]\,
      O => \FSM_sequential_phy_state_reg[0]_i_4_n_0\
    );
\FSM_sequential_phy_state_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCAAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I1 => \bit_count_reg_reg_n_0_[3]\,
      I2 => \bit_count_reg_reg_n_0_[1]\,
      I3 => \bit_count_reg_reg_n_0_[0]\,
      I4 => \bit_count_reg_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      O => \FSM_sequential_phy_state_reg[0]_i_5_n_0\
    );
\FSM_sequential_phy_state_reg[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F5F4F4"
    )
        port map (
      I0 => \^bus_active_int\,
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(1),
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(3),
      I3 => \FSM_onehot_state_reg_reg[0]_0\,
      I4 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      O => \FSM_sequential_phy_state_reg[0]_i_6_n_0\
    );
\FSM_sequential_phy_state_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF44F0"
    )
        port map (
      I0 => phy_state_reg(2),
      I1 => \FSM_sequential_phy_state_reg[1]_i_2_n_0\,
      I2 => phy_state_reg(1),
      I3 => phy_state_reg(0),
      I4 => phy_state_reg(3),
      O => \FSM_sequential_phy_state_reg[1]_i_1_n_0\
    );
\FSM_sequential_phy_state_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45FF"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[0]_i_3_n_0\,
      I1 => \FSM_sequential_phy_state_reg[3]_i_12_n_0\,
      I2 => \FSM_sequential_phy_state_reg[3]_i_4_n_0\,
      I3 => phy_state_reg(1),
      O => \FSM_sequential_phy_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_phy_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FD0F0000FD00F00"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[3]_i_5_n_0\,
      I1 => \FSM_sequential_phy_state_reg[2]_i_2_n_0\,
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(2),
      I4 => phy_state_reg(1),
      I5 => phy_state_reg(3),
      O => \FSM_sequential_phy_state_reg[2]_i_1_n_0\
    );
\FSM_sequential_phy_state_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A202A"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[2]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg[9]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => \FSM_sequential_phy_state_reg[2]_i_2_n_0\
    );
\FSM_sequential_phy_state_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => p_4_in,
      I1 => \FSM_onehot_state_reg_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg[0]_i_3_n_0\,
      I3 => mode_stop_reg,
      I4 => \FSM_onehot_state_reg_reg[5]_0\,
      I5 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      O => \FSM_sequential_phy_state_reg[2]_i_3_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I1 => delay_scl_reg,
      O => phy_state_next(0)
    );
\FSM_sequential_phy_state_reg[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I1 => \bit_count_reg_reg_n_0_[2]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[1]\,
      I4 => \bit_count_reg_reg_n_0_[3]\,
      O => \FSM_sequential_phy_state_reg[3]_i_10_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I1 => \bit_count_reg_reg_n_0_[3]\,
      I2 => \bit_count_reg_reg_n_0_[1]\,
      I3 => \bit_count_reg_reg_n_0_[0]\,
      I4 => \bit_count_reg_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \FSM_sequential_phy_state_reg[3]_i_11_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001001"
    )
        port map (
      I0 => phy_state_reg(2),
      I1 => phy_state_reg(3),
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(1),
      I4 => \FSM_sequential_phy_state_reg[0]_i_2_n_0\,
      O => \FSM_sequential_phy_state_reg[3]_i_12_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFF0FFF0F0008000"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[3]_i_4_n_0\,
      I1 => \FSM_sequential_phy_state_reg[3]_i_5_n_0\,
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(1),
      I4 => phy_state_reg(2),
      I5 => phy_state_reg(3),
      O => \FSM_sequential_phy_state_reg[3]_i_2_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[3]_i_6_n_0\,
      I1 => \FSM_sequential_phy_state_reg[3]_i_7_n_0\,
      I2 => \FSM_sequential_phy_state_reg[3]_i_8_n_0\,
      I3 => delay_reg(15),
      I4 => delay_reg(5),
      I5 => delay_reg(14),
      O => \FSM_sequential_phy_state_reg[3]_i_3_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2FF00000000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I1 => \FSM_onehot_state_reg_reg[5]_0\,
      I2 => \FSM_sequential_phy_state_reg[3]_i_9_n_0\,
      I3 => \FSM_sequential_phy_state_reg[3]_i_10_n_0\,
      I4 => \FSM_sequential_phy_state_reg[3]_i_11_n_0\,
      I5 => p_4_in,
      O => \FSM_sequential_phy_state_reg[3]_i_4_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[0]_i_3_n_0\,
      I1 => \FSM_sequential_phy_state_reg[3]_i_12_n_0\,
      I2 => phy_state_reg(3),
      O => \FSM_sequential_phy_state_reg[3]_i_5_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => delay_reg(12),
      I1 => delay_reg(0),
      I2 => delay_reg(8),
      I3 => delay_reg(1),
      I4 => delay_reg(9),
      I5 => delay_reg(6),
      O => \FSM_sequential_phy_state_reg[3]_i_6_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_reg(7),
      I1 => delay_reg(13),
      I2 => delay_reg(3),
      I3 => delay_reg(4),
      O => \FSM_sequential_phy_state_reg[3]_i_7_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_reg(2),
      I1 => delay_reg(11),
      I2 => delay_reg(16),
      I3 => delay_reg(10),
      O => \FSM_sequential_phy_state_reg[3]_i_8_n_0\
    );
\FSM_sequential_phy_state_reg[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[7]\,
      I1 => last_reg,
      I2 => mode_write_multiple_reg,
      I3 => \FSM_onehot_state_reg_reg_n_0_[10]\,
      I4 => mode_stop_reg,
      O => \FSM_sequential_phy_state_reg[3]_i_9_n_0\
    );
\FSM_sequential_phy_state_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => phy_state_next(0),
      D => \FSM_sequential_phy_state_reg[0]_i_1_n_0\,
      Q => phy_state_reg(0),
      R => rst
    );
\FSM_sequential_phy_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => phy_state_next(0),
      D => \FSM_sequential_phy_state_reg[1]_i_1_n_0\,
      Q => phy_state_reg(1),
      R => rst
    );
\FSM_sequential_phy_state_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => phy_state_next(0),
      D => \FSM_sequential_phy_state_reg[2]_i_1_n_0\,
      Q => phy_state_reg(2),
      R => rst
    );
\FSM_sequential_phy_state_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => phy_state_next(0),
      D => \FSM_sequential_phy_state_reg[3]_i_2_n_0\,
      Q => phy_state_reg(3),
      R => rst
    );
\addr_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[0]_0\,
      I1 => p_4_in,
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I3 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      I4 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      O => \addr_reg[6]_i_1_n_0\
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(3),
      Q => \^addr_reg_reg[6]_0\(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(4),
      Q => \^addr_reg_reg[6]_0\(1),
      R => '0'
    );
\addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(5),
      Q => \^addr_reg_reg[6]_0\(2),
      R => '0'
    );
\addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(6),
      Q => addr_reg(3),
      R => '0'
    );
\addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(7),
      Q => addr_reg(4),
      R => '0'
    );
\addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(8),
      Q => addr_reg(5),
      R => '0'
    );
\addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(9),
      Q => \^addr_reg_reg[6]_0\(3),
      R => '0'
    );
\bit_count_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => bit_count_next(0)
    );
\bit_count_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999990"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[0]\,
      I1 => \bit_count_reg_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => bit_count_next(1)
    );
\bit_count_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1E1E1E100"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[1]\,
      I1 => \bit_count_reg_reg_n_0_[0]\,
      I2 => \bit_count_reg_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => bit_count_next(2)
    );
\bit_count_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA8A"
    )
        port map (
      I0 => p_4_in,
      I1 => \bit_count_reg[3]_i_3_n_0\,
      I2 => \bit_count_reg_reg[0]_0\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => \bit_count_reg[3]_i_1_n_0\
    );
\bit_count_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000AAA9"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[3]\,
      I1 => \bit_count_reg_reg_n_0_[1]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[2]\,
      I4 => \bit_count_reg[3]_i_4_n_0\,
      I5 => \bit_count_reg[3]_i_5_n_0\,
      O => bit_count_next(3)
    );
\bit_count_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[4]_0\,
      I1 => mode_read_reg,
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I4 => data_in_valid_int,
      I5 => \^data_in_ready_int\,
      O => \bit_count_reg[3]_i_3_n_0\
    );
\bit_count_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \bit_count_reg[3]_i_4_n_0\
    );
\bit_count_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \bit_count_reg[3]_i_6_n_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \^fsm_onehot_state_reg_reg[11]_0\(1),
      I4 => \^fsm_onehot_state_reg_reg[11]_0\(3),
      O => \bit_count_reg[3]_i_5_n_0\
    );
\bit_count_reg[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      O => \bit_count_reg[3]_i_6_n_0\
    );
\bit_count_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_count_reg[3]_i_1_n_0\,
      D => bit_count_next(0),
      Q => \bit_count_reg_reg_n_0_[0]\,
      R => '0'
    );
\bit_count_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_count_reg[3]_i_1_n_0\,
      D => bit_count_next(1),
      Q => \bit_count_reg_reg_n_0_[1]\,
      R => '0'
    );
\bit_count_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_count_reg[3]_i_1_n_0\,
      D => bit_count_next(2),
      Q => \bit_count_reg_reg_n_0_[2]\,
      R => '0'
    );
\bit_count_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_count_reg[3]_i_1_n_0\,
      D => bit_count_next(3),
      Q => \bit_count_reg_reg_n_0_[3]\,
      R => '0'
    );
bus_active_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F740"
    )
        port map (
      I0 => sda_i_reg,
      I1 => scl_i_reg,
      I2 => last_sda_i_reg,
      I3 => \^bus_active_int\,
      O => bus_active_reg_i_1_n_0
    );
bus_active_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => bus_active_reg_i_1_n_0,
      Q => \^bus_active_int\,
      R => rst
    );
bus_control_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00020000"
    )
        port map (
      I0 => phy_state_next(0),
      I1 => phy_state_reg(3),
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(2),
      I4 => phy_state_reg(1),
      I5 => \^bus_control_int\,
      O => bus_control_reg_i_1_n_0
    );
bus_control_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => bus_control_reg_i_1_n_0,
      Q => \^bus_control_int\,
      R => rst
    );
busy_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I3 => p_4_in,
      O => busy_reg0
    );
busy_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => busy_reg0,
      Q => busy_int,
      R => rst
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(0),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => p_0_in(0),
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(1),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => \data_reg_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(2),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => data2,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(3),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => data3,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(4),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => data4,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(5),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => data5,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(6),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => data6,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001100110010000"
    )
        port map (
      I0 => phy_state_reg(2),
      I1 => phy_state_reg(3),
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(1),
      I4 => \bit_count_reg[3]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => last_reg_reg_0(7),
      I1 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I2 => data7,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[0]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[0]\,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[1]_i_1_n_0\,
      Q => data2,
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[2]_i_1_n_0\,
      Q => data3,
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[3]_i_1_n_0\,
      Q => data4,
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[4]_i_1_n_0\,
      Q => data5,
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[5]_i_1_n_0\,
      Q => data6,
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[6]_i_1_n_0\,
      Q => data7,
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[7]_i_2_n_0\,
      Q => data0,
      R => '0'
    );
delay_next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_next0_carry_n_0,
      CO(2) => delay_next0_carry_n_1,
      CO(1) => delay_next0_carry_n_2,
      CO(0) => delay_next0_carry_n_3,
      CYINIT => delay_reg(0),
      DI(3 downto 0) => delay_reg(4 downto 1),
      O(3 downto 0) => delay_next0(4 downto 1),
      S(3) => delay_next0_carry_i_1_n_0,
      S(2) => delay_next0_carry_i_2_n_0,
      S(1) => delay_next0_carry_i_3_n_0,
      S(0) => delay_next0_carry_i_4_n_0
    );
\delay_next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_next0_carry_n_0,
      CO(3) => \delay_next0_carry__0_n_0\,
      CO(2) => \delay_next0_carry__0_n_1\,
      CO(1) => \delay_next0_carry__0_n_2\,
      CO(0) => \delay_next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_reg(8 downto 5),
      O(3 downto 0) => delay_next0(8 downto 5),
      S(3) => \delay_next0_carry__0_i_1_n_0\,
      S(2) => \delay_next0_carry__0_i_2_n_0\,
      S(1) => \delay_next0_carry__0_i_3_n_0\,
      S(0) => \delay_next0_carry__0_i_4_n_0\
    );
\delay_next0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(8),
      O => \delay_next0_carry__0_i_1_n_0\
    );
\delay_next0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(7),
      O => \delay_next0_carry__0_i_2_n_0\
    );
\delay_next0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(6),
      O => \delay_next0_carry__0_i_3_n_0\
    );
\delay_next0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(5),
      O => \delay_next0_carry__0_i_4_n_0\
    );
\delay_next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_next0_carry__0_n_0\,
      CO(3) => \delay_next0_carry__1_n_0\,
      CO(2) => \delay_next0_carry__1_n_1\,
      CO(1) => \delay_next0_carry__1_n_2\,
      CO(0) => \delay_next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_reg(12 downto 9),
      O(3 downto 0) => delay_next0(12 downto 9),
      S(3) => \delay_next0_carry__1_i_1_n_0\,
      S(2) => \delay_next0_carry__1_i_2_n_0\,
      S(1) => \delay_next0_carry__1_i_3_n_0\,
      S(0) => \delay_next0_carry__1_i_4_n_0\
    );
\delay_next0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(12),
      O => \delay_next0_carry__1_i_1_n_0\
    );
\delay_next0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(11),
      O => \delay_next0_carry__1_i_2_n_0\
    );
\delay_next0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(10),
      O => \delay_next0_carry__1_i_3_n_0\
    );
\delay_next0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(9),
      O => \delay_next0_carry__1_i_4_n_0\
    );
\delay_next0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_next0_carry__1_n_0\,
      CO(3) => \NLW_delay_next0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \delay_next0_carry__2_n_1\,
      CO(1) => \delay_next0_carry__2_n_2\,
      CO(0) => \delay_next0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => delay_reg(15 downto 13),
      O(3 downto 0) => delay_next0(16 downto 13),
      S(3) => \delay_next0_carry__2_i_1_n_0\,
      S(2) => \delay_next0_carry__2_i_2_n_0\,
      S(1) => \delay_next0_carry__2_i_3_n_0\,
      S(0) => \delay_next0_carry__2_i_4_n_0\
    );
\delay_next0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(16),
      O => \delay_next0_carry__2_i_1_n_0\
    );
\delay_next0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(15),
      O => \delay_next0_carry__2_i_2_n_0\
    );
\delay_next0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(14),
      O => \delay_next0_carry__2_i_3_n_0\
    );
\delay_next0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(13),
      O => \delay_next0_carry__2_i_4_n_0\
    );
delay_next0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(4),
      O => delay_next0_carry_i_1_n_0
    );
delay_next0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(3),
      O => delay_next0_carry_i_2_n_0
    );
delay_next0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(2),
      O => delay_next0_carry_i_3_n_0
    );
delay_next0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_reg(1),
      O => delay_next0_carry_i_4_n_0
    );
\delay_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(0),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I3 => delay_reg(0),
      O => \delay_reg[0]_i_1_n_0\
    );
\delay_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(9),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(10),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(10),
      O => \delay_reg[10]_i_1_n_0\
    );
\delay_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(10),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(11),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(11),
      O => \delay_reg[11]_i_1_n_0\
    );
\delay_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(11),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(12),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(12),
      O => \delay_reg[12]_i_1_n_0\
    );
\delay_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(12),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(13),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(13),
      O => \delay_reg[13]_i_1_n_0\
    );
\delay_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(13),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(14),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(14),
      O => \delay_reg[14]_i_1_n_0\
    );
\delay_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(14),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(15),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(15),
      O => \delay_reg[15]_i_1_n_0\
    );
\delay_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515111555555555"
    )
        port map (
      I0 => delay_scl_reg,
      I1 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I2 => \delay_reg[16]_i_3_n_0\,
      I3 => phy_state_reg(3),
      I4 => phy_state_reg(1),
      I5 => \delay_reg[16]_i_4_n_0\,
      O => \delay_reg[16]_i_1_n_0\
    );
\delay_reg[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(15),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I3 => delay_next0(16),
      O => \delay_reg[16]_i_2_n_0\
    );
\delay_reg[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C303C3C2"
    )
        port map (
      I0 => \bit_count_reg_reg[0]_0\,
      I1 => phy_state_reg(2),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(0),
      I4 => phy_state_reg(1),
      O => \delay_reg[16]_i_3_n_0\
    );
\delay_reg[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[0]_i_3_n_0\,
      I1 => \FSM_sequential_phy_state_reg[3]_i_4_n_0\,
      I2 => \FSM_sequential_phy_state_reg[3]_i_12_n_0\,
      I3 => phy_state_reg(1),
      I4 => phy_state_reg(0),
      O => \delay_reg[16]_i_4_n_0\
    );
\delay_reg[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => phy_state_reg(0),
      I1 => phy_state_reg(2),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(1),
      O => \delay_reg[16]_i_5_n_0\
    );
\delay_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(0),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(1),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(1),
      O => \delay_reg[1]_i_1_n_0\
    );
\delay_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(1),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(2),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(2),
      O => \delay_reg[2]_i_1_n_0\
    );
\delay_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(2),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(3),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(3),
      O => \delay_reg[3]_i_1_n_0\
    );
\delay_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(3),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(4),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(4),
      O => \delay_reg[4]_i_1_n_0\
    );
\delay_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(4),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(5),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(5),
      O => \delay_reg[5]_i_1_n_0\
    );
\delay_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(5),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(6),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(6),
      O => \delay_reg[6]_i_1_n_0\
    );
\delay_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(6),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(7),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(7),
      O => \delay_reg[7]_i_1_n_0\
    );
\delay_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(7),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(8),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(8),
      O => \delay_reg[8]_i_1_n_0\
    );
\delay_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \delay_reg_reg[15]_0\(8),
      I1 => \delay_reg[16]_i_5_n_0\,
      I2 => \delay_reg_reg[15]_0\(9),
      I3 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      I4 => delay_next0(9),
      O => \delay_reg[9]_i_1_n_0\
    );
\delay_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[0]_i_1_n_0\,
      Q => delay_reg(0),
      R => rst
    );
\delay_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[10]_i_1_n_0\,
      Q => delay_reg(10),
      R => rst
    );
\delay_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[11]_i_1_n_0\,
      Q => delay_reg(11),
      R => rst
    );
\delay_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[12]_i_1_n_0\,
      Q => delay_reg(12),
      R => rst
    );
\delay_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[13]_i_1_n_0\,
      Q => delay_reg(13),
      R => rst
    );
\delay_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[14]_i_1_n_0\,
      Q => delay_reg(14),
      R => rst
    );
\delay_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[15]_i_1_n_0\,
      Q => delay_reg(15),
      R => rst
    );
\delay_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[16]_i_2_n_0\,
      Q => delay_reg(16),
      R => rst
    );
\delay_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[1]_i_1_n_0\,
      Q => delay_reg(1),
      R => rst
    );
\delay_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[2]_i_1_n_0\,
      Q => delay_reg(2),
      R => rst
    );
\delay_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[3]_i_1_n_0\,
      Q => delay_reg(3),
      R => rst
    );
\delay_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[4]_i_1_n_0\,
      Q => delay_reg(4),
      R => rst
    );
\delay_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[5]_i_1_n_0\,
      Q => delay_reg(5),
      R => rst
    );
\delay_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[6]_i_1_n_0\,
      Q => delay_reg(6),
      R => rst
    );
\delay_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[7]_i_1_n_0\,
      Q => delay_reg(7),
      R => rst
    );
\delay_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[8]_i_1_n_0\,
      Q => delay_reg(8),
      R => rst
    );
\delay_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_reg[16]_i_1_n_0\,
      D => \delay_reg[9]_i_1_n_0\,
      Q => delay_reg(9),
      R => rst
    );
delay_scl_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"404F4040"
    )
        port map (
      I0 => scl_i_reg,
      I1 => \^i2c_scl_o\,
      I2 => delay_scl_reg,
      I3 => delay_scl_reg_i_2_n_0,
      I4 => \FSM_sequential_phy_state_reg[3]_i_3_n_0\,
      O => delay_scl_reg_i_1_n_0
    );
delay_scl_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3D"
    )
        port map (
      I0 => phy_state_reg(2),
      I1 => phy_state_reg(0),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(1),
      O => delay_scl_reg_i_2_n_0
    );
delay_scl_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delay_scl_reg_i_1_n_0,
      Q => delay_scl_reg,
      R => rst
    );
last_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => last_reg_reg_0(8),
      I1 => p_4_in,
      I2 => \^data_in_ready_int\,
      I3 => data_in_valid_int,
      I4 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      I5 => last_reg,
      O => last_reg_i_1_n_0
    );
last_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => last_reg_i_1_n_0,
      Q => last_reg,
      R => '0'
    );
last_sda_i_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => sda_i_reg,
      Q => last_sda_i_reg,
      R => '0'
    );
\m_axis_data_tdata_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => p_4_in,
      I1 => \bit_count_reg_reg_n_0_[3]\,
      I2 => \bit_count_reg_reg_n_0_[1]\,
      I3 => \bit_count_reg_reg_n_0_[0]\,
      I4 => \bit_count_reg_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => m_axis_data_tlast_next5_out
    );
\m_axis_data_tdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => p_0_in(0),
      Q => \^s_axis\(0),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => \data_reg_reg_n_0_[0]\,
      Q => \^s_axis\(1),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => data2,
      Q => \^s_axis\(2),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => data3,
      Q => \^s_axis\(3),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => data4,
      Q => \^s_axis\(4),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => data5,
      Q => \^s_axis\(5),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => data6,
      Q => \^s_axis\(6),
      R => '0'
    );
\m_axis_data_tdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_data_tlast_next5_out,
      D => data7,
      Q => \^s_axis\(7),
      R => '0'
    );
m_axis_data_tlast_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mode_stop_reg,
      I1 => m_axis_data_tlast_next5_out,
      I2 => \^s_axis\(8),
      O => m_axis_data_tlast_reg_i_1_n_0
    );
m_axis_data_tlast_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m_axis_data_tlast_reg_i_1_n_0,
      Q => \^s_axis\(8),
      R => '0'
    );
m_axis_data_tvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEA00EAEAEAEA"
    )
        port map (
      I0 => m_axis_data_tlast_next5_out,
      I1 => data_out_valid_int,
      I2 => m_axis_data_tvalid_reg_reg_1,
      I3 => m_axis_data_tvalid_reg_i_2_n_0,
      I4 => m_axis_data_tvalid_reg_i_3_n_0,
      I5 => p_4_in,
      O => m_axis_data_tvalid_reg_i_1_n_0
    );
m_axis_data_tvalid_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[10]\,
      I4 => \^fsm_onehot_state_reg_reg[11]_0\(1),
      I5 => \^fsm_onehot_state_reg_reg[11]_0\(3),
      O => m_axis_data_tvalid_reg_i_2_n_0
    );
m_axis_data_tvalid_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      I2 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I3 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[7]\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[8]\,
      O => m_axis_data_tvalid_reg_i_3_n_0
    );
m_axis_data_tvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m_axis_data_tvalid_reg_i_1_n_0,
      Q => data_out_valid_int,
      R => rst
    );
\m_axis_pipe_reg[1][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^cmd_ready_int\,
      I1 => cmd_valid_int,
      O => E(0)
    );
\m_axis_pipe_reg[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^data_in_ready_int\,
      I1 => data_in_valid_int,
      O => s_axis_data_tready_reg_reg_0(0)
    );
\mem_reg_0_31_0_5_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out_valid_int,
      I1 => m_axis_data_tvalid_reg_reg_1,
      O => m_axis_data_tvalid_reg_reg_0(0)
    );
missed_ack_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFAAAAAAAA"
    )
        port map (
      I0 => missed_ack_int,
      I1 => missed_ack_reg_reg_0,
      I2 => s_axil_wdata(0),
      I3 => s_axil_awaddr(0),
      I4 => s_axil_wstrb(0),
      I5 => missed_ack_reg,
      O => missed_ack_next
    );
\missed_ack_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[10]\,
      I2 => p_0_in(0),
      I3 => p_4_in,
      I4 => rst,
      O => \missed_ack_reg_i_1__0_n_0\
    );
missed_ack_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \missed_ack_reg_i_1__0_n_0\,
      Q => missed_ack_int,
      R => '0'
    );
mode_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(2),
      Q => mode_read_reg,
      R => '0'
    );
mode_stop_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(0),
      Q => mode_stop_reg,
      R => '0'
    );
mode_write_multiple_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_reg[6]_i_1_n_0\,
      D => Q(1),
      Q => mode_write_multiple_reg,
      R => '0'
    );
phy_rx_data_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => sda_i_reg,
      I1 => phy_state_next(0),
      I2 => phy_rx_data_reg_i_2_n_0,
      I3 => phy_state_reg(1),
      I4 => phy_state_reg(2),
      I5 => p_0_in(0),
      O => phy_rx_data_reg_i_1_n_0
    );
phy_rx_data_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phy_state_reg(3),
      I1 => phy_state_reg(0),
      O => phy_rx_data_reg_i_2_n_0
    );
phy_rx_data_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => phy_rx_data_reg_i_1_n_0,
      Q => p_0_in(0),
      R => '0'
    );
s_axis_cmd_ready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEE0000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[11]_0\(4),
      I1 => \^fsm_onehot_state_reg_reg[11]_0\(0),
      I2 => data_out_valid_int,
      I3 => \^fsm_onehot_state_reg_reg[11]_0\(2),
      I4 => \FSM_onehot_state_reg_reg[0]_0\,
      I5 => missed_ack_reg_0,
      O => s_axis_cmd_ready_reg_i_1_n_0
    );
s_axis_cmd_ready_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFE"
    )
        port map (
      I0 => rst,
      I1 => phy_state_reg(2),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(0),
      I4 => phy_state_reg(1),
      O => missed_ack_reg_0
    );
s_axis_cmd_ready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axis_cmd_ready_reg_i_1_n_0,
      Q => \^cmd_ready_int\,
      R => '0'
    );
s_axis_data_tready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000082"
    )
        port map (
      I0 => s_axis_data_tready_next,
      I1 => phy_state_reg(1),
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(3),
      I4 => phy_state_reg(2),
      I5 => rst,
      O => s_axis_data_tready_reg_i_1_n_0
    );
s_axis_data_tready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axis_data_tready_reg_i_1_n_0,
      Q => \^data_in_ready_int\,
      R => '0'
    );
scl_i_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => i2c_scl_i,
      Q => scl_i_reg,
      R => '0'
    );
scl_o_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77DFFFF20200A02"
    )
        port map (
      I0 => phy_state_next(0),
      I1 => phy_state_reg(1),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(2),
      I4 => phy_state_reg(0),
      I5 => \^i2c_scl_o\,
      O => scl_o_reg_i_1_n_0
    );
scl_o_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scl_o_reg_i_1_n_0,
      Q => \^i2c_scl_o\,
      S => rst
    );
sda_i_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => i2c_sda_i,
      Q => sda_i_reg,
      R => '0'
    );
sda_o_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF02FF00000200"
    )
        port map (
      I0 => sda_o_reg_i_2_n_0,
      I1 => sda_o_reg_i_3_n_0,
      I2 => sda_o_reg_i_4_n_0,
      I3 => phy_state_next(0),
      I4 => sda_o_reg_i_5_n_0,
      I5 => \^i2c_sda_t\,
      O => sda_o_reg_i_1_n_0
    );
sda_o_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFC33D01"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[3]\,
      I1 => \bit_count_reg_reg_n_0_[1]\,
      I2 => \bit_count_reg_reg_n_0_[2]\,
      I3 => sda_o_reg_i_15_n_0,
      I4 => sda_o_reg_i_16_n_0,
      I5 => sda_o_reg_i_17_n_0,
      O => sda_o_reg_i_11_n_0
    );
sda_o_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => data2,
      I2 => \bit_count_reg_reg_n_0_[1]\,
      I3 => \data_reg_reg_n_0_[0]\,
      I4 => \bit_count_reg_reg_n_0_[0]\,
      I5 => data0,
      O => sda_o_reg_i_13_n_0
    );
sda_o_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7,
      I1 => data6,
      I2 => \bit_count_reg_reg_n_0_[1]\,
      I3 => data5,
      I4 => \bit_count_reg_reg_n_0_[0]\,
      I5 => data4,
      O => sda_o_reg_i_14_n_0
    );
sda_o_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^addr_reg_reg[6]_0\(1),
      I1 => \^addr_reg_reg[6]_0\(0),
      I2 => \bit_count_reg_reg_n_0_[1]\,
      I3 => addr_reg(3),
      I4 => \bit_count_reg_reg_n_0_[0]\,
      I5 => \^addr_reg_reg[6]_0\(2),
      O => sda_o_reg_i_15_n_0
    );
sda_o_reg_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => addr_reg(5),
      I1 => \bit_count_reg_reg_n_0_[0]\,
      I2 => addr_reg(4),
      I3 => \bit_count_reg_reg_n_0_[1]\,
      I4 => \^addr_reg_reg[6]_0\(3),
      O => sda_o_reg_i_16_n_0
    );
sda_o_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333373333333F"
    )
        port map (
      I0 => \bit_count_reg_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I2 => \bit_count_reg_reg_n_0_[3]\,
      I3 => \bit_count_reg_reg_n_0_[1]\,
      I4 => \bit_count_reg_reg_n_0_[2]\,
      I5 => mode_read_reg,
      O => sda_o_reg_i_17_n_0
    );
sda_o_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFEFFFEF"
    )
        port map (
      I0 => sda_o_reg_i_6_n_0,
      I1 => phy_state_reg(2),
      I2 => phy_state_reg(1),
      I3 => \FSM_sequential_phy_state_reg[0]_i_3_n_0\,
      I4 => \FSM_sequential_phy_state_reg[0]_i_2_n_0\,
      I5 => sda_o_reg_i_7_n_0,
      O => sda_o_reg_i_2_n_0
    );
sda_o_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phy_state_reg(2),
      I1 => phy_state_reg(1),
      O => sda_o_reg_i_3_n_0
    );
sda_o_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => phy_state_reg(1),
      I1 => phy_state_reg(0),
      I2 => phy_state_reg(3),
      I3 => phy_state_reg(2),
      I4 => \bit_count_reg_reg[0]_0\,
      O => sda_o_reg_i_4_n_0
    );
sda_o_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF10FFFFF0FFFF0"
    )
        port map (
      I0 => sda_o_reg_i_8_n_0,
      I1 => \FSM_sequential_phy_state_reg[0]_i_3_n_0\,
      I2 => phy_state_reg(2),
      I3 => phy_state_reg(3),
      I4 => phy_state_reg(0),
      I5 => phy_state_reg(1),
      O => sda_o_reg_i_5_n_0
    );
sda_o_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888AAAAAAAA"
    )
        port map (
      I0 => p_4_in,
      I1 => \FSM_onehot_state_reg[7]_i_1_n_0\,
      I2 => sda_o_reg_i_9_n_0,
      I3 => sda_o_reg_reg_i_10_n_0,
      I4 => sda_o_reg_i_11_n_0,
      I5 => sda_o_reg_i_2_0,
      O => sda_o_reg_i_6_n_0
    );
sda_o_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA08A80"
    )
        port map (
      I0 => p_4_in,
      I1 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg[9]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => sda_o_reg_i_7_n_0
    );
sda_o_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000041"
    )
        port map (
      I0 => \FSM_sequential_phy_state_reg[0]_i_2_n_0\,
      I1 => phy_state_reg(1),
      I2 => phy_state_reg(0),
      I3 => phy_state_reg(3),
      I4 => phy_state_reg(2),
      I5 => \FSM_sequential_phy_state_reg[3]_i_4_n_0\,
      O => sda_o_reg_i_8_n_0
    );
sda_o_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[9]\,
      I1 => \bit_count_reg_reg_n_0_[2]\,
      I2 => \bit_count_reg_reg_n_0_[0]\,
      I3 => \bit_count_reg_reg_n_0_[1]\,
      I4 => \bit_count_reg_reg_n_0_[3]\,
      O => sda_o_reg_i_9_n_0
    );
sda_o_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => sda_o_reg_i_1_n_0,
      Q => \^i2c_sda_t\,
      S => rst
    );
sda_o_reg_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_o_reg_i_13_n_0,
      I1 => sda_o_reg_i_14_n_0,
      O => sda_o_reg_reg_i_10_n_0,
      S => \bit_count_reg_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_master_axil_0_0_i2c_master_axil is
  port (
    Q : out STD_LOGIC;
    s_axil_wready : out STD_LOGIC;
    s_axil_rvalid_reg_reg_0 : out STD_LOGIC;
    s_axil_arready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i2c_sda_t : out STD_LOGIC;
    i2c_scl_o : out STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i2c_sda_i : in STD_LOGIC;
    i2c_scl_i : in STD_LOGIC;
    s_axil_bready : in STD_LOGIC;
    s_axil_awvalid : in STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    s_axil_rready : in STD_LOGIC;
    s_axil_arvalid : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_i2c_master_axil_0_0_i2c_master_axil : entity is "i2c_master_axil";
end design_1_i2c_master_axil_0_0_i2c_master_axil;

architecture STRUCTURE of design_1_i2c_master_axil_0_0_i2c_master_axil is
  signal \^q\ : STD_LOGIC;
  signal addr_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bus_active_int : STD_LOGIC;
  signal bus_control_int : STD_LOGIC;
  signal busy_int : STD_LOGIC;
  signal cmd_address_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cmd_fifo_inst_n_1 : STD_LOGIC;
  signal cmd_fifo_inst_n_11 : STD_LOGIC;
  signal cmd_fifo_inst_n_13 : STD_LOGIC;
  signal cmd_fifo_inst_n_14 : STD_LOGIC;
  signal cmd_fifo_inst_n_15 : STD_LOGIC;
  signal cmd_fifo_inst_n_16 : STD_LOGIC;
  signal cmd_fifo_inst_n_17 : STD_LOGIC;
  signal cmd_fifo_inst_n_18 : STD_LOGIC;
  signal cmd_fifo_inst_n_19 : STD_LOGIC;
  signal cmd_fifo_inst_n_20 : STD_LOGIC;
  signal cmd_fifo_inst_n_21 : STD_LOGIC;
  signal cmd_fifo_inst_n_22 : STD_LOGIC;
  signal cmd_fifo_overflow_next5_out : STD_LOGIC;
  signal cmd_fifo_overflow_reg : STD_LOGIC;
  signal cmd_read_int : STD_LOGIC;
  signal cmd_ready_int : STD_LOGIC;
  signal cmd_start_next : STD_LOGIC;
  signal cmd_valid_int : STD_LOGIC;
  signal cmd_valid_next : STD_LOGIC;
  signal cmd_valid_reg : STD_LOGIC;
  signal cmd_valid_reg_i_2_n_0 : STD_LOGIC;
  signal cmd_write_multiple_int : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal data_in_last_next : STD_LOGIC;
  signal data_in_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_in_ready_int : STD_LOGIC;
  signal data_in_valid_int : STD_LOGIC;
  signal data_in_valid_next : STD_LOGIC;
  signal data_in_valid_reg : STD_LOGIC;
  signal data_out_ready_reg : STD_LOGIC;
  signal i2c_master_inst_n_16 : STD_LOGIC;
  signal i2c_master_inst_n_17 : STD_LOGIC;
  signal i2c_master_inst_n_19 : STD_LOGIC;
  signal i2c_master_inst_n_20 : STD_LOGIC;
  signal i2c_master_inst_n_21 : STD_LOGIC;
  signal i2c_master_inst_n_22 : STD_LOGIC;
  signal i2c_master_inst_n_23 : STD_LOGIC;
  signal i2c_master_inst_n_24 : STD_LOGIC;
  signal i2c_master_inst_n_29 : STD_LOGIC;
  signal in13 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal m_axis_data_tdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_data_tlast_reg : STD_LOGIC;
  signal missed_ack_next : STD_LOGIC;
  signal missed_ack_reg : STD_LOGIC;
  signal missed_ack_reg_i_2_n_0 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC;
  signal \prescale_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \prescale_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal read_fifo_inst_n_12 : STD_LOGIC;
  signal read_fifo_inst_n_13 : STD_LOGIC;
  signal read_fifo_inst_n_4 : STD_LOGIC;
  signal s_axil_arready_next : STD_LOGIC;
  signal s_axil_awready_next : STD_LOGIC;
  signal s_axil_bvalid_reg_i_1_n_0 : STD_LOGIC;
  signal s_axil_rdata_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axil_rvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \^s_axil_rvalid_reg_reg_0\ : STD_LOGIC;
  signal s_axis : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal s_axis_cmd_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_axis_data_tlast : STD_LOGIC;
  signal write_fifo_inst_n_10 : STD_LOGIC;
  signal write_fifo_inst_n_11 : STD_LOGIC;
  signal write_fifo_inst_n_12 : STD_LOGIC;
  signal write_fifo_inst_n_13 : STD_LOGIC;
  signal write_fifo_inst_n_4 : STD_LOGIC;
  signal write_fifo_inst_n_6 : STD_LOGIC;
  signal write_fifo_inst_n_7 : STD_LOGIC;
  signal write_fifo_inst_n_8 : STD_LOGIC;
  signal write_fifo_inst_n_9 : STD_LOGIC;
  signal write_fifo_overflow_next1_out : STD_LOGIC;
  signal write_fifo_overflow_reg : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of missed_ack_reg_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of s_axil_bvalid_reg_i_1 : label is "soft_lutpair30";
begin
  Q <= \^q\;
  s_axil_rvalid_reg_reg_0 <= \^s_axil_rvalid_reg_reg_0\;
\cmd_address_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => s_axil_wstrb(0),
      I1 => s_axil_awaddr(0),
      I2 => \^q\,
      I3 => s_axil_wvalid,
      I4 => s_axil_awvalid,
      I5 => s_axil_awaddr(1),
      O => cmd_address_next(0)
    );
\cmd_address_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(0),
      Q => data1(0),
      R => '0'
    );
\cmd_address_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(1),
      Q => data1(1),
      R => '0'
    );
\cmd_address_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(2),
      Q => data1(2),
      R => '0'
    );
\cmd_address_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(3),
      Q => data1(3),
      R => '0'
    );
\cmd_address_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(4),
      Q => data1(4),
      R => '0'
    );
\cmd_address_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(5),
      Q => data1(5),
      R => '0'
    );
\cmd_address_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_address_next(0),
      D => s_axil_wdata(6),
      Q => data1(6),
      R => '0'
    );
cmd_fifo_inst: entity work.design_1_i2c_master_axil_0_0_axis_fifo
     port map (
      D(0) => cmd_fifo_inst_n_18,
      E(0) => i2c_master_inst_n_16,
      \FSM_onehot_state_reg[8]_i_2\(4) => i2c_master_inst_n_19,
      \FSM_onehot_state_reg[8]_i_2\(3) => i2c_master_inst_n_20,
      \FSM_onehot_state_reg[8]_i_2\(2) => i2c_master_inst_n_21,
      \FSM_onehot_state_reg[8]_i_2\(1) => i2c_master_inst_n_22,
      \FSM_onehot_state_reg[8]_i_2\(0) => i2c_master_inst_n_23,
      \FSM_onehot_state_reg_reg[5]\ => cmd_fifo_inst_n_21,
      \FSM_onehot_state_reg_reg[6]\ => cmd_fifo_inst_n_16,
      \FSM_onehot_state_reg_reg[6]_0\ => i2c_master_inst_n_29,
      \FSM_onehot_state_reg_reg[6]_1\ => i2c_master_inst_n_24,
      Q(9 downto 3) => s_axis_cmd_address(6 downto 0),
      Q(2) => cmd_read_int,
      Q(1) => cmd_write_multiple_int,
      Q(0) => cmd_fifo_inst_n_11,
      bus_active_int => bus_active_int,
      clk => clk,
      cmd_fifo_overflow_next5_out => cmd_fifo_overflow_next5_out,
      cmd_fifo_overflow_reg => cmd_fifo_overflow_reg,
      cmd_fifo_overflow_reg_reg => cmd_valid_reg_i_2_n_0,
      cmd_ready_int => cmd_ready_int,
      cmd_start_next => cmd_start_next,
      cmd_valid_int => cmd_valid_int,
      cmd_valid_next => cmd_valid_next,
      cmd_valid_reg => cmd_valid_reg,
      \m_axis_pipe_reg_reg[1][0]_0\ => cmd_fifo_inst_n_14,
      \m_axis_pipe_reg_reg[1][2]_0\ => cmd_fifo_inst_n_20,
      \m_axis_pipe_reg_reg[1][3]_0\ => cmd_fifo_inst_n_1,
      \m_axis_pipe_reg_reg[1][3]_1\ => cmd_fifo_inst_n_15,
      \m_axis_pipe_reg_reg[1][3]_2\ => cmd_fifo_inst_n_17,
      \m_axis_tvalid_pipe_reg_reg[1]_0\ => cmd_fifo_inst_n_19,
      rst => rst,
      s_axil_awaddr(0) => s_axil_awaddr(0),
      \s_axil_awaddr[2]\ => cmd_fifo_inst_n_22,
      s_axis_tdata(11 downto 5) => data1(6 downto 0),
      s_axis_tdata(4) => data1(8),
      s_axis_tdata(3) => data1(9),
      s_axis_tdata(2) => data1(10),
      s_axis_tdata(1) => data1(11),
      s_axis_tdata(0) => data1(12),
      sda_o_reg_i_12_0(3) => addr_reg(6),
      sda_o_reg_i_12_0(2 downto 0) => addr_reg(2 downto 0),
      \wr_ptr_reg_reg[4]_0\ => cmd_fifo_inst_n_13
    );
cmd_fifo_overflow_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202000"
    )
        port map (
      I0 => s_axil_awready_next,
      I1 => s_axil_awaddr(1),
      I2 => s_axil_wstrb(1),
      I3 => s_axil_awaddr(0),
      I4 => s_axil_wdata(10),
      O => cmd_fifo_overflow_next5_out
    );
cmd_fifo_overflow_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cmd_fifo_inst_n_22,
      Q => cmd_fifo_overflow_reg,
      R => rst
    );
cmd_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_start_next,
      D => s_axil_wdata(9),
      Q => data1(9),
      R => '0'
    );
cmd_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_start_next,
      D => s_axil_wdata(8),
      Q => data1(8),
      R => '0'
    );
cmd_stop_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => s_axil_wstrb(1),
      I1 => s_axil_awaddr(0),
      I2 => \^q\,
      I3 => s_axil_wvalid,
      I4 => s_axil_awvalid,
      I5 => s_axil_awaddr(1),
      O => cmd_start_next
    );
cmd_stop_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_start_next,
      D => s_axil_wdata(12),
      Q => data1(12),
      R => '0'
    );
cmd_valid_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axil_wdata(10),
      I1 => s_axil_wdata(9),
      I2 => s_axil_wdata(12),
      I3 => s_axil_wdata(8),
      I4 => s_axil_wdata(11),
      O => cmd_valid_reg_i_2_n_0
    );
cmd_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cmd_valid_next,
      Q => cmd_valid_reg,
      R => rst
    );
cmd_write_multiple_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_start_next,
      D => s_axil_wdata(11),
      Q => data1(11),
      R => '0'
    );
cmd_write_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_start_next,
      D => s_axil_wdata(10),
      Q => data1(10),
      R => '0'
    );
data_in_last_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axil_wstrb(1),
      I1 => s_axil_wdata(9),
      O => data_in_last_next
    );
data_in_last_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => data_in_last_next,
      Q => s_axis(8),
      R => '0'
    );
\data_in_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => s_axil_wstrb(0),
      I1 => s_axil_awaddr(1),
      I2 => s_axil_awaddr(0),
      I3 => \^q\,
      I4 => s_axil_wvalid,
      I5 => s_axil_awvalid,
      O => data_in_next(0)
    );
\data_in_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(0),
      Q => s_axis(0),
      R => '0'
    );
\data_in_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(1),
      Q => s_axis(1),
      R => '0'
    );
\data_in_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(2),
      Q => s_axis(2),
      R => '0'
    );
\data_in_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(3),
      Q => s_axis(3),
      R => '0'
    );
\data_in_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(4),
      Q => s_axis(4),
      R => '0'
    );
\data_in_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(5),
      Q => s_axis(5),
      R => '0'
    );
\data_in_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(6),
      Q => s_axis(6),
      R => '0'
    );
\data_in_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in_next(0),
      D => s_axil_wdata(7),
      Q => s_axis(7),
      R => '0'
    );
data_in_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_valid_next,
      Q => data_in_valid_reg,
      R => rst
    );
data_out_ready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_fifo_inst_n_13,
      Q => data_out_ready_reg,
      R => '0'
    );
i2c_master_inst: entity work.design_1_i2c_master_axil_0_0_i2c_master
     port map (
      D(0) => cmd_fifo_inst_n_18,
      E(0) => i2c_master_inst_n_16,
      \FSM_onehot_state_reg_reg[0]_0\ => cmd_fifo_inst_n_19,
      \FSM_onehot_state_reg_reg[11]_0\(4) => i2c_master_inst_n_19,
      \FSM_onehot_state_reg_reg[11]_0\(3) => i2c_master_inst_n_20,
      \FSM_onehot_state_reg_reg[11]_0\(2) => i2c_master_inst_n_21,
      \FSM_onehot_state_reg_reg[11]_0\(1) => i2c_master_inst_n_22,
      \FSM_onehot_state_reg_reg[11]_0\(0) => i2c_master_inst_n_23,
      \FSM_onehot_state_reg_reg[11]_1\ => cmd_fifo_inst_n_14,
      \FSM_onehot_state_reg_reg[4]_0\ => cmd_fifo_inst_n_21,
      \FSM_onehot_state_reg_reg[5]_0\ => cmd_fifo_inst_n_15,
      \FSM_onehot_state_reg_reg[8]_0\ => cmd_fifo_inst_n_1,
      \FSM_onehot_state_reg_reg[8]_1\ => cmd_fifo_inst_n_17,
      Q(9 downto 3) => s_axis_cmd_address(6 downto 0),
      Q(2) => cmd_read_int,
      Q(1) => cmd_write_multiple_int,
      Q(0) => cmd_fifo_inst_n_11,
      \addr_reg_reg[3]_0\ => i2c_master_inst_n_29,
      \addr_reg_reg[4]_0\ => i2c_master_inst_n_24,
      \addr_reg_reg[6]_0\(3) => addr_reg(6),
      \addr_reg_reg[6]_0\(2 downto 0) => addr_reg(2 downto 0),
      \bit_count_reg_reg[0]_0\ => cmd_fifo_inst_n_16,
      bus_active_int => bus_active_int,
      bus_control_int => bus_control_int,
      busy_int => busy_int,
      clk => clk,
      cmd_ready_int => cmd_ready_int,
      cmd_valid_int => cmd_valid_int,
      data_in_ready_int => data_in_ready_int,
      data_in_valid_int => data_in_valid_int,
      \delay_reg_reg[15]_0\(15 downto 0) => in13(16 downto 1),
      i2c_scl_i => i2c_scl_i,
      i2c_scl_o => i2c_scl_o,
      i2c_sda_i => i2c_sda_i,
      i2c_sda_t => i2c_sda_t,
      last_reg_reg_0(8) => s_axis_data_tlast,
      last_reg_reg_0(7) => write_fifo_inst_n_6,
      last_reg_reg_0(6) => write_fifo_inst_n_7,
      last_reg_reg_0(5) => write_fifo_inst_n_8,
      last_reg_reg_0(4) => write_fifo_inst_n_9,
      last_reg_reg_0(3) => write_fifo_inst_n_10,
      last_reg_reg_0(2) => write_fifo_inst_n_11,
      last_reg_reg_0(1) => write_fifo_inst_n_12,
      last_reg_reg_0(0) => write_fifo_inst_n_13,
      m_axis_data_tvalid_reg_reg_0(0) => \p_0_in__1\,
      m_axis_data_tvalid_reg_reg_1 => read_fifo_inst_n_12,
      missed_ack_next => missed_ack_next,
      missed_ack_reg => missed_ack_reg,
      missed_ack_reg_reg_0 => missed_ack_reg_i_2_n_0,
      rst => rst,
      s_axil_awaddr(0) => s_axil_awaddr(1),
      s_axil_wdata(0) => s_axil_wdata(3),
      s_axil_wstrb(0) => s_axil_wstrb(0),
      s_axis(8) => m_axis_data_tlast_reg,
      s_axis(7 downto 0) => m_axis_data_tdata_reg(7 downto 0),
      s_axis_data_tready_reg_reg_0(0) => i2c_master_inst_n_17,
      sda_o_reg_i_2_0 => cmd_fifo_inst_n_20
    );
missed_ack_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axil_awvalid,
      I1 => s_axil_wvalid,
      I2 => \^q\,
      I3 => s_axil_awaddr(0),
      O => missed_ack_reg_i_2_n_0
    );
missed_ack_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => missed_ack_next,
      Q => missed_ack_reg,
      R => rst
    );
\prescale_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axil_wstrb(1),
      I1 => s_axil_awaddr(0),
      I2 => \^q\,
      I3 => s_axil_wvalid,
      I4 => s_axil_awvalid,
      I5 => s_axil_awaddr(1),
      O => \prescale_reg[15]_i_1_n_0\
    );
\prescale_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axil_wstrb(0),
      I1 => s_axil_awaddr(0),
      I2 => \^q\,
      I3 => s_axil_wvalid,
      I4 => s_axil_awvalid,
      I5 => s_axil_awaddr(1),
      O => \prescale_reg[7]_i_1_n_0\
    );
\prescale_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(0),
      Q => in13(1),
      S => rst
    );
\prescale_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(10),
      Q => in13(11),
      R => rst
    );
\prescale_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(11),
      Q => in13(12),
      R => rst
    );
\prescale_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(12),
      Q => in13(13),
      R => rst
    );
\prescale_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(13),
      Q => in13(14),
      R => rst
    );
\prescale_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(14),
      Q => in13(15),
      R => rst
    );
\prescale_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(15),
      Q => in13(16),
      R => rst
    );
\prescale_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(1),
      Q => in13(2),
      R => rst
    );
\prescale_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(2),
      Q => in13(3),
      R => rst
    );
\prescale_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(3),
      Q => in13(4),
      R => rst
    );
\prescale_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(4),
      Q => in13(5),
      R => rst
    );
\prescale_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(5),
      Q => in13(6),
      R => rst
    );
\prescale_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(6),
      Q => in13(7),
      R => rst
    );
\prescale_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[7]_i_1_n_0\,
      D => s_axil_wdata(7),
      Q => in13(8),
      R => rst
    );
\prescale_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(8),
      Q => in13(9),
      R => rst
    );
\prescale_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[15]_i_1_n_0\,
      D => s_axil_wdata(9),
      Q => in13(10),
      R => rst
    );
read_fifo_inst: entity work.\design_1_i2c_master_axil_0_0_axis_fifo__parameterized0\
     port map (
      D(11 downto 10) => s_axil_rdata_next(15 downto 14),
      D(9 downto 8) => s_axil_rdata_next(9 downto 8),
      D(7) => read_fifo_inst_n_4,
      D(6 downto 0) => s_axil_rdata_next(6 downto 0),
      E(0) => \p_0_in__1\,
      Q(11 downto 10) => in13(16 downto 15),
      Q(9 downto 0) => in13(10 downto 1),
      bus_active_int => bus_active_int,
      bus_control_int => bus_control_int,
      busy_int => busy_int,
      clk => clk,
      cmd_valid_int => cmd_valid_int,
      data_out_ready_reg => data_out_ready_reg,
      data_out_ready_reg_reg => \^s_axil_rvalid_reg_reg_0\,
      missed_ack_reg => missed_ack_reg,
      rst => rst,
      s_axil_araddr(1 downto 0) => s_axil_araddr(1 downto 0),
      \s_axil_araddr[2]\ => read_fifo_inst_n_13,
      s_axil_arvalid => s_axil_arvalid,
      \s_axil_rdata_reg_reg[9]\ => cmd_fifo_inst_n_13,
      s_axis(8) => m_axis_data_tlast_reg,
      s_axis(7 downto 0) => m_axis_data_tdata_reg(7 downto 0),
      s_axis_tdata(8 downto 2) => data1(6 downto 0),
      s_axis_tdata(1) => data1(8),
      s_axis_tdata(0) => data1(9),
      \wr_ptr_reg_reg[4]_0\ => read_fifo_inst_n_12
    );
s_axil_arready_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axil_arvalid,
      I1 => \^s_axil_rvalid_reg_reg_0\,
      O => s_axil_arready_next
    );
s_axil_arready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axil_arready_next,
      Q => s_axil_arready,
      R => rst
    );
s_axil_awready_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\,
      I1 => s_axil_wvalid,
      I2 => s_axil_awvalid,
      O => s_axil_awready_next
    );
s_axil_awready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axil_awready_next,
      Q => s_axil_wready,
      R => rst
    );
s_axil_bvalid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C0"
    )
        port map (
      I0 => s_axil_bready,
      I1 => s_axil_awvalid,
      I2 => s_axil_wvalid,
      I3 => \^q\,
      O => s_axil_bvalid_reg_i_1_n_0
    );
s_axil_bvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axil_bvalid_reg_i_1_n_0,
      Q => \^q\,
      R => rst
    );
\s_axil_rdata_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => in13(11),
      I1 => s_axil_araddr(1),
      I2 => data1(10),
      I3 => s_axil_araddr(0),
      I4 => cmd_fifo_overflow_reg,
      O => s_axil_rdata_next(10)
    );
\s_axil_rdata_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => write_fifo_overflow_reg,
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => in13(14),
      O => s_axil_rdata_next(13)
    );
\s_axil_rdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(0),
      Q => s_axil_rdata(0),
      R => '0'
    );
\s_axil_rdata_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(10),
      Q => s_axil_rdata(10),
      R => '0'
    );
\s_axil_rdata_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(11),
      Q => s_axil_rdata(11),
      R => '0'
    );
\s_axil_rdata_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(12),
      Q => s_axil_rdata(12),
      R => '0'
    );
\s_axil_rdata_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(13),
      Q => s_axil_rdata(13),
      R => '0'
    );
\s_axil_rdata_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(14),
      Q => s_axil_rdata(14),
      R => '0'
    );
\s_axil_rdata_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(15),
      Q => s_axil_rdata(15),
      R => '0'
    );
\s_axil_rdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(1),
      Q => s_axil_rdata(1),
      R => '0'
    );
\s_axil_rdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(2),
      Q => s_axil_rdata(2),
      R => '0'
    );
\s_axil_rdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(3),
      Q => s_axil_rdata(3),
      R => '0'
    );
\s_axil_rdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(4),
      Q => s_axil_rdata(4),
      R => '0'
    );
\s_axil_rdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(5),
      Q => s_axil_rdata(5),
      R => '0'
    );
\s_axil_rdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(6),
      Q => s_axil_rdata(6),
      R => '0'
    );
\s_axil_rdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => read_fifo_inst_n_4,
      Q => s_axil_rdata(7),
      R => '0'
    );
\s_axil_rdata_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(8),
      Q => s_axil_rdata(8),
      R => '0'
    );
\s_axil_rdata_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s_axil_arready_next,
      D => s_axil_rdata_next(9),
      Q => s_axil_rdata(9),
      R => '0'
    );
s_axil_rvalid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axil_rready,
      I1 => \^s_axil_rvalid_reg_reg_0\,
      I2 => s_axil_arvalid,
      O => s_axil_rvalid_reg_i_1_n_0
    );
s_axil_rvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axil_rvalid_reg_i_1_n_0,
      Q => \^s_axil_rvalid_reg_reg_0\,
      R => rst
    );
write_fifo_inst: entity work.\design_1_i2c_master_axil_0_0_axis_fifo__parameterized0_0\
     port map (
      D(1 downto 0) => s_axil_rdata_next(12 downto 11),
      E(0) => data_in_next(0),
      Q(1 downto 0) => in13(13 downto 12),
      clk => clk,
      data_in_ready_int => data_in_ready_int,
      data_in_valid_int => data_in_valid_int,
      data_in_valid_next => data_in_valid_next,
      data_in_valid_reg => data_in_valid_reg,
      \m_axis_pipe_reg_reg[1][8]_0\(8) => s_axis_data_tlast,
      \m_axis_pipe_reg_reg[1][8]_0\(7) => write_fifo_inst_n_6,
      \m_axis_pipe_reg_reg[1][8]_0\(6) => write_fifo_inst_n_7,
      \m_axis_pipe_reg_reg[1][8]_0\(5) => write_fifo_inst_n_8,
      \m_axis_pipe_reg_reg[1][8]_0\(4) => write_fifo_inst_n_9,
      \m_axis_pipe_reg_reg[1][8]_0\(3) => write_fifo_inst_n_10,
      \m_axis_pipe_reg_reg[1][8]_0\(2) => write_fifo_inst_n_11,
      \m_axis_pipe_reg_reg[1][8]_0\(1) => write_fifo_inst_n_12,
      \m_axis_pipe_reg_reg[1][8]_0\(0) => write_fifo_inst_n_13,
      \m_axis_pipe_reg_reg[1][8]_1\(0) => i2c_master_inst_n_17,
      rst => rst,
      s_axil_araddr(1 downto 0) => s_axil_araddr(1 downto 0),
      s_axil_awaddr(0) => s_axil_awaddr(1),
      \s_axil_awaddr[3]\ => write_fifo_inst_n_4,
      s_axis(8 downto 0) => s_axis(8 downto 0),
      s_axis_tdata(1) => data1(11),
      s_axis_tdata(0) => data1(12),
      write_fifo_overflow_next1_out => write_fifo_overflow_next1_out,
      write_fifo_overflow_reg => write_fifo_overflow_reg
    );
write_fifo_overflow_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444400000004000"
    )
        port map (
      I0 => s_axil_awaddr(0),
      I1 => s_axil_awready_next,
      I2 => s_axil_wdata(13),
      I3 => s_axil_wstrb(1),
      I4 => s_axil_awaddr(1),
      I5 => s_axil_wstrb(0),
      O => write_fifo_overflow_next1_out
    );
write_fifo_overflow_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => write_fifo_inst_n_4,
      Q => write_fifo_overflow_reg,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_master_axil_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_awvalid : in STD_LOGIC;
    s_axil_awready : out STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_wvalid : in STD_LOGIC;
    s_axil_wready : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_bvalid : out STD_LOGIC;
    s_axil_bready : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_arvalid : in STD_LOGIC;
    s_axil_arready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_rvalid : out STD_LOGIC;
    s_axil_rready : in STD_LOGIC;
    i2c_scl_i : in STD_LOGIC;
    i2c_scl_o : out STD_LOGIC;
    i2c_scl_t : out STD_LOGIC;
    i2c_sda_i : in STD_LOGIC;
    i2c_sda_o : out STD_LOGIC;
    i2c_sda_t : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_i2c_master_axil_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_i2c_master_axil_0_0 : entity is "design_1_i2c_master_axil_0_0,i2c_master_axil,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_i2c_master_axil_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_i2c_master_axil_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_i2c_master_axil_0_0 : entity is "i2c_master_axil,Vivado 2025.2";
end design_1_i2c_master_axil_0_0;

architecture STRUCTURE of design_1_i2c_master_axil_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^i2c_scl_o\ : STD_LOGIC;
  signal \^i2c_sda_t\ : STD_LOGIC;
  signal \^s_axil_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axil_wready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axil_arready : signal is "xilinx.com:interface:aximm:1.0 s_axil ARREADY";
  attribute X_INTERFACE_INFO of s_axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil ARVALID";
  attribute X_INTERFACE_INFO of s_axil_awready : signal is "xilinx.com:interface:aximm:1.0 s_axil AWREADY";
  attribute X_INTERFACE_INFO of s_axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil AWVALID";
  attribute X_INTERFACE_INFO of s_axil_bready : signal is "xilinx.com:interface:aximm:1.0 s_axil BREADY";
  attribute X_INTERFACE_INFO of s_axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil BVALID";
  attribute X_INTERFACE_INFO of s_axil_rready : signal is "xilinx.com:interface:aximm:1.0 s_axil RREADY";
  attribute X_INTERFACE_INFO of s_axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil RVALID";
  attribute X_INTERFACE_INFO of s_axil_wready : signal is "xilinx.com:interface:aximm:1.0 s_axil WREADY";
  attribute X_INTERFACE_INFO of s_axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil WVALID";
  attribute X_INTERFACE_INFO of s_axil_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axil ARADDR";
  attribute X_INTERFACE_INFO of s_axil_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axil ARPROT";
  attribute X_INTERFACE_INFO of s_axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axil AWADDR";
  attribute X_INTERFACE_MODE of s_axil_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axil_awaddr : signal is "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axil_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axil AWPROT";
  attribute X_INTERFACE_INFO of s_axil_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axil BRESP";
  attribute X_INTERFACE_INFO of s_axil_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axil RDATA";
  attribute X_INTERFACE_INFO of s_axil_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axil RRESP";
  attribute X_INTERFACE_INFO of s_axil_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axil WDATA";
  attribute X_INTERFACE_INFO of s_axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axil WSTRB";
begin
  i2c_scl_o <= \^i2c_scl_o\;
  i2c_scl_t <= \^i2c_scl_o\;
  i2c_sda_o <= \^i2c_sda_t\;
  i2c_sda_t <= \^i2c_sda_t\;
  s_axil_awready <= \^s_axil_wready\;
  s_axil_bresp(1) <= \<const0>\;
  s_axil_bresp(0) <= \<const0>\;
  s_axil_rdata(31) <= \<const0>\;
  s_axil_rdata(30) <= \<const0>\;
  s_axil_rdata(29) <= \<const0>\;
  s_axil_rdata(28) <= \<const0>\;
  s_axil_rdata(27) <= \<const0>\;
  s_axil_rdata(26) <= \<const0>\;
  s_axil_rdata(25) <= \<const0>\;
  s_axil_rdata(24) <= \<const0>\;
  s_axil_rdata(23) <= \<const0>\;
  s_axil_rdata(22) <= \<const0>\;
  s_axil_rdata(21) <= \<const0>\;
  s_axil_rdata(20) <= \<const0>\;
  s_axil_rdata(19) <= \<const0>\;
  s_axil_rdata(18) <= \<const0>\;
  s_axil_rdata(17) <= \<const0>\;
  s_axil_rdata(16) <= \<const0>\;
  s_axil_rdata(15 downto 0) <= \^s_axil_rdata\(15 downto 0);
  s_axil_rresp(1) <= \<const0>\;
  s_axil_rresp(0) <= \<const0>\;
  s_axil_wready <= \^s_axil_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_i2c_master_axil_0_0_i2c_master_axil
     port map (
      Q => s_axil_bvalid,
      clk => clk,
      i2c_scl_i => i2c_scl_i,
      i2c_scl_o => \^i2c_scl_o\,
      i2c_sda_i => i2c_sda_i,
      i2c_sda_t => \^i2c_sda_t\,
      rst => rst,
      s_axil_araddr(1 downto 0) => s_axil_araddr(3 downto 2),
      s_axil_arready => s_axil_arready,
      s_axil_arvalid => s_axil_arvalid,
      s_axil_awaddr(1 downto 0) => s_axil_awaddr(3 downto 2),
      s_axil_awvalid => s_axil_awvalid,
      s_axil_bready => s_axil_bready,
      s_axil_rdata(15 downto 0) => \^s_axil_rdata\(15 downto 0),
      s_axil_rready => s_axil_rready,
      s_axil_rvalid_reg_reg_0 => s_axil_rvalid,
      s_axil_wdata(15 downto 0) => s_axil_wdata(15 downto 0),
      s_axil_wready => \^s_axil_wready\,
      s_axil_wstrb(1 downto 0) => s_axil_wstrb(1 downto 0),
      s_axil_wvalid => s_axil_wvalid
    );
end STRUCTURE;
