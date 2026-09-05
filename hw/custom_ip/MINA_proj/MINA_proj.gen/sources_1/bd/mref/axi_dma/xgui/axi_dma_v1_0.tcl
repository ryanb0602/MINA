# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_DEST_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_DEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_ID_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_KEEP_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_KEEP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_LAST_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_USER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_USER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_MAX_BURST_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_SG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_UNALIGNED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LEN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAG_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to update AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to validate AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_DEST_ENABLE { PARAM_VALUE.AXIS_DEST_ENABLE } {
	# Procedure called to update AXIS_DEST_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DEST_ENABLE { PARAM_VALUE.AXIS_DEST_ENABLE } {
	# Procedure called to validate AXIS_DEST_ENABLE
	return true
}

proc update_PARAM_VALUE.AXIS_DEST_WIDTH { PARAM_VALUE.AXIS_DEST_WIDTH } {
	# Procedure called to update AXIS_DEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DEST_WIDTH { PARAM_VALUE.AXIS_DEST_WIDTH } {
	# Procedure called to validate AXIS_DEST_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_ID_ENABLE { PARAM_VALUE.AXIS_ID_ENABLE } {
	# Procedure called to update AXIS_ID_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_ID_ENABLE { PARAM_VALUE.AXIS_ID_ENABLE } {
	# Procedure called to validate AXIS_ID_ENABLE
	return true
}

proc update_PARAM_VALUE.AXIS_ID_WIDTH { PARAM_VALUE.AXIS_ID_WIDTH } {
	# Procedure called to update AXIS_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_ID_WIDTH { PARAM_VALUE.AXIS_ID_WIDTH } {
	# Procedure called to validate AXIS_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_KEEP_ENABLE { PARAM_VALUE.AXIS_KEEP_ENABLE } {
	# Procedure called to update AXIS_KEEP_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_KEEP_ENABLE { PARAM_VALUE.AXIS_KEEP_ENABLE } {
	# Procedure called to validate AXIS_KEEP_ENABLE
	return true
}

proc update_PARAM_VALUE.AXIS_KEEP_WIDTH { PARAM_VALUE.AXIS_KEEP_WIDTH } {
	# Procedure called to update AXIS_KEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_KEEP_WIDTH { PARAM_VALUE.AXIS_KEEP_WIDTH } {
	# Procedure called to validate AXIS_KEEP_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_LAST_ENABLE { PARAM_VALUE.AXIS_LAST_ENABLE } {
	# Procedure called to update AXIS_LAST_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_LAST_ENABLE { PARAM_VALUE.AXIS_LAST_ENABLE } {
	# Procedure called to validate AXIS_LAST_ENABLE
	return true
}

proc update_PARAM_VALUE.AXIS_USER_ENABLE { PARAM_VALUE.AXIS_USER_ENABLE } {
	# Procedure called to update AXIS_USER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_USER_ENABLE { PARAM_VALUE.AXIS_USER_ENABLE } {
	# Procedure called to validate AXIS_USER_ENABLE
	return true
}

proc update_PARAM_VALUE.AXIS_USER_WIDTH { PARAM_VALUE.AXIS_USER_WIDTH } {
	# Procedure called to update AXIS_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_USER_WIDTH { PARAM_VALUE.AXIS_USER_WIDTH } {
	# Procedure called to validate AXIS_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
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

proc update_PARAM_VALUE.AXI_MAX_BURST_LEN { PARAM_VALUE.AXI_MAX_BURST_LEN } {
	# Procedure called to update AXI_MAX_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_MAX_BURST_LEN { PARAM_VALUE.AXI_MAX_BURST_LEN } {
	# Procedure called to validate AXI_MAX_BURST_LEN
	return true
}

proc update_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to update AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to validate AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.ENABLE_SG { PARAM_VALUE.ENABLE_SG } {
	# Procedure called to update ENABLE_SG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_SG { PARAM_VALUE.ENABLE_SG } {
	# Procedure called to validate ENABLE_SG
	return true
}

proc update_PARAM_VALUE.ENABLE_UNALIGNED { PARAM_VALUE.ENABLE_UNALIGNED } {
	# Procedure called to update ENABLE_UNALIGNED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_UNALIGNED { PARAM_VALUE.ENABLE_UNALIGNED } {
	# Procedure called to validate ENABLE_UNALIGNED
	return true
}

proc update_PARAM_VALUE.LEN_WIDTH { PARAM_VALUE.LEN_WIDTH } {
	# Procedure called to update LEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LEN_WIDTH { PARAM_VALUE.LEN_WIDTH } {
	# Procedure called to validate LEN_WIDTH
	return true
}

proc update_PARAM_VALUE.TAG_WIDTH { PARAM_VALUE.TAG_WIDTH } {
	# Procedure called to update TAG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAG_WIDTH { PARAM_VALUE.TAG_WIDTH } {
	# Procedure called to validate TAG_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_STRB_WIDTH { MODELPARAM_VALUE.AXI_STRB_WIDTH PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.AXI_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ID_WIDTH { MODELPARAM_VALUE.AXI_ID_WIDTH PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID_WIDTH}] ${MODELPARAM_VALUE.AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_MAX_BURST_LEN { MODELPARAM_VALUE.AXI_MAX_BURST_LEN PARAM_VALUE.AXI_MAX_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_MAX_BURST_LEN}] ${MODELPARAM_VALUE.AXI_MAX_BURST_LEN}
}

proc update_MODELPARAM_VALUE.AXIS_DATA_WIDTH { MODELPARAM_VALUE.AXIS_DATA_WIDTH PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_KEEP_ENABLE { MODELPARAM_VALUE.AXIS_KEEP_ENABLE PARAM_VALUE.AXIS_KEEP_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_KEEP_ENABLE}] ${MODELPARAM_VALUE.AXIS_KEEP_ENABLE}
}

