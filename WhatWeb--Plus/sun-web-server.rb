Plugin.define do
name "Sun-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sun web server"
website "http://www.sun.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Sun/
		if @headers["server"] =~ /^Sun-Web-Server$/
			m << { :name=>"HTTP Server Header" }
		end
		if @headers["server"] =~ /^Sun_WebServer\/([^\s]+)$/
			m << { :version=>"#{$1}" }
		end
		if @headers["server"] =~ /^Sun-ONE-Web-Server\/([^\s]+)$/
			m << { :version=>"#{$1}" }
		end
	end
	m
end
end
