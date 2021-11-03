Plugin.define do
name "ANECMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "ANECMS"
website "http://anecms.com/"
dorks [
'"powered by anecms"'
]
matches [
    {:ghdb=>'"powered by anecms"', :certainty=>75},
    {:regexp=>/&copy; [\d]{4} <strong><a href="http:\/\/anecms.com[^\>]*>anecms.com<\/a><\/strong>/},
    {:regexp=>/<title>[^<^\-]+- Powered By ANECMS<\/title>/},
    {:text=>'<meta name="Author" content="Erwin Aligam - ealigam@gmail.com" />'},
    {:text=>'content="Erwin Aligam - ealigam@gmail.com'}
]
end
