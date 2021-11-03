Plugin.define do
name "D-Link-Network-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "D-Link network camera web interface"
website "http://www.dlink.com/"
dorks [
'inurl:setdo.cgi intext:"Set DO OK"',
'intitle:"DCS" Camera inurl:web inurl:login'
]
matches [
    {:text=>'<TITLE>DCS-950G</TITLE>', :version=>"DCS-950G"},
    {:text=>'<title>DCS-5300</title></head>', :version=>"DCS-5300"},
    {:text=>'DCS-5300'},
    {:text=>'DCS-950G".toLowerCase()'},
    {:text=>'if (document.domain.toLowerCase() == "DCS-950G".toLowerCase())', :version=>"DCS-950G"}
]
end
