Plugin.define do
name "SysMaster"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "SysMaster is a leading vendor of voice, video and wireless products and solutions, serving telecoms and service providers worldwide."
website "http://www.sysmaster.com/"
matches [
	{ :regexp=>/^SysMaster Web Server/, :search=>"headers[server]" },
	{ :version=>/^SysMaster Web Server\/([^\s]+)$/, :search=>"headers[server]" },
]
end
