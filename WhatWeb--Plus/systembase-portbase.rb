Plugin.define do
name "SystemBase-PortBase"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Portbase is a Serial to Ethernet Device Server with an internal modem for PPP server and client. When a network failure has occurs, serial device can still be managed over PSTN connection. Also, RAS server feature enables both directly and network-connected devices to be accessed via Portbase. Uses telnet for remote management"
website "http://www.sysbas.com/e-Products/?sNum=261"
passive do
	m=[]
	if @status == 401 and @headers["server"] =~ /^WindWeb/ and @headers["www-authenticate"] =~ /^Basic realm="PortBase"$/
		m << { :name=>"HTTP Server and WWW-Authenticate Headers" }
	end
	m
end
end
