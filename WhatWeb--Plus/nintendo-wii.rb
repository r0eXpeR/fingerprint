Plugin.define do
name "Nintendo-Wii"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nintendo Wii video game console"
website "http://www.nintendo.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Nintendo Wii( \(http\))?$/
		m << { :name=>"HTTP Server Header" }
	elsif @headers["server"] =~ /^Nintendo Wii ([^\(]+)$/
		m << { :string=>"#{$1}" }
	end
	m << { :certainty=>75, :name=>"www-authenticate" } if @headers["www-authenticate"] =~ /Basic realm="Nintendo Wi-Fi Network Adapter"/
	m
end
end
