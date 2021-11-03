Plugin.define do
name "Dreambox"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Dreambox is a series of Linux-powered DVB satellite, terrestrial and cable digital television receivers (set-top box), produced by German multimedia vendor Dream Multimedia. Enigma2 WebInterface - Control a DreamBox using a Browser. The Dreambox Webinterface (short WebIf) is included in all newer Images. - More info: http://en.wikipedia.org/wiki/Dreambox"
matches [
    {:regexp=>/^TwistedWeb/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'dreambox'},
    {:url=>"/web-data/img/favicon.ico", :md5=>"d9aa63661d742d5f7c7300d02ac18d69"},
    {:version=>/^Enigma2 WebInterface Server ([\d\.]+)$/, :search=>"headers[server]"},
    {:version=>/^TwistedWeb\/([\d\.]+)/, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["server"] =~ /^TwistedWeb/
		m << { :name=>"TwistedWeb server + WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^basic realm="Enigma2 WebInterface"$/
		m << { :name=>"TwistedWeb server + Title" } if @body =~ /<title>Dreambox WebControl<\/title>/
	end
	if @headers["server"] =~ /^Twisted\/[\d\.]+/ and @headers["www-authenticate"] =~ /^basic realm="(dm[\d]{4})"$/i
		m << { :model=>@headers["www-authenticate"].scan(/^basic realm="(dm[\d]{4})"$/i) }
	end
	m
end
end
