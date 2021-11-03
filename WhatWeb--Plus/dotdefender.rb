Plugin.define do
name "dotDefender"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "dotDefender is the market-leading software Web Application Firewall (WAF). dotDefender boasts enterprise-class security, advanced integration capabilities, easy maintenance and low total cost of ownership (TCO)."
website "http://www.applicure.com/"
passive do
	m=[]
	m << { :string=>"Denied" } unless @headers["x-dotdefender-denied"].nil?
	m
end
matches [
    {:search=>"headers", :text=>'X-Dotdefender-Denied'}
]
end
