Plugin.define do
name "Falcon-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Falcon Web Server"
website "http://www.blueface.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Falcon Web Server$/
		m << { :name=>"HTTP Server Header" }
	end
	m
end
matches [
    {:search=>"headers", :text=>'Falcon Web Server'}
]
end
