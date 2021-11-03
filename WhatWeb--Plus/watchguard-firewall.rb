Plugin.define do
name "WatchGuard-Firewall"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "WatchGuard Firewall - http://www.watchguard.com/products/edge-e/overview.asp"
passive do
	m = []
	m << { :name=>"HTTP Server Header" } if @headers["server"] =~ /^WatchGuard Firewall$/
	m << { :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~ /^(Basic|Digest) realm="WatchGuard (SOHO|Firebox)/i
	m << { :string=>@headers["www-authenticate"].scan(/^Digest realm="WatchGuard (SOHO [^"]+) Configuration"/) } if @headers["www-authenticate"] =~ /Digest realm="WatchGuard (SOHO [^"]+) Configuration"/
	m << { :string=>"Firebox" } if @headers["www-authenticate"] =~ /^Digest realm="WatchGuard Firebox Local User"/
	m
end
end
