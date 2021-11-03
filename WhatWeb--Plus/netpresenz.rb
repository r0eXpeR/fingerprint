Plugin.define do
name "NetPresenz"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "NetPresenz is a Classic Macintosh implementation of the WWW, Gopher and FTP server protocols. It is compatible with most web browsers and FTP clients. It allows your Mac to act as an FTP server so you (and others) can access your files from anywhere around the world. You can also host a web site directly from your computer."
website "http://www.stairways.com/main/netpresenz"
matches [
	{ :regexp=>/^NetPresenz/, :name=>"HTTP Server Header", :search=>"headers[server]" },
	{ :version=>/^NetPresenz\/([^\s]+)$/, :search=>"headers[server]" },
]
end
