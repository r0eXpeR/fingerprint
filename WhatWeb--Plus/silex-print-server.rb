Plugin.define do
name "Silex-Print-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Silex Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://www.silexamerica.com/"
dorks [
'"System Description:" "silex SX-500"'
]
matches [
{ :url=>"/troy_large_bw.gif", :md5=>"ba4feb9ffb5d77f9c72269549d07b78e" },
{ :url=>"/silex_logo.gif", :md5=>"ba4feb9ffb5d77f9c72269549d07b78e" },
]
passive do
	m=[]
	if @headers["server"] =~ /^silex Web Admin$/
		m << { :name=>"HTTP Server Header" }
		m << { :string=>@body.scan(/<TITLE>([^<]{5,20})<\/TITLE>/) } if @body =~ /<TITLE>([^<]{5,20})<\/TITLE>/
		m << { :model=>@body.scan(/<TITLE>[S|s]ilex ([^\s^<]{5,10})<\/TITLE>/), } if @body =~ /<TITLE>[S|s]ilex ([^\s^<]{5,10})<\/TITLE>/
	end
	m
end
end
