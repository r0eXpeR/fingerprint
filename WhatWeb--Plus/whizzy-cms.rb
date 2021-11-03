Plugin.define do
name "Whizzy-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Whizzy-CMS"
website "http://unverse.net/"
matches [
{ :version=>/Powered by Whizzy CMS <big>&spades;<\/big> <\/a><\/div><!-- \[Whizzy CMS:Whizzy CMS ([^\]]+)/ },
]
end
