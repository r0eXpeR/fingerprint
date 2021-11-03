Plugin.define do
name "Rabbit-Microcontroller"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Rabbit Semiconductor is the company which designs and sells the Rabbit family of microcontrollers and microcontroller modules. For development, it provides Dynamic C, a non-standard dialect of C with proprietary structures for multitasking."
website "http://www.rabbitconsulting.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Z-World Rabbit$/
		m << { :name=>"HTTP Server Header" }
		m << { :string=>@body.scan(/<TR><TD>MAC ID:<\/TD><TD>([A-F\d]{12})<\/TD><\/TR>/) } if @body =~ /<TR><TD>MAC ID:<\/TD><TD>[A-F\d]{12}<\/TD><\/TR>/
		m << { :version=>@body.scan(/<body><\/img><P align="center"><FONT size="5">Welcome to the OCMR(-SNMP)?[\s]+Agent V([\d\.]+)<\/FONT><\/P>/)[0][1] } if @body =~ /<body><\/img><P align="center"><FONT size="5">Welcome to the OCMR(-SNMP)?[\s]+Agent V([\d\.]+)<\/FONT><\/P>/
	end
	m
end
end
