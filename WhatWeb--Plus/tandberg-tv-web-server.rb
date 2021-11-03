Plugin.define do
name "Tandberg-TV-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tandberg - Video Conferencing Solutions and Telepresence Products"
website "http://www.tandberg.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Tandberg Television Web server$/ or @headers["server "] =~ /^Tandberg Television Web server$/
		m << { :name=>"HTTP Server Header" }
	end
	m
end
end
