Plugin.define do
name "Passport"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin detects instances of Microsoft Live Passport servers using the MSNSERVER, X-MSNSERVER and PPServer HTTP headers."
passive do
	m=[]
	m << { :string=>@headers["ppserver"].to_s.scan(/H: ([\w\-\.]+) /).flatten } if @headers["ppserver"] =~ /H: ([\w\-\.]+) /
	m << { :string=>@headers["msnserver"].to_s.scan(/H: ([\w\-\.]+) /).flatten } if @headers["msnserver"] =~ /H: ([\w\-\.]+) /
	m << { :string=>@headers["x-msnserver"].to_s } unless @headers["x-msnserver"].nil?
	m
end
end
