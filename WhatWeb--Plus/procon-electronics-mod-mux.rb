Plugin.define do
name "Procon-Electronics-Mod-Mux"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Procon Electronics Mod-Mux (Serial/Ethernet Converter & Modbus Gateway) is a MODBUS TCP Converter. This converter is used to connect an Ethernet network to a RS485/232 network, and converts the Modbus TCP protocol to the standard Modbus RTU serial protocol on RS485/232."
website "http://www.proconel.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Procon Electronics Mod-Mux$/
		m << { :name=>"HTTP Server Header" }
		m << { :model=>@body.scan(/<title>MODBUS TCP \/ ([^\s]+) Converter<\/title>/)[0][0] } if @body =~ /<title>MODBUS TCP \/ ([^\s]+) Converter<\/title>/
	end
	m
end
end
