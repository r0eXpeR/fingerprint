Plugin.define do
name "Viscacha"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Viscacha is a free bulletin board system with an integrated content management system."
website "http://www.viscacha.org/"
dorks [
'"powered by Viscacha" "The Viscacha Project" inurl:register.php'
]
matches [
{ :text=>'<meta name="generator" content="Viscacha (http://www.viscacha.org)" />' },
{ :text=>'<link rel="copyright" href="http://www.viscacha.org" />', :certainty=>75 },
{ :version=>/Powered by <strong><a[^>]+href="http:\/\/www\.viscacha\.org" target="_blank">Viscacha ([^<]+)<\/a>/ },
]
end
