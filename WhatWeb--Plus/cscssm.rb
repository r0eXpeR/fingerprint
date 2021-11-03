Plugin.define do
name "CSCSSM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "CSCSSM Proxy server"
passive do
	m=[]
	m << { :name=>"Proxy-Agent HTTP Header" } if @headers["proxy-agent"].to_s =~ /^[\s]*CSCSSM/
	m
end
matches [
    {:search=>"headers", :text=>'CSCSSM'}
]
end
