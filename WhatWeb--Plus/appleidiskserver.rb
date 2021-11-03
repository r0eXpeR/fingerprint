Plugin.define do
name "AppleIDiskServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "With MobileMe iDisk, it.s easy to store, access, and share files online. You have plenty of storage space . even large files are no problem. Just add the files you need to your iDisk, and whatever you upload will be there for you to download using a web browser on any computer or using the iDisk app for iPhone, iPad, or iPod touch."
website "http://www.apple.com/mobileme/features/idisk.html"
matches [
	{ :regexp=>/^AppleIDiskServer/, :search=>"headers[server]" },
	{ :version=>/^AppleIDiskServer[\.|-][A-Z\d]+$/, :search=>"headers[server]" },
]
passive do
	m=[]
	if @headers["server"] =~ /^AppleIDiskServer[\.|-][A-Z\d]+$/
		m << { :name=>"WWW Authenticate" } if @headers["www-authenticate"] =~ /Basic realm="me\.com"/
		m << { :account=>@headers["x-dmuser"] } unless @headers["x-dmuser"].nil?
	end
	m
end
end
