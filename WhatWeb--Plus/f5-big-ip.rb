Plugin.define do
name "F5-BigIP"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "F5 BIG IP provides application delivery networking (ADN) technology for the delivery of web applications and the security, performance, availability of servers, data storage devices, and other network and cloud resources."
website "https://f5.com/products/big-ip"
matches [
	{ :search => "headers[set-cookie]", :regexp => /BIGIP/i, :name=>"BIGIP cookie" },
	{ :search => "headers[set-cookie]", :regexp => /CEBrowser/, :name=>"CEBrowser cookie" },
	{ :search => "headers[set-cookie]", :regexp => /ceSessionUID/, :name=>"ceSessionUID cookie" },
	{ :search => "headers[set-cookie]", :regexp => /LoadingAsMobile/, :name=>"LoadingAsMobile cookie" },
	{ :search => "headers[set-cookie]", :regexp => /_SitePath/, :name=>"_SitePath cookie" },
] 
end
