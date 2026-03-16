# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Stress_Number" -parent ${Page_0}


}

proc update_PARAM_VALUE.Stress_Number { PARAM_VALUE.Stress_Number } {
	# Procedure called to update Stress_Number when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stress_Number { PARAM_VALUE.Stress_Number } {
	# Procedure called to validate Stress_Number
	return true
}


proc update_MODELPARAM_VALUE.Stress_Number { MODELPARAM_VALUE.Stress_Number PARAM_VALUE.Stress_Number } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stress_Number}] ${MODELPARAM_VALUE.Stress_Number}
}

