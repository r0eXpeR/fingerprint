Plugin.define do
name "PowerAlert"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PowerAlert monitors and controls UPS Systems, PDUs, sensors, and the computers and equipment they support."
website "http://www.tripplite.com/en/products/poweralert-software.cfm"
matches [
{ :certainty=>25, :text=>'<h1>Protected Object</h1>This object on the Netsilicon is protected.<p>Return to <A TARGET="_top" HREF="index.html">Last page</A><p>' },
]
passive do
	m=[]
	m << { :name=>"HTTP Server Header" } if @headers["server"] =~ /^PowerAlert HTTP server, powered by Allegro-Software-RomPager$/
	m << { :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~ /^Basic realm="PowerAlert [\d]+ Login"$/
	m << { :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~ /^Basic realm="PowerAlert Access Realm[\d]+"$/
	m
end
end
