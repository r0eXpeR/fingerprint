Plugin.define do
name "xproxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "xproxy"
matches [
	{ :regexp=>/^xproxy/, :search=>"headers[server]" },
	{ :version=>/^xproxy\/([^\(]+)\([\d]+\)$/, :search=>"headers[server]" },
	{ :string=>/^xproxy\/[^\(]+\(([\d]+)\)$/, :search=>"headers[server]" },
]
end
