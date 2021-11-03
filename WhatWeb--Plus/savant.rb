Plugin.define do
name "Savant"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Savant is a freeware open source web server that runs on Windows 9x, ME, NT, 2000, and XP."
website "http://savant.sourceforge.net/"
passive do
	m=[]
	if @headers["server"] =~ /^Savant\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end
	m
end
end
