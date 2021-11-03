Plugin.define do
name "FreePBX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FreePBX is an easy to use web based GUI (graphical user interface) that controls and manages Asterisk"
website "http://www.freepbx.org/"
passive do
	m=[]
	if @headers["www-authenticate"] =~ /FreePBX/
		m << { :name=>"WWW-Authenticate" } if @headers["www-authenticate"] =~ /^Basic realm="FreePBX( Admin| Administration)?"/
		m << { :name=>"WWW-Authenticate" } if @headers["www-authenticate"] =~ /^Digest realm="FreePBX"/
	end
	m
end
matches [
    {:search=>"headers", :text=>'FreePBX'}
]
end
