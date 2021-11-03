Plugin.define do
name "webSPELL"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "webSPELL is a free Content Management System which was especially developed for the needs of esport related communities."
website "http://www.webspell.org/"
dorks [
'"this site is using the webspell script version" -dork'
]
matches [
{ :text=>'<meta name="generator" content="webSPELL" />' },
{ :version=>/This site is using the <a href="http:\/\/www.webspell.org" target="[^"]+">webSPELL (Free Content Management System|script) \(version: ([^\)]+)\)[\s]*<\/a>/, :offset=>1 },
{ :version=>/Diese Seite benutzt das <a href="http:\/\/www.webspell.org" target="[^"]+">webSPELL Script \(Version: ([^\)]+)\)[\s]*<\/a>/ },
{ :certainty=>75, :search=>"headers[set-cookie]", :regexp=>/ws_session=[a-z\d]+;/ },
]
end
