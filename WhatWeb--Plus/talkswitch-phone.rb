Plugin.define do
name "TalkSwitch-Phone"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "TalkSwitch designs and builds telephone systems for small and multi-location businesses. The company's Private branch exchange (PBX) and hybrid IP-PBX products enable communication over telephone and Voice over IP (VoIP) networks."
website "http://www.talkswitch.com/"
dorks [
'intitle:TalkSwitch "Welcome to TalkSwitch" "More information about TalkSwitch can be found on the TalkSwitch home page"'
]
matches [
	{ :regexp=>/^TalkSwitch/, :search=>"headers[server]" },
	{ :version=>/^TalkSwitch HTTP Server\/([\d\.]+)$/, :search=>"headers[server]" },
	{ :regexp=>/^Digest realm="Your TalkSwitch System"$/, :search=>"headers[www-authenticate]", :name=>"WWW-Authenticate realm" },
]
passive do
	m=[]
	if @headers["server"] =~ /^TalkSwitch HTTP Server\/([\d\.]+)$/
		m << { :model=>@body.scan(/<h3>Welcome to TalkSwitch ([^<]+) \([^\)]+\)<\/h3>/) } if @body =~ /<h3>Welcome to TalkSwitch ([^<]+) \([^\)]+\)<\/h3>/
		m << { :firmware=>@body.scan(/<p> Firmware version: ([\d\.]+)<\/p>/) } if @body =~ /<p> Firmware version: ([\d\.]+)<\/p>/
	end
	m
end
end
