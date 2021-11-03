Plugin.define do
name "Phion-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Phion Firewall is now Barracuda NG Firewall"
website "http://www.phion.com/INT/products/perimeter_security/Pages/default.aspx"
matches [
	{ :regexp=>/^Phion/, :search=>"headers[server]" },
	{ :version=>/^Phion\/(.+)$/, :search=>"headers[server]" },
]
end
