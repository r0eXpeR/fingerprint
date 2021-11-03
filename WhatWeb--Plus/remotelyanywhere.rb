Plugin.define do
name "RemotelyAnywhere"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "A small HTTP daemon, which enables you to access and manage services, processes, users, and files on the remote computer over the network."
website "http://www.remotelyanywhere.com/"
matches [
	{ :regexp=>/^RemotelyAnywhere/, :search=>"headers[server]" },
	{ :version=>/^RemotelyAnywhere\/([\d\.]+)$/, :search=>"headers[server]" },
]
end
