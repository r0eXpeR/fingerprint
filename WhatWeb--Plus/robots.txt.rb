Plugin.define do
name "robots_txt"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "This plugin identifies robots.txt files and extracts both allowed and disallowed directories. - More Info: http://www.robotstxt.org/"
passive do
	m=[]
	if @base_uri.path == "/robots.txt" and @body =~ /^User-agent:/i
		m << { :name=>"File Exists" }
		if @body =~ /^Disallow:[\s]*(.+)$/i
			m << { :string=>@body.scan(/^Disallow:[\s]*(.+)/i) }
		end
		if @body =~ /^Allow:[\s]*(.+)$/i
			m << { :string=>@body.scan(/^Allow:[\s]*(.+)/i) }
		end
	end
	m
end
end
