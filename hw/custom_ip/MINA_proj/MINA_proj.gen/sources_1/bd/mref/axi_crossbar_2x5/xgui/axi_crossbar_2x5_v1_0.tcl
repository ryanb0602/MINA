# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ARUSER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AWUSER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUSER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_CONNECT_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_CONNECT_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_ISSUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_SECURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M00_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_CONNECT_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_CONNECT_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_ISSUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_SECURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M01_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_CONNECT_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_CONNECT_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_ISSUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_SECURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M02_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_CONNECT_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_CONNECT_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_ISSUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_SECURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M03_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_CONNECT_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_CONNECT_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_ISSUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_SECURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M04_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_REGIONS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RUSER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_ACCEPT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_THREADS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S00_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_ACCEPT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_AR_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_AW_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_B_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_R_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_THREADS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S01_W_REG_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WUSER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WUSER_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.ARUSER_ENABLE { PARAM_VALUE.ARUSER_ENABLE } {
	# Procedure called to update ARUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ARUSER_ENABLE { PARAM_VALUE.ARUSER_ENABLE } {
	# Procedure called to validate ARUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.ARUSER_WIDTH { PARAM_VALUE.ARUSER_WIDTH } {
	# Procedure called to update ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ARUSER_WIDTH { PARAM_VALUE.ARUSER_WIDTH } {
	# Procedure called to validate ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.AWUSER_ENABLE { PARAM_VALUE.AWUSER_ENABLE } {
	# Procedure called to update AWUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AWUSER_ENABLE { PARAM_VALUE.AWUSER_ENABLE } {
	# Procedure called to validate AWUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.AWUSER_WIDTH { PARAM_VALUE.AWUSER_WIDTH } {
	# Procedure called to update AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AWUSER_WIDTH { PARAM_VALUE.AWUSER_WIDTH } {
	# Procedure called to validate AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.BUSER_ENABLE { PARAM_VALUE.BUSER_ENABLE } {
	# Procedure called to update BUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUSER_ENABLE { PARAM_VALUE.BUSER_ENABLE } {
	# Procedure called to validate BUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.BUSER_WIDTH { PARAM_VALUE.BUSER_WIDTH } {
	# Procedure called to update BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUSER_WIDTH { PARAM_VALUE.BUSER_WIDTH } {
	# Procedure called to validate BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.M00_ADDR_WIDTH { PARAM_VALUE.M00_ADDR_WIDTH } {
	# Procedure called to update M00_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_ADDR_WIDTH { PARAM_VALUE.M00_ADDR_WIDTH } {
	# Procedure called to validate M00_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M00_AR_REG_TYPE { PARAM_VALUE.M00_AR_REG_TYPE } {
	# Procedure called to update M00_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_AR_REG_TYPE { PARAM_VALUE.M00_AR_REG_TYPE } {
	# Procedure called to validate M00_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M00_AW_REG_TYPE { PARAM_VALUE.M00_AW_REG_TYPE } {
	# Procedure called to update M00_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_AW_REG_TYPE { PARAM_VALUE.M00_AW_REG_TYPE } {
	# Procedure called to validate M00_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M00_BASE_ADDR { PARAM_VALUE.M00_BASE_ADDR } {
	# Procedure called to update M00_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_BASE_ADDR { PARAM_VALUE.M00_BASE_ADDR } {
	# Procedure called to validate M00_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.M00_B_REG_TYPE { PARAM_VALUE.M00_B_REG_TYPE } {
	# Procedure called to update M00_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_B_REG_TYPE { PARAM_VALUE.M00_B_REG_TYPE } {
	# Procedure called to validate M00_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M00_CONNECT_READ { PARAM_VALUE.M00_CONNECT_READ } {
	# Procedure called to update M00_CONNECT_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_CONNECT_READ { PARAM_VALUE.M00_CONNECT_READ } {
	# Procedure called to validate M00_CONNECT_READ
	return true
}

proc update_PARAM_VALUE.M00_CONNECT_WRITE { PARAM_VALUE.M00_CONNECT_WRITE } {
	# Procedure called to update M00_CONNECT_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_CONNECT_WRITE { PARAM_VALUE.M00_CONNECT_WRITE } {
	# Procedure called to validate M00_CONNECT_WRITE
	return true
}

proc update_PARAM_VALUE.M00_ISSUE { PARAM_VALUE.M00_ISSUE } {
	# Procedure called to update M00_ISSUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_ISSUE { PARAM_VALUE.M00_ISSUE } {
	# Procedure called to validate M00_ISSUE
	return true
}

proc update_PARAM_VALUE.M00_R_REG_TYPE { PARAM_VALUE.M00_R_REG_TYPE } {
	# Procedure called to update M00_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_R_REG_TYPE { PARAM_VALUE.M00_R_REG_TYPE } {
	# Procedure called to validate M00_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M00_SECURE { PARAM_VALUE.M00_SECURE } {
	# Procedure called to update M00_SECURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_SECURE { PARAM_VALUE.M00_SECURE } {
	# Procedure called to validate M00_SECURE
	return true
}

