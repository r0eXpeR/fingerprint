Plugin.define do
name "Spinnaker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Spinnaker web server - Searchight Software sold Searchlight BBS, along with Spinnaker Web Server, to TeleGrafix Communications in 1998. TeleGrafix Communications, Inc., closed its doors in late 2000."
website "http://www.telegrafix.com/"
matches [
	{ :regexp=>/^Spinnaker/, :search=>"headers[server]" },
	{ :version=>/^Spinnaker\/([^\s]+)/, :search=>"headers[server]" },
]
end
