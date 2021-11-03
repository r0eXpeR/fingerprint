Plugin.define do
name "Cisco-ACE-XML-Gateway"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Cisco ACE XML Gateway is a key component of the Cisco Application Control Engine (ACE) family of products. The ACE XML Gateway delivers an integrated XML firewall."
website "http://www.cisco.com/en/US/products/ps7314/index.html"
matches [
{ :search=>"headers[server]", :regexp=>/^ACE XML Gateway$/ },
]
end
