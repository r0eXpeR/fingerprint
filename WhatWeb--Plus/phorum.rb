Plugin.define do
name "Phorum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Phorum - Forum - Requires PHP and MySQL"
website "http://www.phorum.org/"
dorks [
'"This forum is powered by Phorum."'
]
matches [
{ :regexp=>/powered by <a href="http:\/\/www\.phorum\.org\/"( target="_blank")?>Phorum<\/a>\./ },
{ :certainty=>75, :text=>'<!-- end of div id=user-info -->' },
]
end