proc update_PARAM_VALUE.M00_W_REG_TYPE { PARAM_VALUE.M00_W_REG_TYPE } {
	# Procedure called to update M00_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_W_REG_TYPE { PARAM_VALUE.M00_W_REG_TYPE } {
	# Procedure called to validate M00_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M01_ADDR_WIDTH { PARAM_VALUE.M01_ADDR_WIDTH } {
	# Procedure called to update M01_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_ADDR_WIDTH { PARAM_VALUE.M01_ADDR_WIDTH } {
	# Procedure called to validate M01_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M01_AR_REG_TYPE { PARAM_VALUE.M01_AR_REG_TYPE } {
	# Procedure called to update M01_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_AR_REG_TYPE { PARAM_VALUE.M01_AR_REG_TYPE } {
	# Procedure called to validate M01_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M01_AW_REG_TYPE { PARAM_VALUE.M01_AW_REG_TYPE } {
	# Procedure called to update M01_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_AW_REG_TYPE { PARAM_VALUE.M01_AW_REG_TYPE } {
	# Procedure called to validate M01_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M01_BASE_ADDR { PARAM_VALUE.M01_BASE_ADDR } {
	# Procedure called to update M01_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_BASE_ADDR { PARAM_VALUE.M01_BASE_ADDR } {
	# Procedure called to validate M01_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.M01_B_REG_TYPE { PARAM_VALUE.M01_B_REG_TYPE } {
	# Procedure called to update M01_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_B_REG_TYPE { PARAM_VALUE.M01_B_REG_TYPE } {
	# Procedure called to validate M01_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M01_CONNECT_READ { PARAM_VALUE.M01_CONNECT_READ } {
	# Procedure called to update M01_CONNECT_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_CONNECT_READ { PARAM_VALUE.M01_CONNECT_READ } {
	# Procedure called to validate M01_CONNECT_READ
	return true
}

proc update_PARAM_VALUE.M01_CONNECT_WRITE { PARAM_VALUE.M01_CONNECT_WRITE } {
	# Procedure called to update M01_CONNECT_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_CONNECT_WRITE { PARAM_VALUE.M01_CONNECT_WRITE } {
	# Procedure called to validate M01_CONNECT_WRITE
	return true
}

proc update_PARAM_VALUE.M01_ISSUE { PARAM_VALUE.M01_ISSUE } {
	# Procedure called to update M01_ISSUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_ISSUE { PARAM_VALUE.M01_ISSUE } {
	# Procedure called to validate M01_ISSUE
	return true
}

proc update_PARAM_VALUE.M01_R_REG_TYPE { PARAM_VALUE.M01_R_REG_TYPE } {
	# Procedure called to update M01_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_R_REG_TYPE { PARAM_VALUE.M01_R_REG_TYPE } {
	# Procedure called to validate M01_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M01_SECURE { PARAM_VALUE.M01_SECURE } {
	# Procedure called to update M01_SECURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_SECURE { PARAM_VALUE.M01_SECURE } {
	# Procedure called to validate M01_SECURE
	return true
}

proc update_PARAM_VALUE.M01_W_REG_TYPE { PARAM_VALUE.M01_W_REG_TYPE } {
	# Procedure called to update M01_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M01_W_REG_TYPE { PARAM_VALUE.M01_W_REG_TYPE } {
	# Procedure called to validate M01_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M02_ADDR_WIDTH { PARAM_VALUE.M02_ADDR_WIDTH } {
	# Procedure called to update M02_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_ADDR_WIDTH { PARAM_VALUE.M02_ADDR_WIDTH } {
	# Procedure called to validate M02_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M02_AR_REG_TYPE { PARAM_VALUE.M02_AR_REG_TYPE } {
	# Procedure called to update M02_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_AR_REG_TYPE { PARAM_VALUE.M02_AR_REG_TYPE } {
	# Procedure called to validate M02_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M02_AW_REG_TYPE { PARAM_VALUE.M02_AW_REG_TYPE } {
	# Procedure called to update M02_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_AW_REG_TYPE { PARAM_VALUE.M02_AW_REG_TYPE } {
	# Procedure called to validate M02_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M02_BASE_ADDR { PARAM_VALUE.M02_BASE_ADDR } {
	# Procedure called to update M02_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_BASE_ADDR { PARAM_VALUE.M02_BASE_ADDR } {
	# Procedure called to validate M02_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.M02_B_REG_TYPE { PARAM_VALUE.M02_B_REG_TYPE } {
	# Procedure called to update M02_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_B_REG_TYPE { PARAM_VALUE.M02_B_REG_TYPE } {
	# Procedure called to validate M02_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M02_CONNECT_READ { PARAM_VALUE.M02_CONNECT_READ } {
	# Procedure called to update M02_CONNECT_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_CONNECT_READ { PARAM_VALUE.M02_CONNECT_READ } {
	# Procedure called to validate M02_CONNECT_READ
	return true
}

proc update_PARAM_VALUE.M02_CONNECT_WRITE { PARAM_VALUE.M02_CONNECT_WRITE } {
	# Procedure called to update M02_CONNECT_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_CONNECT_WRITE { PARAM_VALUE.M02_CONNECT_WRITE } {
	# Procedure called to validate M02_CONNECT_WRITE
	return true
}

proc update_PARAM_VALUE.M02_ISSUE { PARAM_VALUE.M02_ISSUE } {
	# Procedure called to update M02_ISSUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_ISSUE { PARAM_VALUE.M02_ISSUE } {
	# Procedure called to validate M02_ISSUE
	return true
}

