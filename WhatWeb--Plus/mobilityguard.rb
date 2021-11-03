Plugin.define do
name "MobilityGuard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MobilityGuard is a suite of security products from the company by the same name."
website "http://www.mobilityguard.com/"
matches [
{ :url=>"/mg-local/cookie.html", :text=>'<font size=2>Click here for more information about MobilityGuard.</font></a></center><br>' },
]
passive do
	m=[]
	if @headers["server"] =~ /^MobilityGuard/
		m << { :name=>"HTTP Server Header" }
		if @headers["server"] =~ /^MobilityGuard v([^\s]+)$/
			m << { :version=>"#{$1}" }
		end
	end
	m
end
end
