# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "A_INTERLEAVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "A_PIPELINE_OUTPUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B_INTERLEAVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B_PIPELINE_OUTPUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VALID_ADDR_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.A_INTERLEAVE { PARAM_VALUE.A_INTERLEAVE } {
	# Procedure called to update A_INTERLEAVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.A_INTERLEAVE { PARAM_VALUE.A_INTERLEAVE } {
	# Procedure called to validate A_INTERLEAVE
	return true
}

proc update_PARAM_VALUE.A_PIPELINE_OUTPUT { PARAM_VALUE.A_PIPELINE_OUTPUT } {
	# Procedure called to update A_PIPELINE_OUTPUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.A_PIPELINE_OUTPUT { PARAM_VALUE.A_PIPELINE_OUTPUT } {
	# Procedure called to validate A_PIPELINE_OUTPUT
	return true
}

proc update_PARAM_VALUE.B_INTERLEAVE { PARAM_VALUE.B_INTERLEAVE } {
	# Procedure called to update B_INTERLEAVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B_INTERLEAVE { PARAM_VALUE.B_INTERLEAVE } {
	# Procedure called to validate B_INTERLEAVE
	return true
}

proc update_PARAM_VALUE.B_PIPELINE_OUTPUT { PARAM_VALUE.B_PIPELINE_OUTPUT } {
	# Procedure called to update B_PIPELINE_OUTPUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B_PIPELINE_OUTPUT { PARAM_VALUE.B_PIPELINE_OUTPUT } {
	# Procedure called to validate B_PIPELINE_OUTPUT
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to update ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to validate ID_WIDTH
	return true
}

proc update_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to update STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to validate STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.VALID_ADDR_WIDTH { PARAM_VALUE.VALID_ADDR_WIDTH } {
	# Procedure called to update VALID_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VALID_ADDR_WIDTH { PARAM_VALUE.VALID_ADDR_WIDTH } {
	# Procedure called to validate VALID_ADDR_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.STRB_WIDTH { MODELPARAM_VALUE.STRB_WIDTH PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STRB_WIDTH}] ${MODELPARAM_VALUE.STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.ID_WIDTH { MODELPARAM_VALUE.ID_WIDTH PARAM_VALUE.ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID_WIDTH}] ${MODELPARAM_VALUE.ID_WIDTH}
}

proc update_MODELPARAM_VALUE.A_PIPELINE_OUTPUT { MODELPARAM_VALUE.A_PIPELINE_OUTPUT PARAM_VALUE.A_PIPELINE_OUTPUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.A_PIPELINE_OUTPUT}] ${MODELPARAM_VALUE.A_PIPELINE_OUTPUT}
}

proc update_MODELPARAM_VALUE.B_PIPELINE_OUTPUT { MODELPARAM_VALUE.B_PIPELINE_OUTPUT PARAM_VALUE.B_PIPELINE_OUTPUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B_PIPELINE_OUTPUT}] ${MODELPARAM_VALUE.B_PIPELINE_OUTPUT}
}

proc update_MODELPARAM_VALUE.A_INTERLEAVE { MODELPARAM_VALUE.A_INTERLEAVE PARAM_VALUE.A_INTERLEAVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.A_INTERLEAVE}] ${MODELPARAM_VALUE.A_INTERLEAVE}
}

proc update_MODELPARAM_VALUE.B_INTERLEAVE { MODELPARAM_VALUE.B_INTERLEAVE PARAM_VALUE.B_INTERLEAVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B_INTERLEAVE}] ${MODELPARAM_VALUE.B_INTERLEAVE}
}

proc update_MODELPARAM_VALUE.VALID_ADDR_WIDTH { MODELPARAM_VALUE.VALID_ADDR_WIDTH PARAM_VALUE.VALID_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VALID_ADDR_WIDTH}] ${MODELPARAM_VALUE.VALID_ADDR_WIDTH}
}

