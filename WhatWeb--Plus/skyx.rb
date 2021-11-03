Plugin.define do
name "SkyX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Mentat SkyX series were designed for TCP acceleration/compression and high latency link optimization. Mentat was acquired by Packeteer in 2004. Packeteer was acquired by Blue Coat Systems in 2008 and the SkyX series was discontinued"
website "http://www.bluecoat.com/"
matches [
{ :text=>'<div id="skyx_status">SkyX status: enhancing</div>' },
{ :text=>'<script language="javascript" type="text/javascript" src="/skyxgui.js"></script>' },
{ :string=>/<div id="hostname"><a href="Misc">Hostname<\/a>: ([^\s^<]+)<\/div>/ },
{ :regxp=>/^SkyX /, :search=>"headers[server]" },
{ :version=>/^SkyX HTTPS ([^\s]+)$/, :search=>"headers[server]" },
]
passive do
	m=[]
	if @headers["server"] =~ /^SkyX /
		m << { :model=>@body.scan(/<div id="model">Model:([^<]+)<\/div>/) } if @body =~ /<div id="model">Model:([^<]+)<\/div>/
	end
	m
end
end
