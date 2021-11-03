Plugin.define do
name "Nucleus"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nucleus Webserver"
passive do
	m=[]
	m << { :version=>@headers["server"].to_s.scan(/^[\s]*Nucleus\/([^\s^\r^\n]+)/i).flatten } if @headers["server"].to_s =~ /^[\s]*Nucleus\/([^\s^\r^\n]+)/i
	m
end
end
