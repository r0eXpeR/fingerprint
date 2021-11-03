Plugin.define do
name "6kbbs"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "6kbbs - Forum"
website "http://www.6kbbs.net/"
dorks [
'"Total" "query" "Time now is" "Powered by 6kbbs"'
]
matches [
    {:regexp=>/<meta name="copyright" content="2003-20[\d]{2} 6KBBS" \/>/},
    {:text=>'<meta name="author" content="www.6kbbs.com" />'},
    {:text=>'Powered by 6kbbs'},
    {:text=>'generator" content="6KBBS'},
    {:url=>'/bbs/pic/0.gif', :md5=>'cd2fde781b6275ed27ce06e646f1ccbd'},
    {:url=>'/bbs/pic/type0.gif', :md5=>'77eab484baae891d1124abc7ccd106e3'},
    {:version=>/<meta name="generator" content="6KBBS v([^"^>]+)" \/>/},
    {:version=>/Powered by <a href="http:\/\/www\.6kbbs\.com" target="_blank">6kbbs V([^<^\s]+)<\/a> &copy; 2003-20[\d]{2}/}
]
end
