Plugin.define do
name "OwnServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "OwnServer is a web server used as a webserver for watching security cameras remotly. It allows broadcasting live streaming video on the web through the built-in webserver."
website "http://www.anteco.co.il/"
matches [
	{ :regexp=>/^OwnServer/, :search=>"headers[server]" },
	{ :version=>/^OwnServer([\d\.]+)$/, :search=>"headers[server]" },
]
end