proc update_PARAM_VALUE.M02_R_REG_TYPE { PARAM_VALUE.M02_R_REG_TYPE } {
	# Procedure called to update M02_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_R_REG_TYPE { PARAM_VALUE.M02_R_REG_TYPE } {
	# Procedure called to validate M02_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M02_SECURE { PARAM_VALUE.M02_SECURE } {
	# Procedure called to update M02_SECURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_SECURE { PARAM_VALUE.M02_SECURE } {
	# Procedure called to validate M02_SECURE
	return true
}

proc update_PARAM_VALUE.M02_W_REG_TYPE { PARAM_VALUE.M02_W_REG_TYPE } {
	# Procedure called to update M02_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M02_W_REG_TYPE { PARAM_VALUE.M02_W_REG_TYPE } {
	# Procedure called to validate M02_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M03_ADDR_WIDTH { PARAM_VALUE.M03_ADDR_WIDTH } {
	# Procedure called to update M03_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_ADDR_WIDTH { PARAM_VALUE.M03_ADDR_WIDTH } {
	# Procedure called to validate M03_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M03_AR_REG_TYPE { PARAM_VALUE.M03_AR_REG_TYPE } {
	# Procedure called to update M03_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_AR_REG_TYPE { PARAM_VALUE.M03_AR_REG_TYPE } {
	# Procedure called to validate M03_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M03_AW_REG_TYPE { PARAM_VALUE.M03_AW_REG_TYPE } {
	# Procedure called to update M03_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_AW_REG_TYPE { PARAM_VALUE.M03_AW_REG_TYPE } {
	# Procedure called to validate M03_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M03_BASE_ADDR { PARAM_VALUE.M03_BASE_ADDR } {
	# Procedure called to update M03_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_BASE_ADDR { PARAM_VALUE.M03_BASE_ADDR } {
	# Procedure called to validate M03_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.M03_B_REG_TYPE { PARAM_VALUE.M03_B_REG_TYPE } {
	# Procedure called to update M03_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_B_REG_TYPE { PARAM_VALUE.M03_B_REG_TYPE } {
	# Procedure called to validate M03_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M03_CONNECT_READ { PARAM_VALUE.M03_CONNECT_READ } {
	# Procedure called to update M03_CONNECT_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_CONNECT_READ { PARAM_VALUE.M03_CONNECT_READ } {
	# Procedure called to validate M03_CONNECT_READ
	return true
}

proc update_PARAM_VALUE.M03_CONNECT_WRITE { PARAM_VALUE.M03_CONNECT_WRITE } {
	# Procedure called to update M03_CONNECT_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_CONNECT_WRITE { PARAM_VALUE.M03_CONNECT_WRITE } {
	# Procedure called to validate M03_CONNECT_WRITE
	return true
}

proc update_PARAM_VALUE.M03_ISSUE { PARAM_VALUE.M03_ISSUE } {
	# Procedure called to update M03_ISSUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_ISSUE { PARAM_VALUE.M03_ISSUE } {
	# Procedure called to validate M03_ISSUE
	return true
}

proc update_PARAM_VALUE.M03_R_REG_TYPE { PARAM_VALUE.M03_R_REG_TYPE } {
	# Procedure called to update M03_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_R_REG_TYPE { PARAM_VALUE.M03_R_REG_TYPE } {
	# Procedure called to validate M03_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M03_SECURE { PARAM_VALUE.M03_SECURE } {
	# Procedure called to update M03_SECURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_SECURE { PARAM_VALUE.M03_SECURE } {
	# Procedure called to validate M03_SECURE
	return true
}

proc update_PARAM_VALUE.M03_W_REG_TYPE { PARAM_VALUE.M03_W_REG_TYPE } {
	# Procedure called to update M03_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M03_W_REG_TYPE { PARAM_VALUE.M03_W_REG_TYPE } {
	# Procedure called to validate M03_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M04_ADDR_WIDTH { PARAM_VALUE.M04_ADDR_WIDTH } {
	# Procedure called to update M04_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_ADDR_WIDTH { PARAM_VALUE.M04_ADDR_WIDTH } {
	# Procedure called to validate M04_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M04_AR_REG_TYPE { PARAM_VALUE.M04_AR_REG_TYPE } {
	# Procedure called to update M04_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_AR_REG_TYPE { PARAM_VALUE.M04_AR_REG_TYPE } {
	# Procedure called to validate M04_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M04_AW_REG_TYPE { PARAM_VALUE.M04_AW_REG_TYPE } {
	# Procedure called to update M04_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_AW_REG_TYPE { PARAM_VALUE.M04_AW_REG_TYPE } {
	# Procedure called to validate M04_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M04_BASE_ADDR { PARAM_VALUE.M04_BASE_ADDR } {
	# Procedure called to update M04_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_BASE_ADDR { PARAM_VALUE.M04_BASE_ADDR } {
	# Procedure called to validate M04_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.M04_B_REG_TYPE { PARAM_VALUE.M04_B_REG_TYPE } {
	# Procedure called to update M04_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_B_REG_TYPE { PARAM_VALUE.M04_B_REG_TYPE } {
	# Procedure called to validate M04_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M04_CONNECT_READ { PARAM_VALUE.M04_CONNECT_READ } {
	# Procedure called to update M04_CONNECT_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_CONNECT_READ { PARAM_VALUE.M04_CONNECT_READ } {
	# Procedure called to validate M04_CONNECT_READ
	return true
}

