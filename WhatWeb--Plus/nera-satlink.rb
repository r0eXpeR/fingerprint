Plugin.define do
name "Nera-SatLink"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nera SatLink router [Norwegian] - The Nera SatLink family of DVB-RCS Terminals act as IP routers to interface one or more PCs for bilateral communication via the satellite network."
website "http://www.neraworld.com/"
matches [
{ :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="SatLink Terminal"$/ },
]
end
