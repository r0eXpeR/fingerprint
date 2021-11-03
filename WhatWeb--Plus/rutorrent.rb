Plugin.define do
name "ruTorrent"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ruTorrent is a front-end for the popular Bittorrent client rTorrent."
website "http://code.google.com/p/rutorrent/"
passive do
	m=[]
	m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="My ruTorrent web site"$/
	m
end
end
