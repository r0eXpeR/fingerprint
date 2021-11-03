Plugin.define do
name "68-Classifieds-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "68 Classifieds Script - Requires PHP"
website "http://www.68classifieds.com/"
dorks [
'"powered by 68 Classifieds Script"'
]
matches [
    {:text=>'68 Classifieds'},
    {:text=>'Powered by <a href="http://www.68classifieds.com">68 Classifieds Script</a>'},
    {:text=>'powered by'},
    {:version=>/<meta name="author" content="68 Classifieds - v([^"]+)" \/>/}
]
end
