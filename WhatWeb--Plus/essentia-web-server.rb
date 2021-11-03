Plugin.define do
name "Essentia-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Essentia Web Server - High performance HTTP/1.1 compliant multi-threaded server."
passive do
	m=[]
	if @headers["server"] =~ /^Essentia\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end
	m
end
end
