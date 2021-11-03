Plugin.define do
name "NetTalk-WebServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Webserver using NetTalk. NetTalk is the de-facto standard tool for TCP/IP networking in Clarion."
website "http://www.capesoft.com/docs/NetTalk/nettalk.htm"
matches [
	{ :regexp=>/^NetTalk-WebServer/, :search=>"headers[server]" },
	{ :version=>/^NetTalk-WebServer\/([\d\.]+)$/, :search=>"headers[server]" },
]
end
