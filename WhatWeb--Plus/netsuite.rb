Plugin.define do
name "NetSuite"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "NetSuite has a range of products. I don't know what this detects."
website "http://www.netsuite.com/portal/home.shtml"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^NLSD3/, :name=>"NLSD3 cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^NS_ROUTING_VERSION/, :name=>"NS_ROUTING_VERSION cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^NS_VER/, :name=>"NS_VER cookie" },
] 
end
