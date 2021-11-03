Plugin.define do
name "DataflexViNE-VoIP-IAD"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The ViNE range of VoIP ADSL and VoIP SHDSL IADs support both SIP and MGCP protocols depending on the infrastructure and application for VoIP. Remote updates are possible to switch between either VoIP protocols and VoDSL."
website "http://www.dataflex.com/"
matches [
    {:search=>"headers", :text=>'DataflexViNE-Webserver'},
    {:search=>"headers[server]", :version=>/DataflexViNE-Webserver\/([\d\.]+)/}
]
end
