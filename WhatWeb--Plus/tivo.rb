Plugin.define do
name "TiVo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "TiVo is a digital video recorder developed and marketed by TiVo, Inc."
website "http://www.tivo.com/"
dorks [
'intitle:"TiVo DVR" "Congratulations" "You\'ve successfully connected your TiVo"'
]
matches [
	{ :regexp=>/^tivo-httpd/, :search=>"headers[server]" },
	{ :version=>/^tivo-httpd-[\d]+:(.+)$/, :search=>"headers[server]" },
]
end
