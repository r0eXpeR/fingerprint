Plugin.define do
name "Musicbox"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Musicbox is a web application for managing a songs database."
website "http://www.musicboxv2.com/"
dorks [
'inurl:genre_artists.php'
]
matches [
{ :text=>'<!-- THE FOLLOWING IS NEEDED FOR THE AUTO-COMPLETE SEARCH BOX -->' },
{ :text=>'<link rel="stylesheet" href="template/musicboxv2.css" type="text/css">' },
{ :text=>'<!-- Please dont edit this unless you are advanced coder -->' },
{ :version=>/<tr><td align="center"> <a href="http:\/\/www\.musicboxv2\.com" target="_blank">Musicbox<\/a> Version ([^\s]+)&copy; 20[\d]{2}/ },
{ :text=>"<tr><td align='left'><a href='../userinfo.php?user=admin' target='_blank'>My Account</a></td>" },
{ :version=>/<div id='logomain'><div id='logotopmain'><div style='font-weight:bold;font-size:12px;color:#000;padding-top:14px;padding-left:4px'>Welcome to Musicbox Version ([^\s]+) Administration Control Panel<\/div>/ },
{ :version=>/<div id='tdrow5' align=center><br>Musicbox Version ([^\s]+) @ 20[\d]{2} - <a href="http:\/\/www\.MusicboxV2\.com">MusicboxV2\.com<\/a> - Shalwan Entperises<\/div><br><br>/ },
]
end
