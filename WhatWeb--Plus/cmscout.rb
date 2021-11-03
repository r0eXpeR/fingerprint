Plugin.define do
name "CMScout"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CMScout is a free and open-source CMS (Content management system) for Scouting related groups from around the world. A CMS is a piece of web software that makes it easy for you to install, and manage a website without needing to know any programming languages."
website "http://www.cmscout.co.za/"
dorks [
'"powered by CMScout"'
]
matches [
    {:regexp=>/Powered by CMScout &copy;[\d\,]+ <a href="http:\/\/www.cmscout.za.net" title="CMScout Group" target="_blank">CMScout Group<\/a>/},
    {:search=>"headers", :text=>'cmscout2='},
    {:text=>'<!--Shows the CMScout and website copyright information. Please do not remove this without permission from the CMScout admin-->'},
    {:text=>'Powered by CMScout'}
]
end
