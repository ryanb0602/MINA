# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIL_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIL_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONVERT_BURST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONVERT_NARROW_BURST" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIL_DATA_WIDTH { PARAM_VALUE.AXIL_DATA_WIDTH } {
	# Procedure called to update AXIL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIL_DATA_WIDTH { PARAM_VALUE.AXIL_DATA_WIDTH } {
	# Procedure called to validate AXIL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIL_STRB_WIDTH { PARAM_VALUE.AXIL_STRB_WIDTH } {
	# Procedure called to update AXIL_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIL_STRB_WIDTH { PARAM_VALUE.AXIL_STRB_WIDTH } {
	# Procedure called to validate AXIL_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to update AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to validate AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to update AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to validate AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.CONVERT_BURST { PARAM_VALUE.CONVERT_BURST } {
	# Procedure called to update CONVERT_BURST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONVERT_BURST { PARAM_VALUE.CONVERT_BURST } {
	# Procedure called to validate CONVERT_BURST
	return true
}

proc update_PARAM_VALUE.CONVERT_NARROW_BURST { PARAM_VALUE.CONVERT_NARROW_BURST } {
	# Procedure called to update CONVERT_NARROW_BURST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONVERT_NARROW_BURST { PARAM_VALUE.CONVERT_NARROW_BURST } {
	# Procedure called to validate CONVERT_NARROW_BURST
	return true
}


proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_STRB_WIDTH { MODELPARAM_VALUE.AXI_STRB_WIDTH PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.AXI_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ID_WIDTH { MODELPARAM_VALUE.AXI_ID_WIDTH PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID_WIDTH}] ${MODELPARAM_VALUE.AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIL_DATA_WIDTH { MODELPARAM_VALUE.AXIL_DATA_WIDTH PARAM_VALUE.AXIL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIL_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIL_STRB_WIDTH { MODELPARAM_VALUE.AXIL_STRB_WIDTH PARAM_VALUE.AXIL_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIL_STRB_WIDTH}] ${MODELPARAM_VALUE.AXIL_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.CONVERT_BURST { MODELPARAM_VALUE.CONVERT_BURST PARAM_VALUE.CONVERT_BURST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONVERT_BURST}] ${MODELPARAM_VALUE.CONVERT_BURST}
}

proc update_MODELPARAM_VALUE.CONVERT_NARROW_BURST { MODELPARAM_VALUE.CONVERT_NARROW_BURST PARAM_VALUE.CONVERT_NARROW_BURST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONVERT_NARROW_BURST}] ${MODELPARAM_VALUE.CONVERT_NARROW_BURST}
}

