Plugin.define do
name "Webbler"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Webbler is a powerful tool to build new websites or add additional areas or functionality to your existing website. It is a Content Management System (CMS) and an Application Toolkit that we customise to suit your needs."
website "http://www.tincan.co.uk/Webbler"
dorks [
'"Powered by the Webbler"'
]
matches [
{ :version=>/<meta name="generator" content="webbler ([^\s]+) - http:\/\/tincan\.co\.uk\/webbler"  \/?>/ },
]
passive do
	m=[]
	m << { :name=>"WebblerSession Cookie" } if @headers["set-cookie"] =~ /WebblerSession=/
	m
end
end
