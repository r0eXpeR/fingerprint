Plugin.define do
name "RealVNC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "RealVNC provides remote control software which lets you see and interact with desktop applications across any network."
website "http://www.realvnc.com/"
matches [
	{ :regexp=>/^RealVNC/, :search=>"headers[server]" },
	{ :version=>/^RealVNC\/(.+)$/, :search=>"headers[server]" },
]
end
