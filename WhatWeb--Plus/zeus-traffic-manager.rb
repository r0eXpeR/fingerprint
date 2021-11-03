Plugin.define do
name "Zeus-Traffic-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zeus Traffic Manager - Application Delivery Controller - allows you to deliver fast, secure and available applications to your users at minimum infrastructure cost across any combination of physical, virtual and cloud infrastructures."
website "http://www.zeus.com/products/traffic-manager/index.html"
passive do
	m=[]
	m << { :name=>"Set-Cookie" } if @headers["set-cookie"] =~ /^X-Mapping-[a-z]{8}=([A-F\d]{32}|deleted);/
	m
end
end
