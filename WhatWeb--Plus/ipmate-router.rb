Plugin.define do
name "IPMATE-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IPMATE router [Japanese] - http://www.ntt-east.co.jp/"
matches [
{ :text=>'<TITLE>Welcome to IPMATE</TITLE>' },
{ :url=>"/images/ipmate_logo.gif", :md5=>"8d16375ac9c6c0fc1c27c0183dfda573" },
]
passive do
	m=[]
	m << { :model=>"1300RD" } if @headers["server"] =~ /^IPMATE 1300RD$/
	m
end
end
