Plugin.define do
name "bSpeak"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "bSpeak is 26th Avenue's threaded message board application. It is full-featured and fast, allowing you to create a community, provide online support, or provide announcements for your website."
website "http://www.bspeak.com/"
dorks [
'"powered by bSpeak"'
]
matches [
	{ :text=>' - powered by bSpeak</TITLE>' },
	{ :version=>/<br><div align="center"><span class="tinytext">Powered by <\/span><a href="http:\/\/www.bspeak.com" class="tinylink" target="bspeak_window">bSpeak ([\d\.]+)<\/a><\/div>/ },
]
end
