Plugin.define do
name "Apache-Traffic-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Apache Traffic Server is a fast, scalable and extensible HTTP/1.1 compliant caching proxy server."
website "http://trafficserver.apache.org/"
passive do
	m=[]
	if @headers["server"] =~ /^ATS\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end
	if @headers["via"] =~ /^(http|HTTP)\/1\.1 ([^\s]+) \(ApacheTrafficServer\/([^\s]+) \[c s f \]\)$/
		m << { :string =>"#{$2}" }
		m << { :version=>"#{$3}" }
	end
	m
end
matches [
    {:search=>"headers", :text=>'ApacheTrafficServer'}
]
end
