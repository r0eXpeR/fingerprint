Plugin.define do
	name "Flir-AX8"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "FLIR AX8 is a Thermal Imaging Camera For Continuous Condition and Safety Monitoring"
	website "https://www.flir.com/products/ax8-automation/"
	dorks [
	'intitle:"FLIR AX8" "User web" password'
	]
	matches [
		{ :text => '<p style="display: inline-block" id="login-title">FLIR AX8' }
	] 
end
