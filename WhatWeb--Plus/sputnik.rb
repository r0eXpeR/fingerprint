Plugin.define do
name "Sputnik"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sputnik - An Extensible Wiki Engine in Lua - Sputnik is a content management system designed for extensibility. It works as a wiki out of the box, but can be extended into other things."
website "http://sputnik.freewisdom.org/"
dorks [
'"Powered by Sputnik"'
]
matches [
{ :text=>"Powered by <a href='http://sputnik.freewisdom.org/'>Sputnik</a>" },
{ :text=>"Powered by <a href='http://spu.tnik.org/'>Sputnik</a>" },
]
passive do
	m=[]
	m << { :name=>"Sputnik Cookie" } if @headers["set-cookie"] =~ /^Sputnik_[a-z\d]{32}=/
	m
end
end
