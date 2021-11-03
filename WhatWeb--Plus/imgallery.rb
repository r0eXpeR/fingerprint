Plugin.define do
name "IMGallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "image gallery web app"
website "http://www.imgallery.zor.pl"
dorks [
'"Powered by IMGallery -exploit"'
]
matches [
    {:name=>'GHDB: "Powered by IMGallery -exploit"',
:certainty=>75,
:ghdb=>'"Powered by IMGallery" -exploit'},
    {:name=>'powered by text',
:text=>'Powered by <a class = "a07" href="http://www.imgallery.zor.pl"><b>IMGallery</b></a> &copy; Dariusz Niemiec'},
    {:text=>'href="http://www.imgallery.zor.pl"><b>IMGallery'}
]
end
