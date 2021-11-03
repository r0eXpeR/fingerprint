Plugin.define do
name "NetCache-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NetCache is a former web cache software product which was owned and developed by NetApp and sold to Blue Coat Systems."
website "http://www.netapp.com/us/products/netcache.html"
matches [
{ :search=>"headers[server]", :version=>/^NetCache appliance \(NetApp\/([^\)]+)\)$/ },
]
end
