Plugin.define do
name "x-hacker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies the X-Hacker HTTP header and returns its value."
passive do
	m=[]
	m << { :string=>@headers["x-hacker"] } unless @headers["x-hacker"].nil?
	m
end
end
