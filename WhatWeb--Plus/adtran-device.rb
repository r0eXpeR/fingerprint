Plugin.define do
name "ADTRAN-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "ADTRAN device - Total Access and NetVanta Network Management - Includes: Fast Ethernet switches, Gigabit Ethernet switches, Power over Ethernet Switches, Integrated switch-routers, Fixed port Routers, Modular Routers, Multiservice Access Routers, Internet security/firewall appliance, IP Business Gateways, IP Communication Platforms, IP Phones, Integrated Access Devices, 802.11a/b/g Wireless Access Points, Network Management"
website "http://www.adtran.com/web/page/portal/Adtran/group/3310"
matches [
    {:regexp=>/^ADTRAN/, :search=>"headers[server]", :name=>"HTTP Server Header"},
    {:search=>"headers", :text=>'ADTRAN'},
    {:search=>"headers", :text=>'NetVanta'},
    {:string=>"NetVanta", :model=>/^Basic realm="Net[Vv]anta ([^"]+)"$/, :search=>"headers[www-authenticate]"},
    {:string=>"Total Access", :model=>/^Basic realm="Total Access ([^"]+)"$/, :search=>"headers[www-authenticate]"}
]
end
