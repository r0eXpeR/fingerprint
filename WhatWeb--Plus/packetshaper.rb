Plugin.define do
name "PacketShaper"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Blue Coat PacketShaper provides application performance monitoring for an accurate picture of network traffic and ensures business-critical applications have the resources they need to operate effectively"
website "http://www.bluecoat.com/products/packetshaper"
dorks [
'(intitle:"PacketShaper Login")|(intitle:"PacketShaper Customer Login") -intitle'
]
matches [
{ :text=>'<title>PacketShaper Customer Login</title>' },
{ :text=>'<SCRIPT LANGUAGE=JavaScript SRC="/libmd5.js"></SCRIPT>' },
]
passive do
	m=[]
	if @headers['set-cookie'] =~ /^PScfgstr=/
		m << { :name=>"PScfgstr cookie" }
		m << { :model=>@body.scan(/desc \+= '<FONT SIZE=\+2><I>PacketShaper ([\d\.]+)<\/I><\/FONT>';/) } if @body =~ /desc \+= '<FONT SIZE=\+2><I>PacketShaper ([\d\.]+)<\/I><\/FONT>';/
	end
	m
end
end
