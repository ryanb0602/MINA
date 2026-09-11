-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Sep 10 20:55:59 2026
-- Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/ryanb/Documents/MINA/hw/custom_ip/MINA_proj/MINA_proj.gen/sources_1/bd/design_1/ip/design_1_plic_axil_wrapper_0_0/design_1_plic_axil_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_plic_axil_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_plic_axil_wrapper_0_0_plic is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_intr : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pending_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    intr_pins : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_plic_axil_wrapper_0_0_plic : entity is "plic";
end design_1_plic_axil_wrapper_0_0_plic;

architecture STRUCTURE of design_1_plic_axil_wrapper_0_0_plic is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ext_intr_INST_0_i_1_n_0 : STD_LOGIC;
  signal \pending[0]_i_1_n_0\ : STD_LOGIC;
  signal \pending[1]_i_1_n_0\ : STD_LOGIC;
  signal \pending[2]_i_1_n_0\ : STD_LOGIC;
  signal \pending[3]_i_1_n_0\ : STD_LOGIC;
  signal \pending[4]_i_1_n_0\ : STD_LOGIC;
  signal \pending[5]_i_1_n_0\ : STD_LOGIC;
  signal \pending[6]_i_1_n_0\ : STD_LOGIC;
  signal \pending[7]_i_1_n_0\ : STD_LOGIC;
  signal pending_out : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  SR(0) <= \^sr\(0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(0),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(0),
      I3 => S_AXI_ARADDR(1),
      O => D(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(1),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(1),
      I3 => S_AXI_ARADDR(1),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(2),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(2),
      I3 => S_AXI_ARADDR(1),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(3),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(3),
      I3 => S_AXI_ARADDR(1),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(4),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(4),
      I3 => S_AXI_ARADDR(1),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(5),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(5),
      I3 => S_AXI_ARADDR(1),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(6),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(6),
      I3 => S_AXI_ARADDR(1),
      O => D(6)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \pending_reg[7]_0\(7),
      I1 => S_AXI_ARADDR(0),
      I2 => pending_out(7),
      I3 => S_AXI_ARADDR(1),
      O => D(7)
    );
ext_intr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => pending_out(0),
      I1 => pending_out(1),
      I2 => pending_out(2),
      I3 => pending_out(3),
      I4 => ext_intr_INST_0_i_1_n_0,
      O => ext_intr
    );
ext_intr_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pending_out(6),
      I1 => pending_out(7),
      I2 => pending_out(5),
      I3 => pending_out(4),
      O => ext_intr_INST_0_i_1_n_0
    );
\pending[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(0),
      I1 => pending_out(0),
      I2 => \pending_reg[7]_0\(0),
      I3 => intr_pins(0),
      O => \pending[0]_i_1_n_0\
    );
\pending[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(1),
      I1 => pending_out(1),
      I2 => \pending_reg[7]_0\(1),
      I3 => intr_pins(1),
      O => \pending[1]_i_1_n_0\
    );
\pending[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(2),
      I1 => pending_out(2),
      I2 => \pending_reg[7]_0\(2),
      I3 => intr_pins(2),
      O => \pending[2]_i_1_n_0\
    );
\pending[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(3),
      I1 => pending_out(3),
      I2 => \pending_reg[7]_0\(3),
      I3 => intr_pins(3),
      O => \pending[3]_i_1_n_0\
    );
\pending[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(4),
      I1 => pending_out(4),
      I2 => \pending_reg[7]_0\(4),
      I3 => intr_pins(4),
      O => \pending[4]_i_1_n_0\
    );
\pending[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(5),
      I1 => pending_out(5),
      I2 => \pending_reg[7]_0\(5),
      I3 => intr_pins(5),
      O => \pending[5]_i_1_n_0\
    );
\pending[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(6),
      I1 => pending_out(6),
      I2 => \pending_reg[7]_0\(6),
      I3 => intr_pins(6),
      O => \pending[6]_i_1_n_0\
    );
\pending[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q(7),
      I1 => pending_out(7),
      I2 => \pending_reg[7]_0\(7),
      I3 => intr_pins(7),
      O => \pending[7]_i_1_n_0\
    );
\pending_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[0]_i_1_n_0\,
      Q => pending_out(0),
      R => \^sr\(0)
    );
\pending_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[1]_i_1_n_0\,
      Q => pending_out(1),
      R => \^sr\(0)
    );
\pending_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[2]_i_1_n_0\,
      Q => pending_out(2),
      R => \^sr\(0)
    );
\pending_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[3]_i_1_n_0\,
      Q => pending_out(3),
      R => \^sr\(0)
    );
\pending_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[4]_i_1_n_0\,
      Q => pending_out(4),
      R => \^sr\(0)
    );
\pending_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[5]_i_1_n_0\,
      Q => pending_out(5),
      R => \^sr\(0)
    );
\pending_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[6]_i_1_n_0\,
      Q => pending_out(6),
      R => \^sr\(0)
    );
