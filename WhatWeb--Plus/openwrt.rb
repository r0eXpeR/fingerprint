Plugin.define do
name "OpenWrt"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A GNU/Linux based firmware program for embedded devices such as residential gateways and routers."
website "http://openwrt.org/"
matches [
{ :text=>'<title>OpenWrt Administrative Console</title>' },
{ :text=>'OpenWrt Administrative Console<br />Redirecting to : <a style="color: inherit;" href="/cgi-bin/webif.sh">main page</a></p>' },
]
passive do
	m=[]
	m << { :name=>"realm OpenWrt" } if @headers["www-authenticate"] =~ / realm="OpenWrt"/
	m
end
end
