Plugin.define do
name "IWSS-Proxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Trend Micro InterScan Web Security Suite (IWSS) Proxy server"
website "http://us.trendmicro.com/us/products/enterprise/interscan-web-security-suite/"
passive do
	m=[]
	m << { :name=>"Proxy-Agent HTTP Header" } if @headers["proxy-agent"].to_s =~ /^[\s]*IWSS/
	m
end
end
