Plugin.define do
name "Proxy-Authenticate"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "This plugin extracts the realm from the proxy-authenticate HTTP header."
matches [
	{ :string=>/realm="([^"]+)"/, :search=>"headers[proxy-authenticate]" },
]
end
