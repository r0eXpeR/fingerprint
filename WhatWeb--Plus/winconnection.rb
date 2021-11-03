Plugin.define do
name "Winconnection"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Winconnection 6 is a gateway to access the Internet developed within the UTM (Unified Threat Management) philosophy."
website "http://www.winco.com.br/"
matches [
	{ :regexp=>/^Winconnection /, :search=>"headers[server]" },
	{ :version=>/^Winconnection V([^\s]+) \(server ([A-Z\d]{6})\)$/, :offset=>0 , :search=>"headers[server]" },
	{ :string=>/^Winconnection V([^\s]+) \(server ([A-Z\d]{6})\)$/, :offset=>1 , :search=>"headers[server]" },
]
end
