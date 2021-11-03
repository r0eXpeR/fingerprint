Plugin.define do
name "WebIIS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebIIS - Mini ASP Web Server [Chinese]"
passive do
	m=[]
	m << { :string=>"ASP" } if @headers["webiis"] =~ /^Mini ASP Web WebIIS$/
	m
end
end
