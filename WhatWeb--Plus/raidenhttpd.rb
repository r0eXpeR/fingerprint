Plugin.define do
name "RaidenHTTPD"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RaidenHTTPD is a fully featured web server software for Windows platform."
website "http://www.raidenhttpd.com/en/"
matches [
{ :search=>"headers[server]", :version=>/^RaidenHTTPD\/([^\s]+) \([^\)]+\)$/ },
{ :search=>"headers[server]", :string=>/^RaidenHTTPD\/[^\s]+ \(([^\)]+)\)$/ },
]
end
