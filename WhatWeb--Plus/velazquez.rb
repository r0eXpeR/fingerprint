Plugin.define do
name "Velazquez"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Velazquez HTTP Server"
matches [
	{ :regexp=>/^Velazquez/, :search=>"headers[server]" },
	{ :version=>/^Velazquez ([\d\.]+)$/, :search=>"headers[server]" },
]
end
