Plugin.define do
name "X-Vortech-PHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "X-Vortech-PHP HTTP header."
passive do
	m=[]
	m << { :version=>@headers["x-vortech-php"].to_s } unless @headers["x-vortech-php"].nil?
	m
end
end
