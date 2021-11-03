Plugin.define do
name "ProScan"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Streams audio"
website "http://www.proscan.org/"
matches [
	{ :regexp=>/^ProScan/, :search=>"headers[server]" },
	{ :version=>/^ProScan ([^\s]+)$/, :search=>"headers[server]" },
	{ :name=>"icy-notice2 header", :regexp=>/^ProScan/, :search=>"headers[icy-notice2]" },
]
end
