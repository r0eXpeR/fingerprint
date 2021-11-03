Plugin.define do
name "I-O-DATA-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "I-O DATA router [Japanese] - http://www.iodata.jp/product/"
dorks [
'intitle:"I-O DATA Wireless Broadband Router"'
]
matches [
    {:text=>'I-O DATA Wireless Broadband Router'},
    {:url=>"/", :model=>/<title>I-O DATA Wireless Broadband Router (WN-[^\s^<]+)<\/title>/}
]
passive do
	m=[]
	if @headers["server"] =~ /^Linux, HTTP\/1\.1, (WN-[^\s]+) Ver ([^\s]+)$/
		m << { :model  =>"#{$1}" }
		m << { :version=>"#{$2}" }
	end
	m
end
end
