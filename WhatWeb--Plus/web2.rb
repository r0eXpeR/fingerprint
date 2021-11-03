Plugin.define do
name "Web2"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "A nice web server, easy to setup! lots of features including cgi, ssi, aliasing, virtual domains and more! - Homepage : Way Back Machine [2005-04-01] - http://web.archive.org/web/20050401233601/http://dink.org/"
matches [
	{ :os=>"Mac OS/2", :regexp=>/^Web\/2 /, :search=>"headers[server]" },
	{ :os=>"Mac OS/2", :version=>/^Web\/2 v([^\r^\n]+)$/, :search=>"headers[server]" },
]
end
