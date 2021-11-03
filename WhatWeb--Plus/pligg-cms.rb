Plugin.define do
name "Pligg-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pligg is an open source CMS (Content Management System) that you can download and use for free."
website "http://www.pligg.com/"
dorks [
'"Powered By Pligg CMS"'
]
matches [
{ :regexp=>/Powered [Bb]y:? <a href="http:\/\/www.pligg.com\/?"( target="_blank")?>(Powered By )?Pligg( CMS)?<\/a>/ },
{ :text=>"jQuery.jTwitter('pligg', function (userdata) {" },
{ :md5=>"7c548077f2a8cc6099858eb1bf9201b4", :url=>"/favicon.ico" },
]
end
