Plugin.define do
name "SonicWALL-SSL-VPN"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SonicWALL SSL-VPN Portal provides secure Internet access for remote users to log in and access private network resources via SSL-VPN technology. "
website "http://www.sonicwall.com/"
matches [
{ :search=>"headers[server]", :regexp=>/^SonicWALL SSL-VPN Web Server\.?$/ },
]
end
