Plugin.define do
name "PowerDNS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PowerDNS is a high performance, non-BIND nameserver written in c++"
website "http://www.powerdns.com/"
passive do
	m=[]
	m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="PowerDNS"$/
	m
end
end
