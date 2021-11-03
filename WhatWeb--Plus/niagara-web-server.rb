Plugin.define do
name "Niagara-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Niagara Web Server"
matches [
	{ :regexp=>/Niagara Web Server/, :search=>"headers[server]" },
	{ :version=>/Niagara Web Server\/([\d\.]+)/, :search=>"headers[server]" },
	{ :version=>/^(.*)$/, :search=>"headers[niagara-release]" },
	{ :name=>"Niagara-ffs HTTP Header", :regexp=>//, :search=>"headers[niagara-ffs]" },	
]
end
