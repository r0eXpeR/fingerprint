Plugin.define do
name "X7-Chat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "X7 Chat is a free script that can be modified and redistributed in any way that you want as long as the X7 Chat copyright logo remains in place."
website "http://x7chat.com/"
dorks [
'inurl:x7chat "Please enter your username and password to login"'
]
matches [
{ :certainty=>75, :ghdb=>'inurl:x7chat "Please enter your username and password to login"' },
{ :version=>/Powered By <a href="http:\/\/www.x7chat.com\/" target="_blank">X7 Chat<\/a> ([\d\.A-Z]+)[\s]*[^&]*&copy; 2004 By The <a href="http:\/\/www.x7chat.com\/" target="_blank">X7 Group<\/a>/ },
{ :version=>/<Br><font size="2">Powered By X7 Chat Version ([^<]+)<\/font>/ },
]
end
