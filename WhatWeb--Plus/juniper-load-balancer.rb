Plugin.define do
name "Juniper-Load-Balancer"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Juniper Networks Application Acceleration and Load Balancing Platforms"
website "http://juniper.net/ - Note: This will slow down your web app pentest scanning. Use only manual fuzzing with time throttling."
passive do
	m=[]
	m << {:name=>"cookie (rl-sticky-key)" } if @headers["set-cookie"] =~ /rl\-sticky\-key/i
	if @headers["via"] =~ /Juniper Networks Application Acceleration Platform/i
		m << {:name=>"via header" }
		if @headers['via'] =~ /Juniper Networks Application Acceleration Platform \- ([^<^\)]+)/i
			m << { :version=>@headers['via'].scan(/Juniper Networks Application Acceleration Platform \- ([^<^\)]+)/i) }
		end
	end    
	m
end
matches [
    {:search=>"headers", :text=>'Juniper Networks Application Acceleration Platform'},
    {:search=>"headers", :text=>'rl-sticky-key'}
]
end
