Plugin.define do
name "Perlfect-Search"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Perlfect Search is a free, sophisticated, powerful, versatile, customizable and effective site indexing/searching suite available under an open source license (GPL). It comes as a pair of distinct scripts. The indexer, that automatically scans and indexes a web site, and the search engine"
website "http://www.perlfect.com/freescripts/search/"
dorks [
'"powered by Perlfect Search"'
]
matches [
	{ :text=>"<!-- the following meta tag is important to avoid cross site scripting attacks: -->" },
	{ :version=>/Powered by <a href="http:\/\/perlfect.com\/freescripts\/search\/">Perlfect Search ([a-z\.\d]+)<\/a>/ },
	{ :version=>/<a href="http:\/\/perlfect.com\/freescripts\/search\/">Perlfect Search ([a-z\.\d]+) \(c\) Perlfect Solutions 1998-[\d]{4}<\/a>/i },
]
end
