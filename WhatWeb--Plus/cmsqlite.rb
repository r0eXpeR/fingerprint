Plugin.define do
name "CMSQLite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CMSQLite is a small, fast, flexible and complete Content-Management-System (CMS). "
website "http://cmsqlite.net/"
dorks [
'"powered by CMSQLite"'
]
matches [
    {:text=>'<div id="cmsqliteFooter"><span id="anchorFooter"><a href="http://www.cmsqlite.net" target="_blank">powered by CMSQLite</a></span></div></body></html>'},
    {:text=>'<meta name="generator" content="www.CMSQLite.net by www.Netzabdruck.de" />'},
    {:text=>'content="www.CMSQLite.net'},
    {:text=>'powered by CMSQLite'}
]
end
