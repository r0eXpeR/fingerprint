Plugin.define do
name "gCards"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "gCards is a free PHP-based eCard system that is easy to setup and use. gCards simple Administration Console allows the administrator to upload images (JPEGs of GIFs), add eCard categories, and modify existing settings - Note: This project is dormant - no further updates will be done"
website "http://www.gregphoto.net/gcards/index.php"
dorks [
'"powered by gcards"',
'intitle:"eCards Administration Console Login" inurl:login.php'
]
matches [
    {:certainty=>75, :text=>'<a href="compose.php?imageid='},
    {:text=>"<title>eCards Administration Console Login</title>"},
    {:text=>'<a href="http://www.gregphoto.net/gcards/index.php'},
    {:version=>/<td>(Driftet av|Powered by|Un script de ) <a href="http:\/\/www.gregphoto.net\/gcards\/index.php"[^>]*>gCards<\/a> v([\d\.]+)<\/td>/, :offset=>1 }
]
end
