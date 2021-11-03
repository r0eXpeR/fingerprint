Plugin.define do
name "WikidForum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WikidForum is an open source free forum software combined with a Wiki which allows users to convert forum discussions into valuable Wiki articles."
website "http://www.wikidforum.com/"
dorks [
'intitle:"WikidForum Community Edition" intitle:"Installer"',
'"powered by WikidForum"'
]
matches [
{ :text=>'Powered by <a href="http://www.wikidforum.com" title="wikidforum.com">WikidForum</a>' },
]
end