proc update_PARAM_VALUE.M04_CONNECT_WRITE { PARAM_VALUE.M04_CONNECT_WRITE } {
	# Procedure called to update M04_CONNECT_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_CONNECT_WRITE { PARAM_VALUE.M04_CONNECT_WRITE } {
	# Procedure called to validate M04_CONNECT_WRITE
	return true
}

proc update_PARAM_VALUE.M04_ISSUE { PARAM_VALUE.M04_ISSUE } {
	# Procedure called to update M04_ISSUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_ISSUE { PARAM_VALUE.M04_ISSUE } {
	# Procedure called to validate M04_ISSUE
	return true
}

proc update_PARAM_VALUE.M04_R_REG_TYPE { PARAM_VALUE.M04_R_REG_TYPE } {
	# Procedure called to update M04_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_R_REG_TYPE { PARAM_VALUE.M04_R_REG_TYPE } {
	# Procedure called to validate M04_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M04_SECURE { PARAM_VALUE.M04_SECURE } {
	# Procedure called to update M04_SECURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_SECURE { PARAM_VALUE.M04_SECURE } {
	# Procedure called to validate M04_SECURE
	return true
}

proc update_PARAM_VALUE.M04_W_REG_TYPE { PARAM_VALUE.M04_W_REG_TYPE } {
	# Procedure called to update M04_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M04_W_REG_TYPE { PARAM_VALUE.M04_W_REG_TYPE } {
	# Procedure called to validate M04_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.M_ID_WIDTH { PARAM_VALUE.M_ID_WIDTH } {
	# Procedure called to update M_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_ID_WIDTH { PARAM_VALUE.M_ID_WIDTH } {
	# Procedure called to validate M_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.M_REGIONS { PARAM_VALUE.M_REGIONS } {
	# Procedure called to update M_REGIONS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_REGIONS { PARAM_VALUE.M_REGIONS } {
	# Procedure called to validate M_REGIONS
	return true
}

proc update_PARAM_VALUE.RUSER_ENABLE { PARAM_VALUE.RUSER_ENABLE } {
	# Procedure called to update RUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RUSER_ENABLE { PARAM_VALUE.RUSER_ENABLE } {
	# Procedure called to validate RUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.RUSER_WIDTH { PARAM_VALUE.RUSER_WIDTH } {
	# Procedure called to update RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RUSER_WIDTH { PARAM_VALUE.RUSER_WIDTH } {
	# Procedure called to validate RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.S00_ACCEPT { PARAM_VALUE.S00_ACCEPT } {
	# Procedure called to update S00_ACCEPT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_ACCEPT { PARAM_VALUE.S00_ACCEPT } {
	# Procedure called to validate S00_ACCEPT
	return true
}

proc update_PARAM_VALUE.S00_AR_REG_TYPE { PARAM_VALUE.S00_AR_REG_TYPE } {
	# Procedure called to update S00_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_AR_REG_TYPE { PARAM_VALUE.S00_AR_REG_TYPE } {
	# Procedure called to validate S00_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S00_AW_REG_TYPE { PARAM_VALUE.S00_AW_REG_TYPE } {
	# Procedure called to update S00_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_AW_REG_TYPE { PARAM_VALUE.S00_AW_REG_TYPE } {
	# Procedure called to validate S00_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S00_B_REG_TYPE { PARAM_VALUE.S00_B_REG_TYPE } {
	# Procedure called to update S00_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_B_REG_TYPE { PARAM_VALUE.S00_B_REG_TYPE } {
	# Procedure called to validate S00_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S00_R_REG_TYPE { PARAM_VALUE.S00_R_REG_TYPE } {
	# Procedure called to update S00_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_R_REG_TYPE { PARAM_VALUE.S00_R_REG_TYPE } {
	# Procedure called to validate S00_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S00_THREADS { PARAM_VALUE.S00_THREADS } {
	# Procedure called to update S00_THREADS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_THREADS { PARAM_VALUE.S00_THREADS } {
	# Procedure called to validate S00_THREADS
	return true
}

proc update_PARAM_VALUE.S00_W_REG_TYPE { PARAM_VALUE.S00_W_REG_TYPE } {
	# Procedure called to update S00_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_W_REG_TYPE { PARAM_VALUE.S00_W_REG_TYPE } {
	# Procedure called to validate S00_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S01_ACCEPT { PARAM_VALUE.S01_ACCEPT } {
	# Procedure called to update S01_ACCEPT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_ACCEPT { PARAM_VALUE.S01_ACCEPT } {
	# Procedure called to validate S01_ACCEPT
	return true
}

