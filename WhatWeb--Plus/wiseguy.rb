Plugin.define do
name "Wiseguy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Wiseguy is a WSGI compliant FastCGI server built on top of python-fastcgi and the Open Market FCGI library. It contains a few patches to deal with various bad behaviors under high load."
website "https://code.google.com/p/msolo/wiki/wiseguy"
passive do
	m=[]
	if @headers["server"] =~ /^wiseguy\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end
	m
end
end
