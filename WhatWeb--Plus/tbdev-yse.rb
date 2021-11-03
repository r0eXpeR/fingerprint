Plugin.define do
name "TBDev-YSE"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TBDev Yuna Scatari Edition - Torrent tracker"
website "http://bit-torrent.kiev.ua/"
dorks [
'"Powered by TBDev v2.0 Yuna Scatari Edition"'
]
matches [
{ :text=>'<!-- /////// Top Navigation Menu for unregistered-->' },
{ :text=>'<!-- /////////// here we go, with the menu //////////// -->' },
{ :version=>/Powered by <a href="(http:\/\/)?(www\.tbdev\.net|bit-torrent\.kiev\.ua\/)" target="_blank" style="cursor: help;" title="[^"]*" class="copyright">TBDev<\/a> v([\d\.]+) /, :offset=>2 },
]
passive do
	m=[]
	m << { :name=>"X-Powered-By header" } if @headers["x-powered-by"] =~ /^TBDev Yuna Scatari Edition/
	m << { :name=>"X-Powered-By header" } if @headers["x-powered-by"] =~ /^TBDev YSE/
	m << { :name=>"X-Chocolate-to header" } if @headers["x-chocolate-to"] =~ /^ICQ 7282521$/
	m
end
end
