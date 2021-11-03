Plugin.define do
name "Sambar-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Sambar server is a multi-threaded, extensible application server, web server and multi-protocol proxy server with highly programmable API. It has virtual domain support (currently name based) with independent document/CGI directories, log files, and error templates. Development and support of Sambar Server has been discontinued - More Info: http://en.wikipedia.org/wiki/Sambar_Server"
matches [
	{ :name=>"HTTP Server Header", :regexp=>/^SAMBAR/, :search=>"headers[server]" },
	{ :version=>/^SAMBAR ([\d\.]+)$/, :search=>"headers[server]" },
]
end
