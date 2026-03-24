# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Architecture_number" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_Clk" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RO_by_architecture" -parent ${Page_0}


}

proc update_PARAM_VALUE.Architecture_number { PARAM_VALUE.Architecture_number } {
	# Procedure called to update Architecture_number when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Architecture_number { PARAM_VALUE.Architecture_number } {
	# Procedure called to validate Architecture_number
	return true
}

proc update_PARAM_VALUE.FREQ_Clk { PARAM_VALUE.FREQ_Clk } {
	# Procedure called to update FREQ_Clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_Clk { PARAM_VALUE.FREQ_Clk } {
	# Procedure called to validate FREQ_Clk
	return true
}

proc update_PARAM_VALUE.RO_by_architecture { PARAM_VALUE.RO_by_architecture } {
	# Procedure called to update RO_by_architecture when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RO_by_architecture { PARAM_VALUE.RO_by_architecture } {
	# Procedure called to validate RO_by_architecture
	return true
}


proc update_MODELPARAM_VALUE.FREQ_Clk { MODELPARAM_VALUE.FREQ_Clk PARAM_VALUE.FREQ_Clk } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_Clk}] ${MODELPARAM_VALUE.FREQ_Clk}
}

proc update_MODELPARAM_VALUE.Architecture_number { MODELPARAM_VALUE.Architecture_number PARAM_VALUE.Architecture_number } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Architecture_number}] ${MODELPARAM_VALUE.Architecture_number}
}

proc update_MODELPARAM_VALUE.RO_by_architecture { MODELPARAM_VALUE.RO_by_architecture PARAM_VALUE.RO_by_architecture } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RO_by_architecture}] ${MODELPARAM_VALUE.RO_by_architecture}
}

