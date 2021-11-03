Plugin.define do
name "Zoom-Search-Engine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zoom is a software package that creates a search engine for your website, intranet, CD, or DVD"
website "http://www.wrensoft.com/zoom/"
dorks [
'inurl:zoom_per_page'
]
matches [
    {:text=>'<center><p><small>Search powered by <a href="http://www.wrensoft.com/zoom/" target="_blank"><b>Zoom Search Engine</b></a></small></p></center>'},
    {:text=>'name="zoom_query'},
    {:version=>/<!--Zoom Search Engine Version ([\d\.]+ \([\d]+\) [A-Z]{3})-->/},
    {:version=>/<!--Zoom Search Engine Version ([\d\.]+ \([\d]+\))-->/}
]
end
