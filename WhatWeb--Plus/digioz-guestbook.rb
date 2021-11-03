Plugin.define do
name "DigiOz-Guestbook"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DigiOz Guestbook"
website "http://www.digioz.com/"
dorks [
'intitle:"powered by DigiOz Guestbook version"'
]
matches [
{ :text=>'<!-- NOTE: PLEASE DO NOT REMOVE THE BELLOW 3 LINES FROM YOUR HEADER FILE -->' },
{ :text=>'<!-- NOTE: PLEASE DO NOT REMOVE THE ABOVE 3 LINES FROM YOUR HEADER FILE -->' },
{ :version=>/<title>Powered by DigiOz Guestbook Version ([\d\.]+)<\/title>/ },
{ :version=>/<a href="http:\/\/www\.digioz\.com"[^>]*>DigiOz (\.NET )?Guestbook Version ([\d\.]+)<br( \/)?>&copy; 20[\d]{2} DigiOz Multimedia\./, :offset=>1 },
]
end
