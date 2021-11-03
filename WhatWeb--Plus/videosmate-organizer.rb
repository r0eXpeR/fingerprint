Plugin.define do
name "Videosmate-Organizer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Videosmate Organizer - Organize your favorite YouTube & Vimeo Videos on your own site in minutes. The script contains an API that can pull videos automatically from YouTube to your site based on the channel name or keywords that you enter. "
website "http://videosmate.com/"
dorks [
'"Powered by Videosmate Organizer Version" Login. Username: Password: Sign Up'
]
matches [
{ :text=>'</div> <!-- /content-in -->' },
{ :text=>'<!-- script Downloaded from http://videosmate.com -->' },
{ :string=>/<!--Copyright (20[\d]{2}),Videosmate Organizer[\s]+Downloaded from http:\/\/videosmate\.com/ },
{ :version=>/<!-- LICENSED Version  Videosmate ORGANIZER, Ver\.([^\s]+) -->/ },
{ :version=>/<a href=http:\/\/videosmate\.com><font color=#ffffff>Powered&nbsp;by&nbsp;Videosmate&nbsp;Organizer&nbsp;Version&nbsp;([^\s^&]+)&nbsp;Copyright&nbsp;&copy;&nbsp;(20[\d]{2})<\/a>/ },
{ :string=>/<a href=http:\/\/videosmate\.com><font color=#ffffff>Powered&nbsp;by&nbsp;Videosmate&nbsp;Organizer&nbsp;Version&nbsp;([^\s^&]+)&nbsp;Copyright&nbsp;&copy;&nbsp;(20[\d]{2})<\/a>/, :offset=>1 },
]
end
