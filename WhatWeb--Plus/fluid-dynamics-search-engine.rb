Plugin.define do
name "Fluid-Dynamics-Search-Engine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FDSE is an easy-to-install search engine for local and remote sites. It returns fast, accurate results from a template-driven architecture. Freeware and shareware versions are available with Perl source."
website "http://www.xav.com/scripts/search/"
dorks [
'"Powered by the Fluid Dynamics Search Engine"'
]
matches [
    {:text=>'content="fluid dynamics'},
    {:version=>/Powered by the <a href="http:\/\/www.xav.com\/scripts\/search\/"[^>]*>Fluid Dynamics Search Engine<\/a> v([\d\.]+) &copy; 20[\d]{2}/}
]
end
