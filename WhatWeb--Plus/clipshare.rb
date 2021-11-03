Plugin.define do
name "ClipShare"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "With a huge variety of features and options, at an extremely affordable price, ClipShare is the ultimate video script for starting your highly profitable video sharing community website just like the big boys: Youtube, DailyMotion, Metacafe, or Google Video."
website "http://www.clip-share.com/"
dorks [
'"powered by ClipShare"'
]
matches [
    {:text=>'<!--!!!!!!!!!!!!!!!!!!!!!!!! LIBRARY !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->'},
    {:text=>'<!--!!!!!!!!!!!!!!!!!!!!!!!!! Processing SCRIPT !!!!!!!!!!!!!!!!!!!-->'},
    {:text=>'<!--!!!!!!!!!!!!!!!!!!!!!!!!! Processing SCRIPT'},
    {:text=>'Powered By <a href="http://www.clip-share.com">ClipShare</a>'},
    {:text=>'Powered By <a href="http://www.clip-share.com'}
]
end
