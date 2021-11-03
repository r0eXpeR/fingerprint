Plugin.define do
name "Harris-NetVX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NetVX combines standards-compliant audio, video and data networking interfaces to integrate with any video plant"
website "http://www.broadcast.harris.com/productsandsolutions/NetworkingEncoding/NetVX/default.asp"
matches [
{ :text=>'<a href="" onclick=\'window.open("http://www.goahead.com")\' title="Powered by the GoAhead Web Server.">' },
]
passive do
	m=[]
	if @headers["server"] =~ /^GoAhead-Webs$/ and @body =~ /<title>([^\s]+) Control<\/title>/
		m << { :model=>@body.scan(/<title>([^\s]+) Control<\/title>/) }
	end
	m
end
end
