Plugin.define do
name "NetBotz-Network-Monitoring-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "NetBotz monitoring and management web front end"
website "http://www.netbotz.com/products/index.html"
dorks [
'intitle:"netbotz appliance" -inurl:.php -inurl:.asp -inurl:.pdf -inurl:securitypipeline -announces'
]
matches [
{ :regexp=>/<TITLE>NetBotz( Network Monitoring) Appliance - [^<]*<\/TITLE>/ },
{ :text=>'<LINK REL="StyleSheet" TYPE="text/css" HREF="/netbotz.css">' },
{ :text=>'<!-- Launch the NetBotz Applications.  This will require Java 1.3.0 OR ANYTHING NEWER -->' },
{ :text=>'<a href="http://www.netbotz.com" target="_top"><img border="0" src="/colorlogo.gif"></a>' },
{ :text=>'	<TITLE>Device Status Summary Page</TITLE>' },
{ :url=>"/statusHeader.html", :version=>/<a href="http:\/\/updates.netbotz.com\/releases\/([\d\.]+)\/install.html" target="_instAV">\(Install Advanced View Application\)<\/a>/ },
]
passive do
	m=[]
	m << { :name=>'HTTP WWW Authenticate header' } if @headers['www-authenticate'] =~ /NetBotz Appliance/
	m
end
end
