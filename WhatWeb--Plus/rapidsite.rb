Plugin.define do
name "RapidSite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "RapidSite is the world's largest and most experienced Web hosting entity."
website "http://www.rapidsite.net/"
matches [
	{ :regexp=>/^Rapidsite/, :search=>"headers[server]" },
]
passive do
	m=[]
	if @headers["server"] =~ /^Rapidsite\/Apa\/([\d\.]+)/
		m << { :string=>"Apache/"+@headers["server"].scan(/Rapidsite\/Apa\/([\d\.]+)/).flatten }
	elsif @headers["server"] =~ /^Rapidsite\/Apa$/
		m << { :string=>"Apache" }
	end
	m
end
end
