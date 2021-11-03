Plugin.define do
name "Internet-Rimon-Filter"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Internet Rimon (Israeli ISP) server based filtering server"
website "http://internet-rimon.com/"
passive do
	m=[]
	m << { :string=>@headers["rimon"].to_s } unless @headers["rimon"].nil?
	m
end
matches [
    {:search=>"headers", :text=>'rimon'}
]
end
