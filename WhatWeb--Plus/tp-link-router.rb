Plugin.define do
name "TP-Link-Router"
authors [
  "Aung Khant, http://yehg.net",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Detect TP-Link Router"
website "http://www.tp-link.com/"
matches [
	{ :text=>'Operating System Error Nr:3997698:  <P><HR><H2>File not found</H2>' },
	{ :text=>'Operating System Error Nr:3997698: HTM <P><HR><H2>Access denied</H2>' },
]
passive do
	m=[]
	m << { :name=>"HTTP Server" } if @headers['server'] =~ /TP\-LINK Router/
	m << { :model=>@headers['www-authenticate'].scan(/Basic realm="TP\-LINK ([^\"]*)"/) } if @headers['www-authenticate'] =~ /Basic realm="TP\-LINK ([^\"]*)"/
	m
end
end
