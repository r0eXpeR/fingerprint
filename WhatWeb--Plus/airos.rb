Plugin.define do
name "AirOS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AirOS is an intuitive, versatile, highly developed Ubiquiti firmware technology that resides on Ubiquiti Station products. It is exceptionally intuitive and was designed to require no training to operate. Behind the user interface is a powerful firmware architecture which enables hi-performance outdoor multipoint networking. "
website "http://www.ubnt.com/airos"
matches [
    {:search=>"headers", :text=>'AIROS_SESSIONID'},
    {:search=>"headers", :text=>'cookiechecker?uri='},
    {:text=>"cache_images(['main_top.png', 'main.png', 'link.png', 'net.png', '4dv.png', 'srv.png', 'system.png', 'border.gif', 'spectr.gif']);"}
]
passive do
	m=[]
	m << { :name=>"AIROS_SESSIONID Cookie" } if @headers["set-cookie"] =~ /AIROS_SESSIONID=[a-z0-9]{32}; Path=\/; Version=([\d\.]+)/
	m << { :name=>"Location HTTP Header", :status=>301 } if @headers["location"] =~ /\/cookiechecker\?uri=\//
	m
end
end