\pending_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \pending[7]_i_1_n_0\,
      Q => pending_out(7),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_plic_axil_wrapper_0_0_plic_axil_wrapper is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_intr : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    intr_pins : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_plic_axil_wrapper_0_0_plic_axil_wrapper : entity is "plic_axil_wrapper";
end design_1_plic_axil_wrapper_0_0_plic_axil_wrapper;

architecture STRUCTURE of design_1_plic_axil_wrapper_0_0_plic_axil_wrapper is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pulse_claim : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pulse_claim[7]_i_1_n_0\ : STD_LOGIC;
  signal reg_intr_actv : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pulse_claim[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pulse_claim[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pulse_claim[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pulse_claim[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pulse_claim[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pulse_claim[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pulse_claim[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pulse_claim[7]_i_2\ : label is "soft_lutpair4";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
U_PLIC: entity work.design_1_plic_axil_wrapper_0_0_plic
     port map (
      D(7 downto 0) => p_0_in(7 downto 0),
      Q(7 downto 0) => pulse_claim(7 downto 0),
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(1 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      ext_intr => ext_intr,
      intr_pins(7 downto 0) => intr_pins(7 downto 0),
      \pending_reg[7]_0\(7 downto 0) => p_1_in_0(7 downto 0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => reset
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => reset
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(0),
      Q => S_AXI_RDATA(0),
      R => reset
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(1),
      Q => S_AXI_RDATA(1),
      R => reset
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(2),
      Q => S_AXI_RDATA(2),
      R => reset
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(3),
      Q => S_AXI_RDATA(3),
      R => reset
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(4),
      Q => S_AXI_RDATA(4),
      R => reset
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(5),
      Q => S_AXI_RDATA(5),
      R => reset
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(6),
      Q => S_AXI_RDATA(6),
      R => reset
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => p_0_in(7),
      Q => S_AXI_RDATA(7),
      R => reset
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => reset
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => reset
    );
\pulse_claim[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(0),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(0)
    );
\pulse_claim[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(1),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(1)
    );
\pulse_claim[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(2),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(2)
    );
\pulse_claim[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(3),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(3)
    );
\pulse_claim[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(4),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(4)
    );
\pulse_claim[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(5),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(5)
    );
\pulse_claim[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(6),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(6)
    );
\pulse_claim[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => \^s_axi_wready\,
      O => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WDATA(7),
      I2 => S_AXI_AWADDR(0),
      O => p_1_in(7)
    );
\pulse_claim_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(0),
      Q => pulse_claim(0),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(1),
      Q => pulse_claim(1),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(2),
      Q => pulse_claim(2),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(3),
      Q => pulse_claim(3),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(4),
      Q => pulse_claim(4),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(5),
      Q => pulse_claim(5),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(6),
      Q => pulse_claim(6),
      R => \pulse_claim[7]_i_1_n_0\
    );
\pulse_claim_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(7),
      Q => pulse_claim(7),
      R => \pulse_claim[7]_i_1_n_0\
    );
\reg_intr_actv[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_AWADDR(1),
      I5 => S_AXI_AWADDR(0),
      O => reg_intr_actv(0)
    );
\reg_intr_actv_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(0),
      Q => p_1_in_0(0),
      R => reset
    );
\reg_intr_actv_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(1),
      Q => p_1_in_0(1),
      R => reset
    );
\reg_intr_actv_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(2),
      Q => p_1_in_0(2),
      R => reset
    );
\reg_intr_actv_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(3),
      Q => p_1_in_0(3),
      R => reset
    );
\reg_intr_actv_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(4),
      Q => p_1_in_0(4),
      R => reset
    );
\reg_intr_actv_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(5),
      Q => p_1_in_0(5),
      R => reset
    );
\reg_intr_actv_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(6),
      Q => p_1_in_0(6),
      R => reset
    );
\reg_intr_actv_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_intr_actv(0),
      D => S_AXI_WDATA(7),
      Q => p_1_in_0(7),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_plic_axil_wrapper_0_0 is
  port (
    intr_pins : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_intr : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_plic_axil_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_plic_axil_wrapper_0_0 : entity is "design_1_plic_axil_wrapper_0_0,plic_axil_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_plic_axil_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_plic_axil_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_plic_axil_wrapper_0_0 : entity is "plic_axil_wrapper,Vivado 2025.2";
end design_1_plic_axil_wrapper_0_0;

architecture STRUCTURE of design_1_plic_axil_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of S_AXI_ARESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of ext_intr : signal is "xilinx.com:signal:interrupt:1.0 ext_intr INTERRUPT";
  attribute X_INTERFACE_MODE of ext_intr : signal is "master";
  attribute X_INTERFACE_PARAMETER of ext_intr : signal is "XIL_INTERFACENAME ext_intr, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_AWADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_plic_axil_wrapper_0_0_plic_axil_wrapper
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(7 downto 0) => S_AXI_WDATA(7 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      ext_intr => ext_intr,
      intr_pins(7 downto 0) => intr_pins(7 downto 0)
    );
end STRUCTURE;
