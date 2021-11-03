Plugin.define do
name "Proxy-Agent"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the proxy agent from the HTTP header."
passive do
	m=[]
	m << { :string=>@headers["proxy-agent"].to_s } unless @headers["proxy-agent"].nil?
	m
end
end
