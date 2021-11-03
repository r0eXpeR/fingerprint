Plugin.define do
name "Buddy-Zone"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Buddy Zone is a social network script which has all latest technologies needed to run a new version 2.0 Social Network Website."
website "http://www.vastal.com/buddy-zone-social-networking-script.html"
dorks [
'"Powered By Buddy Zone"'
]
matches [
    {:text=>'>Buddy Zone</a>'},
    {:text=>'Powered By <a href="http://www.vastal.com" class="bottom">Buddy Zone</a>'},
    {:text=>'Powered By <a href="http://www.vastal.com'}
]
end
