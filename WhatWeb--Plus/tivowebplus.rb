Plugin.define do
name "TivoWebPlus"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "TivoWebPlus is a web server that runs on your TiVo PVR. It is written in TCL, and has the ability to browse the channel guide, perform searches, and schedule and delete recordings."
website "http://sourceforge.net/projects/tivowebplus/"
matches [
	{ :regexp=>/TivoWebPlus/, :search=>"headers[www-authenticate]" },
	{ :version=>/^Basic realm=['"]TivoWebPlus - v([^'^"]+)['"]$/, :search=>"headers[www-authenticate]" },
]
end