proc update_PARAM_VALUE.S01_AR_REG_TYPE { PARAM_VALUE.S01_AR_REG_TYPE } {
	# Procedure called to update S01_AR_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_AR_REG_TYPE { PARAM_VALUE.S01_AR_REG_TYPE } {
	# Procedure called to validate S01_AR_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S01_AW_REG_TYPE { PARAM_VALUE.S01_AW_REG_TYPE } {
	# Procedure called to update S01_AW_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_AW_REG_TYPE { PARAM_VALUE.S01_AW_REG_TYPE } {
	# Procedure called to validate S01_AW_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S01_B_REG_TYPE { PARAM_VALUE.S01_B_REG_TYPE } {
	# Procedure called to update S01_B_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_B_REG_TYPE { PARAM_VALUE.S01_B_REG_TYPE } {
	# Procedure called to validate S01_B_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S01_R_REG_TYPE { PARAM_VALUE.S01_R_REG_TYPE } {
	# Procedure called to update S01_R_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_R_REG_TYPE { PARAM_VALUE.S01_R_REG_TYPE } {
	# Procedure called to validate S01_R_REG_TYPE
	return true
}

proc update_PARAM_VALUE.S01_THREADS { PARAM_VALUE.S01_THREADS } {
	# Procedure called to update S01_THREADS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_THREADS { PARAM_VALUE.S01_THREADS } {
	# Procedure called to validate S01_THREADS
	return true
}

proc update_PARAM_VALUE.S01_W_REG_TYPE { PARAM_VALUE.S01_W_REG_TYPE } {
	# Procedure called to update S01_W_REG_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S01_W_REG_TYPE { PARAM_VALUE.S01_W_REG_TYPE } {
	# Procedure called to validate S01_W_REG_TYPE
	return true
}

proc update_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to update STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to validate STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.S_ID_WIDTH { PARAM_VALUE.S_ID_WIDTH } {
	# Procedure called to update S_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_ID_WIDTH { PARAM_VALUE.S_ID_WIDTH } {
	# Procedure called to validate S_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.WUSER_ENABLE { PARAM_VALUE.WUSER_ENABLE } {
	# Procedure called to update WUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WUSER_ENABLE { PARAM_VALUE.WUSER_ENABLE } {
	# Procedure called to validate WUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.WUSER_WIDTH { PARAM_VALUE.WUSER_WIDTH } {
	# Procedure called to update WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WUSER_WIDTH { PARAM_VALUE.WUSER_WIDTH } {
	# Procedure called to validate WUSER_WIDTH
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

proc update_MODELPARAM_VALUE.S_ID_WIDTH { MODELPARAM_VALUE.S_ID_WIDTH PARAM_VALUE.S_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_ID_WIDTH}] ${MODELPARAM_VALUE.S_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.M_ID_WIDTH { MODELPARAM_VALUE.M_ID_WIDTH PARAM_VALUE.M_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_ID_WIDTH}] ${MODELPARAM_VALUE.M_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AWUSER_ENABLE { MODELPARAM_VALUE.AWUSER_ENABLE PARAM_VALUE.AWUSER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AWUSER_ENABLE}] ${MODELPARAM_VALUE.AWUSER_ENABLE}
}

proc update_MODELPARAM_VALUE.AWUSER_WIDTH { MODELPARAM_VALUE.AWUSER_WIDTH PARAM_VALUE.AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AWUSER_WIDTH}] ${MODELPARAM_VALUE.AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.WUSER_ENABLE { MODELPARAM_VALUE.WUSER_ENABLE PARAM_VALUE.WUSER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WUSER_ENABLE}] ${MODELPARAM_VALUE.WUSER_ENABLE}
}

proc update_MODELPARAM_VALUE.WUSER_WIDTH { MODELPARAM_VALUE.WUSER_WIDTH PARAM_VALUE.WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WUSER_WIDTH}] ${MODELPARAM_VALUE.WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.BUSER_ENABLE { MODELPARAM_VALUE.BUSER_ENABLE PARAM_VALUE.BUSER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUSER_ENABLE}] ${MODELPARAM_VALUE.BUSER_ENABLE}
}

proc update_MODELPARAM_VALUE.BUSER_WIDTH { MODELPARAM_VALUE.BUSER_WIDTH PARAM_VALUE.BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUSER_WIDTH}] ${MODELPARAM_VALUE.BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.ARUSER_ENABLE { MODELPARAM_VALUE.ARUSER_ENABLE PARAM_VALUE.ARUSER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ARUSER_ENABLE}] ${MODELPARAM_VALUE.ARUSER_ENABLE}
}

proc update_MODELPARAM_VALUE.ARUSER_WIDTH { MODELPARAM_VALUE.ARUSER_WIDTH PARAM_VALUE.ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ARUSER_WIDTH}] ${MODELPARAM_VALUE.ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.RUSER_ENABLE { MODELPARAM_VALUE.RUSER_ENABLE PARAM_VALUE.RUSER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RUSER_ENABLE}] ${MODELPARAM_VALUE.RUSER_ENABLE}
}

proc update_MODELPARAM_VALUE.RUSER_WIDTH { MODELPARAM_VALUE.RUSER_WIDTH PARAM_VALUE.RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RUSER_WIDTH}] ${MODELPARAM_VALUE.RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.S00_THREADS { MODELPARAM_VALUE.S00_THREADS PARAM_VALUE.S00_THREADS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_THREADS}] ${MODELPARAM_VALUE.S00_THREADS}
}

proc update_MODELPARAM_VALUE.S00_ACCEPT { MODELPARAM_VALUE.S00_ACCEPT PARAM_VALUE.S00_ACCEPT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_ACCEPT}] ${MODELPARAM_VALUE.S00_ACCEPT}
}