proc update_MODELPARAM_VALUE.AXIS_KEEP_WIDTH { MODELPARAM_VALUE.AXIS_KEEP_WIDTH PARAM_VALUE.AXIS_KEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_KEEP_WIDTH}] ${MODELPARAM_VALUE.AXIS_KEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_LAST_ENABLE { MODELPARAM_VALUE.AXIS_LAST_ENABLE PARAM_VALUE.AXIS_LAST_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_LAST_ENABLE}] ${MODELPARAM_VALUE.AXIS_LAST_ENABLE}
}

proc update_MODELPARAM_VALUE.AXIS_ID_ENABLE { MODELPARAM_VALUE.AXIS_ID_ENABLE PARAM_VALUE.AXIS_ID_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_ID_ENABLE}] ${MODELPARAM_VALUE.AXIS_ID_ENABLE}
}

proc update_MODELPARAM_VALUE.AXIS_ID_WIDTH { MODELPARAM_VALUE.AXIS_ID_WIDTH PARAM_VALUE.AXIS_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_ID_WIDTH}] ${MODELPARAM_VALUE.AXIS_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_DEST_ENABLE { MODELPARAM_VALUE.AXIS_DEST_ENABLE PARAM_VALUE.AXIS_DEST_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DEST_ENABLE}] ${MODELPARAM_VALUE.AXIS_DEST_ENABLE}
}

proc update_MODELPARAM_VALUE.AXIS_DEST_WIDTH { MODELPARAM_VALUE.AXIS_DEST_WIDTH PARAM_VALUE.AXIS_DEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DEST_WIDTH}] ${MODELPARAM_VALUE.AXIS_DEST_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_USER_ENABLE { MODELPARAM_VALUE.AXIS_USER_ENABLE PARAM_VALUE.AXIS_USER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_USER_ENABLE}] ${MODELPARAM_VALUE.AXIS_USER_ENABLE}
}

proc update_MODELPARAM_VALUE.AXIS_USER_WIDTH { MODELPARAM_VALUE.AXIS_USER_WIDTH PARAM_VALUE.AXIS_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_USER_WIDTH}] ${MODELPARAM_VALUE.AXIS_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.LEN_WIDTH { MODELPARAM_VALUE.LEN_WIDTH PARAM_VALUE.LEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LEN_WIDTH}] ${MODELPARAM_VALUE.LEN_WIDTH}
}

proc update_MODELPARAM_VALUE.TAG_WIDTH { MODELPARAM_VALUE.TAG_WIDTH PARAM_VALUE.TAG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAG_WIDTH}] ${MODELPARAM_VALUE.TAG_WIDTH}
}

proc update_MODELPARAM_VALUE.ENABLE_SG { MODELPARAM_VALUE.ENABLE_SG PARAM_VALUE.ENABLE_SG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_SG}] ${MODELPARAM_VALUE.ENABLE_SG}
}

proc update_MODELPARAM_VALUE.ENABLE_UNALIGNED { MODELPARAM_VALUE.ENABLE_UNALIGNED PARAM_VALUE.ENABLE_UNALIGNED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_UNALIGNED}] ${MODELPARAM_VALUE.ENABLE_UNALIGNED}
}

