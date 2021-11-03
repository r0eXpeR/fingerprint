Plugin.define do
name "SonicWALL-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SonicWALL Firewall device"
website "http://www.sonicwall.com/us/products/Network_Security.html"
dorks [
'intitle:"SonicWALL - Authentication" "Username" "Password" "Language"'
]
matches [
{ :search=>"headers[server]", :regexp=>/^SonicWALL$/ },
{ :url=>"/auth1.html", :module=>/<div align="right">Click <a href="sslvpn" onClick="top\.location\.href='sslvpn'";>here<\/a> for (sslvpn) login/ },
{ :url=>"/auth1.html", :firmware=>/<link href="swl_login-([^"]+)\.css" rel="stylesheet" type="text\/css">/ },
]
end
