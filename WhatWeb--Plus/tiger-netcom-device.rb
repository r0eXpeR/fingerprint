Plugin.define do
name "Tiger-Netcom-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Tiger Netcom is a manufacturer and distributor of Voice over Internet Protocol (VoIP) equipment."
website "http://www.vanaccess.com/"
matches [
	{ :regexp=>/^TigerNetCom/, :search=>"headers[server]" },
	{ :version=>/^TigerNetCom\/([^\s]+)$/, :search=>"headers[server]" },
]
end
