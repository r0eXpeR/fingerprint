Plugin.define do
name "BM-Classifieds"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A complete classifieds site ready to run in 15 minutes."
website "http://www.bmscripts.com/"
dorks [
'"powered by BM Classifieds"'
]
matches [
    {:text=>"	<p class='credits'><a href='http://www.bmscripts.com'>Powered by BM Classifieds</a><br /></p>"},
    {:text=>"	<p class='credits'>Powered by BM Classifieds<br /></p>"},
    {:text=>'		<!-- START HEADER TABLE - HOLDS GRAPHIC AND SITE NAME -->'},
    {:text=>'		<!-- START MAIN TABLE - HOLDS CATEGORIES, MENU, ETC. -->'},
    {:text=>'<!-- // All source code on this site © 2007 BM Scripts unless otherwise noted - All Rights Reserved // -->'},
    {:text=>'<!-- // All source code on this site © 2007 BM Scripts unless otherwise stated - All Rights Reserved // -->'},
    {:text=>'<!-- START HEADER TABLE - HOLDS GRAPHIC AND SITE NAME -->'}
]
end