proc update_MODELPARAM_VALUE.S01_THREADS { MODELPARAM_VALUE.S01_THREADS PARAM_VALUE.S01_THREADS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_THREADS}] ${MODELPARAM_VALUE.S01_THREADS}
}

proc update_MODELPARAM_VALUE.S01_ACCEPT { MODELPARAM_VALUE.S01_ACCEPT PARAM_VALUE.S01_ACCEPT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_ACCEPT}] ${MODELPARAM_VALUE.S01_ACCEPT}
}

proc update_MODELPARAM_VALUE.M_REGIONS { MODELPARAM_VALUE.M_REGIONS PARAM_VALUE.M_REGIONS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_REGIONS}] ${MODELPARAM_VALUE.M_REGIONS}
}

proc update_MODELPARAM_VALUE.M00_BASE_ADDR { MODELPARAM_VALUE.M00_BASE_ADDR PARAM_VALUE.M00_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_BASE_ADDR}] ${MODELPARAM_VALUE.M00_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.M00_ADDR_WIDTH { MODELPARAM_VALUE.M00_ADDR_WIDTH PARAM_VALUE.M00_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_ADDR_WIDTH}] ${MODELPARAM_VALUE.M00_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M00_CONNECT_READ { MODELPARAM_VALUE.M00_CONNECT_READ PARAM_VALUE.M00_CONNECT_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_CONNECT_READ}] ${MODELPARAM_VALUE.M00_CONNECT_READ}
}

proc update_MODELPARAM_VALUE.M00_CONNECT_WRITE { MODELPARAM_VALUE.M00_CONNECT_WRITE PARAM_VALUE.M00_CONNECT_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_CONNECT_WRITE}] ${MODELPARAM_VALUE.M00_CONNECT_WRITE}
}

proc update_MODELPARAM_VALUE.M00_ISSUE { MODELPARAM_VALUE.M00_ISSUE PARAM_VALUE.M00_ISSUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_ISSUE}] ${MODELPARAM_VALUE.M00_ISSUE}
}

proc update_MODELPARAM_VALUE.M00_SECURE { MODELPARAM_VALUE.M00_SECURE PARAM_VALUE.M00_SECURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_SECURE}] ${MODELPARAM_VALUE.M00_SECURE}
}

proc update_MODELPARAM_VALUE.M01_BASE_ADDR { MODELPARAM_VALUE.M01_BASE_ADDR PARAM_VALUE.M01_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_BASE_ADDR}] ${MODELPARAM_VALUE.M01_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.M01_ADDR_WIDTH { MODELPARAM_VALUE.M01_ADDR_WIDTH PARAM_VALUE.M01_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_ADDR_WIDTH}] ${MODELPARAM_VALUE.M01_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M01_CONNECT_READ { MODELPARAM_VALUE.M01_CONNECT_READ PARAM_VALUE.M01_CONNECT_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_CONNECT_READ}] ${MODELPARAM_VALUE.M01_CONNECT_READ}
}

proc update_MODELPARAM_VALUE.M01_CONNECT_WRITE { MODELPARAM_VALUE.M01_CONNECT_WRITE PARAM_VALUE.M01_CONNECT_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_CONNECT_WRITE}] ${MODELPARAM_VALUE.M01_CONNECT_WRITE}
}

proc update_MODELPARAM_VALUE.M01_ISSUE { MODELPARAM_VALUE.M01_ISSUE PARAM_VALUE.M01_ISSUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_ISSUE}] ${MODELPARAM_VALUE.M01_ISSUE}
}

proc update_MODELPARAM_VALUE.M01_SECURE { MODELPARAM_VALUE.M01_SECURE PARAM_VALUE.M01_SECURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_SECURE}] ${MODELPARAM_VALUE.M01_SECURE}
}

proc update_MODELPARAM_VALUE.M02_BASE_ADDR { MODELPARAM_VALUE.M02_BASE_ADDR PARAM_VALUE.M02_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_BASE_ADDR}] ${MODELPARAM_VALUE.M02_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.M02_ADDR_WIDTH { MODELPARAM_VALUE.M02_ADDR_WIDTH PARAM_VALUE.M02_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_ADDR_WIDTH}] ${MODELPARAM_VALUE.M02_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M02_CONNECT_READ { MODELPARAM_VALUE.M02_CONNECT_READ PARAM_VALUE.M02_CONNECT_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_CONNECT_READ}] ${MODELPARAM_VALUE.M02_CONNECT_READ}
}

proc update_MODELPARAM_VALUE.M02_CONNECT_WRITE { MODELPARAM_VALUE.M02_CONNECT_WRITE PARAM_VALUE.M02_CONNECT_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_CONNECT_WRITE}] ${MODELPARAM_VALUE.M02_CONNECT_WRITE}
}

proc update_MODELPARAM_VALUE.M02_ISSUE { MODELPARAM_VALUE.M02_ISSUE PARAM_VALUE.M02_ISSUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_ISSUE}] ${MODELPARAM_VALUE.M02_ISSUE}
}

proc update_MODELPARAM_VALUE.M02_SECURE { MODELPARAM_VALUE.M02_SECURE PARAM_VALUE.M02_SECURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_SECURE}] ${MODELPARAM_VALUE.M02_SECURE}
}

