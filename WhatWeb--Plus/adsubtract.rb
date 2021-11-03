Plugin.define do
name "AdSubtract"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "AdSubtract - a Windows proxy which removes popup ads."
website "http://AdSubtract.com"
matches [
	{ :version=>/^AdSubtract ([\d\.]+)$/, :search=>"headers[server]" }
]
end
