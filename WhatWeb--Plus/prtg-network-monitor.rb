Plugin.define do
name "PRTG-Network-Monitor"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "PRTG Network Monitor - Availability and Bandwidth Monitoring"
website "http://www.paessler.com/prtg"
dorks [
'"PRTG Network Monitor" intitle:"PRTG Network Monitor" "Password" "Login Name "GUI" inurl:"install_the_windows_gui"'
]
matches [
{ :string=>/<title>PRTG Network Monitor \(([^\)]+)\)&nbsp;\|&nbsp;Welcome<\/title>/ },
{ :version=>/<link rel="stylesheet" type="text\/css" href="\/css\/prtgmini\.css\?prtgversion=([^"]+)" media="print,screen,projection" \/>/ },
{ :version=>/^PRTG/, :search=>"headers[server]" },
{ :version=>/^PRTG\/([^\s]+)$/, :search=>"headers[server]" },
]
end
