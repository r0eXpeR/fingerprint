Plugin.define do
name "Sun-Java-System-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Sun Java System Web/Proxy Server."
website "http://developers.sun.com/appserver/"
matches [
	{ :regexp=>/^[\s]*Sun[\-\ ]{1}Java[\-\ ]{1}System[\/\ ]{1}Application[\-\ ]{1}Server/, :search=>"headers[server]" },
	{ :version=>/^[\s]*Sun-Java-System-Web-[Proxy-]*Server\/([\d\.]+)/, :search=>"headers[proxy-agent]", :module=>"Proxy Server" },
	{ :version=>/^[\s]*Sun-Java-System-Web-Server\/([\d\.]+)/, :search=>"headers[server]", :module=>"Web Server" },
]
passive do
	m=[]
	if @headers["server"].to_s =~ /^[\s]*Sun[\-\ ]{1}Java[\-\ ]{1}System[\/\ ]{1}Application[\-\ ]{1}Server/
		if @headers["server"].to_s =~ /^[\s]*Sun[\-\ ]{1}Java[\-\ ]{1}System[\/\ ]{1}Application[\-\ ]{1}Server ([\d\._]+)/
			m << { :version=>@headers["server"].scan(/^[\s]*Sun[\-\ ]{1}Java[\-\ ]{1}System[\/\ ]{1}Application[\-\ ]{1}Server ([\d\._]+)/).flatten, :module=>"Application Server" }
		else
			m << { :name=>"HTTP server header", :module=>"Application Server" }
		end
	end
	m
end
end
