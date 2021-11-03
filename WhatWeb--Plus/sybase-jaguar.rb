Plugin.define do
name "Sybase-Jaguar"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Sybase Jaguar server - discontinued"
website "http://www.sybase.com/products/archivedproducts/jaguarcts"
matches [
	{ :regexp=>/^Jaguar Server Version/, :search=>"headers[server]" },
	{ :version=>/^Jaguar Server Version ([\d\.]+)$/, :search=>"headers[server]" },
]
end
