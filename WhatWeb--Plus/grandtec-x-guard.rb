Plugin.define do
name "GrandTec-X-Guard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GrandTec X-Guard PC-based surveillance system"
website "http://store.grandtec.com/secsur.html"
passive do
	m=[]
	if @headers["server"] =~ /^WalkGuard web server$/
		m << { :name=>"HTTP Server Header" }
	end
	if @headers["www-authenticate"] =~ /Basic realm="WalkGuard web server"/
		m << { :name=>"WWW-Authenticate Header" }
	end
	m
end
matches [
    {:search=>"headers", :text=>'WalkGuard'}
]
end
