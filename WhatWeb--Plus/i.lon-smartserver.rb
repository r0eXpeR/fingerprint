Plugin.define do
name "iLON-SmartServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Echelon's i.LON SmartServer 2.0 is a versatile smart energy manager that helps your business achieve its operating and energy-efficiency goals. Designed to connect to IP-based applications such as enterprise energy management solutions, demand response programs, streetlight management systems, and high-value remote asset management programs, the server lets you link thousands of electronic devices to control centers."
website "http://www.echelon.com/products/cis/smartserver/default.htm"
passive do
	m=[]
	if (@headers["server"] =~ /^WindRiver/ or @headers["server"] =~ /WindWeb/) and @headers["www-authenticate"] =~ /^Basic realm="i\.LON"$/
		m << { :name=>"HTTP Server and WWW-Authenticate headers" }
	end
	m
end
end
