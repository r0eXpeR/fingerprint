Plugin.define do
name "NetBox"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "NetBox HTTP server [Chinese]"
website "http://www.netbox.cn/"
matches [
	{ :regexp=>/^NetBox/, :search=>"headers[server]" },
	{ :version=>/^NetBox Version (.+)$/, :search=>"headers[server]" },
]
end
