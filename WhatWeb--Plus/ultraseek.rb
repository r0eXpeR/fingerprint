Plugin.define do
name "Ultraseek"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Ultraseek - web site search engine product information - Homepage [Offline] : http://www.ultraseek.com/"
matches [
	{ :regexp=>/^Ultraseek/, :search=>"headers[server]" },
	{ :version=>/^Ultraseek\/([^\s]+)$/, :search=>"headers[server]" },
]
end
