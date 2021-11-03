Plugin.define do
name "Polycom-ViewStation"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Polycom ViewStation - video server"
website "http://www.polycom.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Viavideo-Web$/
		m << { :name=>"HTTP Server Header" }
		m << { :url=>"/model.js", :model=>@body.scan(/^var model="([^"]{2,10})";$/) } if @body =~ /^var model="[^"]{2,10}";$/
		m << { :url=>"/u_indexmain.htm", :version=>@body.scan(/<td> <span class="bigtextwhite">Release ([^\-]{3,10}) - [\d]{2} [A-Z]{1}[a-z]{2,3} [\d]{4}<\/span>/) } if @body =~ /<td> <span class="bigtextwhite">Release ([^\-]{3,10}) - [\d]{2} [A-Z]{1}[a-z]{2,3} [\d]{4}<\/span>/
	end
	m
end
end
