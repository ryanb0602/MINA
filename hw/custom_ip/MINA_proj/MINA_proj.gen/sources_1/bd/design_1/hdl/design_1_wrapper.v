//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sun Sep  6 18:28:10 2026
//Host        : ryan-21k8s14n00 running 64-bit EndeavourOS Linux
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (cpu_rst,
    i2c_scl_i_0,
    i2c_scl_o_0,
    i2c_scl_t_0,
    i2c_sda_i_0,
    i2c_sda_o_0,
    i2c_sda_t_0,
    in_clk,
    sys_rst,
    uart_rx_0,
    uart_tx_0);
  input cpu_rst;
  input i2c_scl_i_0;
  output i2c_scl_o_0;
  output i2c_scl_t_0;
  input i2c_sda_i_0;
  output i2c_sda_o_0;
  output i2c_sda_t_0;
  input in_clk;
  input sys_rst;
  input uart_rx_0;
  output uart_tx_0;

  wire cpu_rst;
  wire i2c_scl_i_0;
  wire i2c_scl_o_0;
  wire i2c_scl_t_0;
  wire i2c_sda_i_0;
  wire i2c_sda_o_0;
  wire i2c_sda_t_0;
  wire in_clk;
  wire sys_rst;
  wire uart_rx_0;
  wire uart_tx_0;

  design_1 design_1_i
       (.cpu_rst(cpu_rst),
        .i2c_scl_i_0(i2c_scl_i_0),
        .i2c_scl_o_0(i2c_scl_o_0),
        .i2c_scl_t_0(i2c_scl_t_0),
        .i2c_sda_i_0(i2c_sda_i_0),
        .i2c_sda_o_0(i2c_sda_o_0),
        .i2c_sda_t_0(i2c_sda_t_0),
        .in_clk(in_clk),
        .sys_rst(sys_rst),
        .uart_rx_0(uart_rx_0),
        .uart_tx_0(uart_tx_0));
endmodule
