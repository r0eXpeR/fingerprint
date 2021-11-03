Plugin.define do
name "Newscoop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open content management system for professional journalists & online newspapers."
website "http://www.sourcefabric.org/en/newscoop/"
dorks [
'intitle:"Login" inurl:admin "Newscoop" "the open content management system for professional journalists."'
]
matches [
{ :version=>/<a href="http:\/\/newscoop\.sourcefabric\.org\/" target="_blank">\s+Newscoop<\/a>&nbsp;([\d\.]+)[^,]*,\s+the open content management system for professional journalists\./ },
{ :text=>'Powered by Newscoop, the open content management system for professional journalists.<br />' },
{ :text=>'Powered by <a href="http://newscoop.sourcefabric.org/" target="_blank">Newscoop</a>, the open content management system for professional journalists.' },
{ :text=>'<meta name="generator" content="Newscoop" />' },
]
end
