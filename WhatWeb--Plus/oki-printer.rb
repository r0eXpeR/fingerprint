Plugin.define do
name "OKI-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "OKI printer"
website "http://www.okiprintingsolutions.com/"
matches [
	{ :regexp=>/^OKIDATA-HTTPD/, :search=>"headers[server]" },
	{ :version=>/^OKIDATA-HTTPD\/([^\s]+)$/, :search=>"headers[server]" },
]
passive do
	m=[]
	if @headers["server"] =~ /^OKIDATA-HTTPD\/([^\s]+)$/
		m << { :model=>@body.scan(/<title>([^<]+)<\/title>/) } if @body =~ /<title>([^<]+)<\/title>/
	end
	m
end
end