proc update_MODELPARAM_VALUE.M03_BASE_ADDR { MODELPARAM_VALUE.M03_BASE_ADDR PARAM_VALUE.M03_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_BASE_ADDR}] ${MODELPARAM_VALUE.M03_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.M03_ADDR_WIDTH { MODELPARAM_VALUE.M03_ADDR_WIDTH PARAM_VALUE.M03_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_ADDR_WIDTH}] ${MODELPARAM_VALUE.M03_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M03_CONNECT_READ { MODELPARAM_VALUE.M03_CONNECT_READ PARAM_VALUE.M03_CONNECT_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_CONNECT_READ}] ${MODELPARAM_VALUE.M03_CONNECT_READ}
}

proc update_MODELPARAM_VALUE.M03_CONNECT_WRITE { MODELPARAM_VALUE.M03_CONNECT_WRITE PARAM_VALUE.M03_CONNECT_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_CONNECT_WRITE}] ${MODELPARAM_VALUE.M03_CONNECT_WRITE}
}

proc update_MODELPARAM_VALUE.M03_ISSUE { MODELPARAM_VALUE.M03_ISSUE PARAM_VALUE.M03_ISSUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_ISSUE}] ${MODELPARAM_VALUE.M03_ISSUE}
}

proc update_MODELPARAM_VALUE.M03_SECURE { MODELPARAM_VALUE.M03_SECURE PARAM_VALUE.M03_SECURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_SECURE}] ${MODELPARAM_VALUE.M03_SECURE}
}

proc update_MODELPARAM_VALUE.M04_BASE_ADDR { MODELPARAM_VALUE.M04_BASE_ADDR PARAM_VALUE.M04_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_BASE_ADDR}] ${MODELPARAM_VALUE.M04_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.M04_ADDR_WIDTH { MODELPARAM_VALUE.M04_ADDR_WIDTH PARAM_VALUE.M04_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_ADDR_WIDTH}] ${MODELPARAM_VALUE.M04_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M04_CONNECT_READ { MODELPARAM_VALUE.M04_CONNECT_READ PARAM_VALUE.M04_CONNECT_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_CONNECT_READ}] ${MODELPARAM_VALUE.M04_CONNECT_READ}
}

proc update_MODELPARAM_VALUE.M04_CONNECT_WRITE { MODELPARAM_VALUE.M04_CONNECT_WRITE PARAM_VALUE.M04_CONNECT_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_CONNECT_WRITE}] ${MODELPARAM_VALUE.M04_CONNECT_WRITE}
}

proc update_MODELPARAM_VALUE.M04_ISSUE { MODELPARAM_VALUE.M04_ISSUE PARAM_VALUE.M04_ISSUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_ISSUE}] ${MODELPARAM_VALUE.M04_ISSUE}
}

proc update_MODELPARAM_VALUE.M04_SECURE { MODELPARAM_VALUE.M04_SECURE PARAM_VALUE.M04_SECURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_SECURE}] ${MODELPARAM_VALUE.M04_SECURE}
}

