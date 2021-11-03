Plugin.define do
name "Grandstream-Phone"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Grandstream Networks is the leading manufacturer of IP voice/video telephony and video surveillance solutions."
website "http://www.grandstream.com/"
matches [
    {:model=>/^Grandstream ([^\s]+) [\d\.]+$/, :search=>"headers[server]"},
    {:regexp=>/^Grandstream/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Grandstream'},
    {:text=>'<title>Grandstream Device Configuration</title>'},
    {:text=>'All Rights Reserved Grandstream Networks, Inc.', :url=>"/"},
    {:text=>'Grandstream Device Configuration'},
    {:version=>/^Grandstream [^\s]+ ([\d\.]+)$/, :search=>"headers[server]"},
    {:version=>/^Grandstream\/([\d\.]+)$/, :search=>"headers[server]"}
]
end
