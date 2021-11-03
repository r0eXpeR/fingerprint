Plugin.define do
name "XWiki"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "XWiki - Open Source Wiki and Content-Oriented Application Platform"
website "http://www.xwiki.org/"
dorks [
'"XWiki Enterprise * Documentation" inurl:"bin/view/Main"'
]
matches [
    {:regexp=>/<html[^>]data-xwiki-[^>]>/},
    {:search=>'body', :regexp=>/xwiki/},
    {:text=>'<div id="xwikilicence">'},
    {:text=>'<meta name="wiki" content="xwiki"/>'},
    {:version=>/<div id="xwikiplatformversion">(Powered by )?(XWiki Enterprise )?([^\s<>]+)/, :offset=>2 }
]
end
