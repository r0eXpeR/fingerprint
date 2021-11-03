Plugin.define do
name "Viking"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Viking is an all-in-one server that provides everything from HTTP and FTP to Gopher, IRC, and NTP; with firewalling, proxying and more"
website "http://www.robtex.com/viking.html"
matches [
	{ :regexp=>/^Viking/, :search=>"headers[server]" },
	{ :version=>/^Viking\/([^\s]{1,15})/, :search=>"headers[server]" },
]
end
