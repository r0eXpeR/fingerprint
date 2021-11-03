Plugin.define do
name "?"
authors [
  "Brendan Coles",

]
description "In celebration of our 500th plugin - 2010-10-18"
version "1.0"
passive do
	m=[]
	m << { :version=>"When you look into an abyss, the abyss also looks into you."} if @base_uri.to_s =~ /^http:\/\/(www\.)?morningstarsecurity.com\/research\/whatweb/i
	m
end
end
