Plugin.define do
name "MikroTik-RouterOS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RouterOS is the operating system used on the MikroTik RouterBOARD series of routers. It can also be installed on a PC and will turn it into a router with all the necessary features - routing, firewall, bandwidth management, wireless access point, backhaul link, hotspot gateway, VPN server and more."
website "http://www.mikrotik.com/software.html & http://www.routerboard.com/"
dorks [
'intitle:"RouterOS router configuration page" "RouterOS" "You have connected to a router"'
]
matches [
{ :url=>"/webfig/iframe.html", :text=>'<body onload="parent.generateContent(parent.location.hash.substr(1));">' },
]
passive do
	m=[]
	if @body =~ /<a href="http:\/\/mikrotik\.com"><img src="mikrotik_logo\.png" style="float: right;" \/><\/a>/
		m << { :name=>"Logo HTML" }
		if @body =~ /<h1>RouterOS v([^\s^<]+)<\/h1>/
			m << { :version=>"#{$1}" }
		end
		if @body =~ /<label>(Telnet)<\/label>/
			m << { :module=>"#{$1}" }
		end
		if @body =~ /<label>(Webbox)<\/label>/
			m << { :module=>"#{$1}" }
		end
	end
	m
end
end
