Plugin.define do
name "xGB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "xGB guestbook"
website "http://www.x-gfx.de/"
dorks [
'allinurl:"xGb.php"'
]
matches [
{ :text=>'	<title>xGB</title>' },
{ :text=>'<!-- start xGB dynamic content -->' },
{ :text=>"powered by <a href='http://www.x-gfx.de' target='blank' title='Script by x-gfx.de'>xGB" },
{ :version=>/<p align='center'><span id='copyright'>\[ powered by <a href='http:\/\/www.x-gfx.de' target='blank' title='Script by x-gfx.de'>xGB ([\d\.]+)<\/a>/ },
]
end
