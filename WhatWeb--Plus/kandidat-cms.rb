Plugin.define do
name "Kandidat-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kandidat-CMS [Russian] - Homepage http://www.kan-studio.ru/"
dorks [
'"Powered by Kandidat CMS"'
]
matches [
    {:regexp=>/Powered by[\ ]?[:]? <a href="http:\/\/www.kan-studio.ru[\/]?">Kandidat CMS<\/a>/},
    {:text=>'content="Kandidat-CMS'}
]
end
