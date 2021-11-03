Plugin.define do
name "OpenLabyrinth"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenLabyrinth is a web application for authoring and delivering virtual patient and other decision path and maze-like activities. It is written in ASP/VBScript and requires an ODBC SQL database."
website "http://sourceforge.net/projects/openlabyrinth/"
dorks [
'inurl:mstartnode.asp?mapid='
]
matches [
{ :text=>'/images/openlabyrinth-logo.jpg" alt="Labyrinth Identity" border="0" width="150" height="150"></a>' },
]
passive do
	m=[]
	if @body =~ /^<form method="post" action="logpass\.asp">$/
		m << { :certainty=>25, :name=>"Form Tag" }
		if @body =~ /<h5><font color="#000000">v([^\s^<]+)</
			m << { :version=>"#{$1}" }
		end
	end
	m
end
end
