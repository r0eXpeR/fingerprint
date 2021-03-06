Plugin.define do
name "Netgear-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Netgear Router - From wireless routers and adapters to Layer 3 Managed Switches we have the networking equipment you need for your home or small business."
website "http://www.netgear.com/products/"
matches [
{ :regexp=>/^Basic realm="?[\s]*Netgear/, :certainty=>75, :search=>"headers[www-authenticate]" },
{ :model=>/^Basic realm="?[\s]*NETGEAR ([^"]+)[\s]*"?/, :certainty=>75, :search=>"headers[www-authenticate]" },
]
end
