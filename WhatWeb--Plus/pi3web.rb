Plugin.define do
name "Pi3Web"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Pi3Web is a free, multithreaded, highly configurable and extensible HTTP server and development environment for cross platform internet server development and deployment."
website "http://pi3web.sourceforge.net/pi3web/"
matches [
	{ :regexp=>/^Pi3Web/, :search=>"headers[server]" },
	{ :version=>/^Pi3Web\/([^\s]+)$/, :search=>"headers[server]" },
]
end
