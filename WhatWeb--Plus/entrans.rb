Plugin.define do
name "Entrans"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Entrans is an online translation tool. The tool can be used by the online community to give suggestions for a list of English words/phrases that needs to be translated into a specific Indic Language."
website "http://entrans.sourceforge.net/"
dorks [
'"View All Strings" "The tool can be used by the online community"'
]
matches [
    {:certainty=>25, :text=>"<title>Entrans</title>"},
    {:text=>'<li ><a href="list.php?category=all&amp;page=1" >View All Strings</a> </li>'},
    {:text=>'Entrans'}
]
end
