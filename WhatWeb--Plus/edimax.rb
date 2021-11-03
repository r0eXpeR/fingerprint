Plugin.define do
name "EDIMAX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "EDIMAX Device # Wireless Access Point / Broadband Routers / Ethernet Hub / Printer Server / Load Balancing Router"
website "http://www.edimax.com"
matches [
    {:md5=>"9691c1bcac34138f8245d95e2e003e55", :url=>"/images/banner_up_03.jpg"},
    {:text=>"<title>Access Point Status</title>", :url=>"/stainfo.asp"},
    {:text=>"<title>EDIMAX Technology</title>", :certainty=>75},
    {:text=>"cdwindow=window.open('countdown.asp','CountDown','channelmode=0, directories=0,fullscreen=0,height=100,location=0,menubar=0,resizable=1,scrollbars=0,status=0,titlebar=0,toolbar=0,width=450','false');"},
    {:text=>'<link rel="stylesheet" href="edimax.css">', :certainty=>75 },
    {:text=>'EDIMAX Technology'},
    {:text=>'content="Edimax'}
]
passive do
	m=[]
	if @headers["server"] =~ /GoAhead-Webs/
		m << { :name=>"HTTP Server Header and WWW-Authenticate realm", :status=>401, :model=>"Wireless Access Point / Broadband Router / Ethernet Hub / Printer Server" } if @headers["www-authenticate"] =~ /Basic realm="Default: admin\/1234"/
		m << { :name=>"HTTP Server Header and WWW-Authenticate realm", :status=>401, :model=>"Wireless Access Point / Load Balancing Router" } if @headers["www-authenticate"] =~ /Basic realm="Default: admin\/password"/
	end
	m
end
end
