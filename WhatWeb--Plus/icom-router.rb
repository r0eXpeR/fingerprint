Plugin.define do
name "ICOM-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ICOM Router [Japanese]"
website "http://www.icom.co.jp/"
passive do
	m=[]
	if @headers["server"] =~ /^Icom HTTP Server\/([^\s]+)$/
		m << { :version=>"#{$1}" }
		if @headers["www-authenticate"] =~ /Basic realm="([^\s^"]+)"/
			m << { :model=>"#{$1}" }
		end
	end
	m
end
matches [
    {:search=>"headers", :text=>'Icom HTTP Server'}
]
end