proc update_MODELPARAM_VALUE.S00_AW_REG_TYPE { MODELPARAM_VALUE.S00_AW_REG_TYPE PARAM_VALUE.S00_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_AW_REG_TYPE}] ${MODELPARAM_VALUE.S00_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S00_W_REG_TYPE { MODELPARAM_VALUE.S00_W_REG_TYPE PARAM_VALUE.S00_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_W_REG_TYPE}] ${MODELPARAM_VALUE.S00_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S00_B_REG_TYPE { MODELPARAM_VALUE.S00_B_REG_TYPE PARAM_VALUE.S00_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_B_REG_TYPE}] ${MODELPARAM_VALUE.S00_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S00_AR_REG_TYPE { MODELPARAM_VALUE.S00_AR_REG_TYPE PARAM_VALUE.S00_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_AR_REG_TYPE}] ${MODELPARAM_VALUE.S00_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S00_R_REG_TYPE { MODELPARAM_VALUE.S00_R_REG_TYPE PARAM_VALUE.S00_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_R_REG_TYPE}] ${MODELPARAM_VALUE.S00_R_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S01_AW_REG_TYPE { MODELPARAM_VALUE.S01_AW_REG_TYPE PARAM_VALUE.S01_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_AW_REG_TYPE}] ${MODELPARAM_VALUE.S01_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S01_W_REG_TYPE { MODELPARAM_VALUE.S01_W_REG_TYPE PARAM_VALUE.S01_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_W_REG_TYPE}] ${MODELPARAM_VALUE.S01_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S01_B_REG_TYPE { MODELPARAM_VALUE.S01_B_REG_TYPE PARAM_VALUE.S01_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_B_REG_TYPE}] ${MODELPARAM_VALUE.S01_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S01_AR_REG_TYPE { MODELPARAM_VALUE.S01_AR_REG_TYPE PARAM_VALUE.S01_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_AR_REG_TYPE}] ${MODELPARAM_VALUE.S01_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.S01_R_REG_TYPE { MODELPARAM_VALUE.S01_R_REG_TYPE PARAM_VALUE.S01_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S01_R_REG_TYPE}] ${MODELPARAM_VALUE.S01_R_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M00_AW_REG_TYPE { MODELPARAM_VALUE.M00_AW_REG_TYPE PARAM_VALUE.M00_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_AW_REG_TYPE}] ${MODELPARAM_VALUE.M00_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M00_W_REG_TYPE { MODELPARAM_VALUE.M00_W_REG_TYPE PARAM_VALUE.M00_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_W_REG_TYPE}] ${MODELPARAM_VALUE.M00_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M00_B_REG_TYPE { MODELPARAM_VALUE.M00_B_REG_TYPE PARAM_VALUE.M00_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_B_REG_TYPE}] ${MODELPARAM_VALUE.M00_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M00_AR_REG_TYPE { MODELPARAM_VALUE.M00_AR_REG_TYPE PARAM_VALUE.M00_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_AR_REG_TYPE}] ${MODELPARAM_VALUE.M00_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M00_R_REG_TYPE { MODELPARAM_VALUE.M00_R_REG_TYPE PARAM_VALUE.M00_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_R_REG_TYPE}] ${MODELPARAM_VALUE.M00_R_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M01_AW_REG_TYPE { MODELPARAM_VALUE.M01_AW_REG_TYPE PARAM_VALUE.M01_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_AW_REG_TYPE}] ${MODELPARAM_VALUE.M01_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M01_W_REG_TYPE { MODELPARAM_VALUE.M01_W_REG_TYPE PARAM_VALUE.M01_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_W_REG_TYPE}] ${MODELPARAM_VALUE.M01_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M01_B_REG_TYPE { MODELPARAM_VALUE.M01_B_REG_TYPE PARAM_VALUE.M01_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_B_REG_TYPE}] ${MODELPARAM_VALUE.M01_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M01_AR_REG_TYPE { MODELPARAM_VALUE.M01_AR_REG_TYPE PARAM_VALUE.M01_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_AR_REG_TYPE}] ${MODELPARAM_VALUE.M01_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M01_R_REG_TYPE { MODELPARAM_VALUE.M01_R_REG_TYPE PARAM_VALUE.M01_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M01_R_REG_TYPE}] ${MODELPARAM_VALUE.M01_R_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M02_AW_REG_TYPE { MODELPARAM_VALUE.M02_AW_REG_TYPE PARAM_VALUE.M02_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_AW_REG_TYPE}] ${MODELPARAM_VALUE.M02_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M02_W_REG_TYPE { MODELPARAM_VALUE.M02_W_REG_TYPE PARAM_VALUE.M02_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_W_REG_TYPE}] ${MODELPARAM_VALUE.M02_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M02_B_REG_TYPE { MODELPARAM_VALUE.M02_B_REG_TYPE PARAM_VALUE.M02_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_B_REG_TYPE}] ${MODELPARAM_VALUE.M02_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M02_AR_REG_TYPE { MODELPARAM_VALUE.M02_AR_REG_TYPE PARAM_VALUE.M02_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_AR_REG_TYPE}] ${MODELPARAM_VALUE.M02_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M02_R_REG_TYPE { MODELPARAM_VALUE.M02_R_REG_TYPE PARAM_VALUE.M02_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M02_R_REG_TYPE}] ${MODELPARAM_VALUE.M02_R_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M03_AW_REG_TYPE { MODELPARAM_VALUE.M03_AW_REG_TYPE PARAM_VALUE.M03_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_AW_REG_TYPE}] ${MODELPARAM_VALUE.M03_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M03_W_REG_TYPE { MODELPARAM_VALUE.M03_W_REG_TYPE PARAM_VALUE.M03_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_W_REG_TYPE}] ${MODELPARAM_VALUE.M03_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M03_B_REG_TYPE { MODELPARAM_VALUE.M03_B_REG_TYPE PARAM_VALUE.M03_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_B_REG_TYPE}] ${MODELPARAM_VALUE.M03_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M03_AR_REG_TYPE { MODELPARAM_VALUE.M03_AR_REG_TYPE PARAM_VALUE.M03_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_AR_REG_TYPE}] ${MODELPARAM_VALUE.M03_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M03_R_REG_TYPE { MODELPARAM_VALUE.M03_R_REG_TYPE PARAM_VALUE.M03_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M03_R_REG_TYPE}] ${MODELPARAM_VALUE.M03_R_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M04_AW_REG_TYPE { MODELPARAM_VALUE.M04_AW_REG_TYPE PARAM_VALUE.M04_AW_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_AW_REG_TYPE}] ${MODELPARAM_VALUE.M04_AW_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M04_W_REG_TYPE { MODELPARAM_VALUE.M04_W_REG_TYPE PARAM_VALUE.M04_W_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_W_REG_TYPE}] ${MODELPARAM_VALUE.M04_W_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M04_B_REG_TYPE { MODELPARAM_VALUE.M04_B_REG_TYPE PARAM_VALUE.M04_B_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_B_REG_TYPE}] ${MODELPARAM_VALUE.M04_B_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M04_AR_REG_TYPE { MODELPARAM_VALUE.M04_AR_REG_TYPE PARAM_VALUE.M04_AR_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_AR_REG_TYPE}] ${MODELPARAM_VALUE.M04_AR_REG_TYPE}
}

proc update_MODELPARAM_VALUE.M04_R_REG_TYPE { MODELPARAM_VALUE.M04_R_REG_TYPE PARAM_VALUE.M04_R_REG_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M04_R_REG_TYPE}] ${MODELPARAM_VALUE.M04_R_REG_TYPE}
}

