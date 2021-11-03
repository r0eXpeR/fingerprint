Plugin.define do
name "Netjuke"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Netjuke is a Web-Based Audio Streaming Jukebox"
website "http://sourceforge.net/projects/netjuke"
dorks [
'inurl:"search.php?do=list.tracks"'
]
matches [
{ :text=>'<!-- Start Primary Header -->' },
{ :text=>'<!-- Begin Primary Footer -->' },
{ :text=>"onClick=\"window.open('alphabet.php?do=alpha.artists','NetjukeRemote'" },
]
end
