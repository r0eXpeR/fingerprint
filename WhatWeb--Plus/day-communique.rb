Plugin.define do
name "Day-Communique"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Day Communique (CQ5) WCM is a web content management system based on CRX for the content repository and Apache Sling as a web framework. Day Content Repository Extreme (Day CRX) is a content repository that implements the content repository API for Java (JSR-170). It is based on the open source reference implementation Apache Jackrabbit and serves as the foundation of all other products by Day Software."
website "http://www.day.com/"
matches [
	{ :search=>"headers[server]", :regexp=>/^Communique/ },
	{ :search=>"headers[server]", :version=>/Communique\/([^\s]+ \([^\)]+\))/ },
	{ :search=>"headers[server]", :version=>/Communique\/([^\s]+)/ },
]
end
