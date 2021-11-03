Plugin.define do
name "phpMumbleAdmin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Php Mumble Admin is an administration panel control for murmur 1.2.0 and higher. It's communicate over ICE and It's designed for multiple servers."
website "http://phpmumbleadmin.sourceforge.net/"
passive do
	m=[]
	m << { :name=>"phpMumbleADMIN_session Cookie" } if @headers["set-cookie"] =~ /^phpMumbleADMIN_session=/
	m
end
end
