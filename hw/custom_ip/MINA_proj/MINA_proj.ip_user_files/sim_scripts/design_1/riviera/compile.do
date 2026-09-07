transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_datamover_v5_1_37
vlib riviera/axi_sg_v4_1_21
vlib riviera/axi_cdma_v4_1_35
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_36
vlib riviera/axi_vip_v1_1_22
vlib riviera/axi_bram_ctrl_v4_1_13
vlib riviera/xlslice_v1_0_5
vlib riviera/xlconcat_v2_1_7
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_37

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_datamover_v5_1_37 riviera/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 riviera/axi_sg_v4_1_21
vmap axi_cdma_v4_1_35 riviera/axi_cdma_v4_1_35
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 riviera/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 riviera/axi_vip_v1_1_22
vmap axi_bram_ctrl_v4_1_13 riviera/axi_bram_ctrl_v4_1_13
vmap xlslice_v1_0_5 riviera/xlslice_v1_0_5
vmap xlconcat_v2_1_7 riviera/xlconcat_v2_1_7
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 riviera/axi_gpio_v2_0_37

vlog -work xilinx_vip  -incr "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_VexRiscvMcuAxi_0_0/sim/design_1_VexRiscvMcuAxi_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_ram_0_0/sim/design_1_axi_ram_0_0.v" \

vcom -work axi_datamover_v5_1_37 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_cdma_v4_1_35 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ca70/hdl/axi_cdma_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_cdma_0_0/sim/design_1_axi_cdma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_48ac_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_48ac_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_48ac_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_48ac_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_48ac_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_48ac_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_48ac_srn_1.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_48ac_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_48ac_swn_1.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_48ac_sbn_1.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_48ac_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_48ac_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_48ac_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_48ac_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_48ac_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_48ac_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_48ac_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_48ac_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_48ac_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_48ac_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_48ac_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_48ac_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_48ac_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_48ac_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_48ac_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_48ac_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_48ac_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_48ac_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_48ac_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_48ac_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_48ac_m02e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_48ac_m03s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_48ac_m03arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_48ac_m03rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_48ac_m03awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_48ac_m03wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_48ac_m03bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_48ac_m03e_0.sv" \

vcom -work smartconnect_v1_0 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_muxed_dual_port_ram_0_0/sim/design_1_muxed_dual_port_ram_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_13 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_2/sim/design_1_axi_bram_ctrl_0_2.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \

vlog -work xlslice_v1_0_5  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/6792/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/sim/bd_88fd.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_1/sim/bd_88fd_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_2/sim/bd_88fd_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_3/sim/bd_88fd_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_4/sim/bd_88fd_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_5/sim/bd_88fd_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_6/sim/bd_88fd_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_7/sim/bd_88fd_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_8/sim/bd_88fd_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_9/sim/bd_88fd_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_10/sim/bd_88fd_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_11/sim/bd_88fd_boutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_12/sim/bd_88fd_arni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_13/sim/bd_88fd_rni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_14/sim/bd_88fd_awni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_15/sim/bd_88fd_wni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_16/sim/bd_88fd_bni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_17/sim/bd_88fd_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_18/sim/bd_88fd_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_19/sim/bd_88fd_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_20/sim/bd_88fd_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_21/sim/bd_88fd_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_22/sim/bd_88fd_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_23/sim/bd_88fd_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_24/sim/bd_88fd_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_25/sim/bd_88fd_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_26/sim/bd_88fd_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_27/sim/bd_88fd_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_28/sim/bd_88fd_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_29/sim/bd_88fd_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_30/sim/bd_88fd_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_31/sim/bd_88fd_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_32/sim/bd_88fd_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_33/sim/bd_88fd_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_34/sim/bd_88fd_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_35/sim/bd_88fd_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_36/sim/bd_88fd_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_37/sim/bd_88fd_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_38/sim/bd_88fd_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_39/sim/bd_88fd_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_40/sim/bd_88fd_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_41/sim/bd_88fd_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_42/sim/bd_88fd_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_43/sim/bd_88fd_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_44/sim/bd_88fd_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_45/sim/bd_88fd_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_46/sim/bd_88fd_m02e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_47/sim/bd_88fd_m03s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_48/sim/bd_88fd_m03arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_49/sim/bd_88fd_m03rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_50/sim/bd_88fd_m03awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_51/sim/bd_88fd_m03wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_52/sim/bd_88fd_m03bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_53/sim/bd_88fd_m03e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_54/sim/bd_88fd_m04s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_55/sim/bd_88fd_m04arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_56/sim/bd_88fd_m04rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_57/sim/bd_88fd_m04awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_58/sim/bd_88fd_m04wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_59/sim/bd_88fd_m04bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_60/sim/bd_88fd_m04e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/sim/design_1_smartconnect_1_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_plic_axil_wrapper_0_0/sim/design_1_plic_axil_wrapper_0_0.v" \
"../../../bd/design_1/ip/design_1_axil_timer_64_0_0/sim/design_1_axil_timer_64_0_0.v" \

vlog -work xlconcat_v2_1_7  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  -incr \
"../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MINA_proj.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_bram_ctrl_v4_1_13 -l xlslice_v1_0_5 -l xlconcat_v2_1_7 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_1/ip/design_1_i2c_master_axil_0_0/sim/design_1_i2c_master_axil_0_0.v" \
"../../../bd/design_1/ip/design_1_negation_1_2/sim/design_1_negation_1_2.v" \
"../../../bd/design_1/ip/design_1_axi_uart_bootloader_1_0/sim/design_1_axi_uart_bootloader_1_0.v" \
"../../../bd/design_1/ip/design_1_negation_0_0/sim/design_1_negation_0_0.v" \
"../../../bd/design_1/ip/design_1_negation_0_1/sim/design_1_negation_0_1.v" \
"../../../bd/design_1/ip/design_1_basic_or_0_0/sim/design_1_basic_or_0_0.v" \
"../../../bd/design_1/ip/design_1_negation_1_0/sim/design_1_negation_1_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2.v" \
"../../../bd/design_1/ip/design_1_negation_1_3/sim/design_1_negation_1_3.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

