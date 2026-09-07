// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
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

// MODULE VLNV: amd.com:blockdesign:design_1:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module design_1_sv (
  (* X_INTERFACE_IGNORE = "true" *)
  output wire uart_tx_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire uart_rx_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire i2c_scl_i_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire i2c_sda_i_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire i2c_sda_t_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire i2c_sda_o_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire i2c_scl_t_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire i2c_scl_o_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire cpu_rst,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire sys_rst,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire in_clk
);

  design_1 inst (
    .uart_tx_0(uart_tx_0),
    .uart_rx_0(uart_rx_0),
    .i2c_scl_i_0(i2c_scl_i_0),
    .i2c_sda_i_0(i2c_sda_i_0),
    .i2c_sda_t_0(i2c_sda_t_0),
    .i2c_sda_o_0(i2c_sda_o_0),
    .i2c_scl_t_0(i2c_scl_t_0),
    .i2c_scl_o_0(i2c_scl_o_0),
    .cpu_rst(cpu_rst),
    .sys_rst(sys_rst),
    .in_clk(in_clk)
  );

endmodule
