Plugin.define do
name "XOOPS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eXtensible Object Oriented Portal System (XOOPS) open source CMS and portal system"
website "http://www.xoops.org/"
dorks [
'"Powered by XOOPS"'
]
matches [
    {:certainty=>75, :text=>'<!-- RMV: added module header -->'},
    {:regexp=>/Powered by XOOPS [^\s]+ 2001-20[\d]{2} <a href="http:\/\/(xoops\.sourceforge\.net|www\.xoops\.org\/)"/},
    {:regexp=>/XOOPS/, :search=>'body'},
    {:text=>'<meta name="author" content="XOOPS" />'},
    {:text=>'<meta name="generator" content="XOOPS" />'},
    {:text=>'include/xoops.js'},
    {:version=>/Powered by XOOPS ([^\s]+) [^\s]+ 2001-20[\d]{2} <a href="http:\/\/(xoops\.sourceforge\.net|www\.xoops\.org\/)"/}
]
end
