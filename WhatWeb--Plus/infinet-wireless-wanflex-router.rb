Plugin.define do
name "Infinet-Wireless-WANFleX-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Infinet Wireless WANFleX Router"
website "http://www.infinetwireless.com/products"
dorks [
'intitle:"Login Page" "InfiNet Wireless" "All rights reserved." "User Name" "Password"'
]
matches [
    {:search=>"headers", :text=>'WANFlex HTTP Daemon'},
    {:search=>"headers[server]", :version=>/^WANFlex HTTP Daemon v([^\s]+)$/},
    {:text=>'<meta name="generator" content="InfiNet Wireless Company" />'},
    {:text=>'content="InfiNet'}
]
end
