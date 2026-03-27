# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "TEMP_MAX_C_INT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VOLT_MAX_MV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VOLT_MIN_MV" -parent ${Page_0}


}

proc update_PARAM_VALUE.TEMP_MAX_C_INT { PARAM_VALUE.TEMP_MAX_C_INT } {
	# Procedure called to update TEMP_MAX_C_INT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEMP_MAX_C_INT { PARAM_VALUE.TEMP_MAX_C_INT } {
	# Procedure called to validate TEMP_MAX_C_INT
	return true
}

proc update_PARAM_VALUE.VOLT_MAX_MV { PARAM_VALUE.VOLT_MAX_MV } {
	# Procedure called to update VOLT_MAX_MV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VOLT_MAX_MV { PARAM_VALUE.VOLT_MAX_MV } {
	# Procedure called to validate VOLT_MAX_MV
	return true
}

proc update_PARAM_VALUE.VOLT_MIN_MV { PARAM_VALUE.VOLT_MIN_MV } {
	# Procedure called to update VOLT_MIN_MV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VOLT_MIN_MV { PARAM_VALUE.VOLT_MIN_MV } {
	# Procedure called to validate VOLT_MIN_MV
	return true
}


proc update_MODELPARAM_VALUE.TEMP_MAX_C_INT { MODELPARAM_VALUE.TEMP_MAX_C_INT PARAM_VALUE.TEMP_MAX_C_INT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEMP_MAX_C_INT}] ${MODELPARAM_VALUE.TEMP_MAX_C_INT}
}

proc update_MODELPARAM_VALUE.VOLT_MAX_MV { MODELPARAM_VALUE.VOLT_MAX_MV PARAM_VALUE.VOLT_MAX_MV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VOLT_MAX_MV}] ${MODELPARAM_VALUE.VOLT_MAX_MV}
}

proc update_MODELPARAM_VALUE.VOLT_MIN_MV { MODELPARAM_VALUE.VOLT_MIN_MV PARAM_VALUE.VOLT_MIN_MV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VOLT_MIN_MV}] ${MODELPARAM_VALUE.VOLT_MIN_MV}
}

