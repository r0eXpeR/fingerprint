Plugin.define do
name "Via-Proxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "This plugin extracts the proxy server details from the Via param of the HTTP header."
matches [
	{ :search => "headers[via]", :string => /^.*$/ }
]
end
