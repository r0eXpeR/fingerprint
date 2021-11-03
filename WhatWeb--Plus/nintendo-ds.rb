Plugin.define do
name "Nintendo-DS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nintendo DS video game console"
website "http://www.nintendo.com/"
passive do
	m=[]
	m << { :certainty=>75, :name=>"www-authenticate" } if @headers["www-authenticate"] =~ /Basic realm="Nintendo Wi-Fi Network Adapter"/
	m
end
end
