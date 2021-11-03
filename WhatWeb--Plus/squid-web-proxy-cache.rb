Plugin.define do
name "Squid-Web-Proxy-Cache"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages."
website "http://www.squid-cache.org/"
passive do
	m=[]
	m << { :name=>"x-squid-error", :certainty=>25 } unless @headers["x-squid-error"].nil?
	m << { :version=>@headers["server"].to_s.scan(/[\s]*Squid\/([^\r^\n]+)/i).flatten } if @headers["server"] =~ /[\s]*Squid\/([^\r^\n]+)/i
	m
end
end
