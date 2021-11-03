Plugin.define do
name "Coppermine"
authors [
  "Andrew Horton",

]
version "0.4"
description "Open-source Photo Gallery powered by PHP & MySQL"
website "http://www.coppermine-gallery.net/"
matches [
    {:name=>"displayimage.php url",
	:certainty=>50,
	:regexp=>/<a href="[^"]*\/displayimage.php\?album=[a-z0-9]+&pos=">/},
    {:name=>"powered by link",
	:regexp=>/Powered by <a href="http:\/\/(coppermine-gallery.net|coppermine.sf.net|coppermine.sourceforge.net)\/" [^>]+>Coppermine Photo Gallery<\/a>/},
    {:regexp=>/<!--Coppermine Photo Gallery ([\d.]+)/,:offset=>1},
    {:regexp=>/<!--Coppermine Photo Gallery ([\d\.]+)[^>]+-->/},
    {:regexp=>/Coppermine version: ([0-9\.]+)[ \n]*\$Revision/},
    {:text=>"<!-- BEGIN album_list -->"},
    {:text=>"<title>Coppermine Photo Gallery - Home</title>"},
    {:text=>'<!--Coppermine Photo Gallery'},
    {:version=>/<!--Coppermine Photo Gallery ([\d\.]+[^>]+)-->/,  :name=>"<!--Coppermine Photo Gallery"}
]
end
