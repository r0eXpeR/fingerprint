Plugin.define do
name "boastMachine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "boastMachine blog"
website "http://boastology.com/"
dorks [
'"powered by boastMachine" "Recent posts" -exploit'
]
matches [
    {:ghdb=>'"powered by boastMachine" +"Recent posts"', :certainty=>75},
    {:regexp=>/<a href="http:\/\/boastology.com"><img src="http:\/\/[^>]*alt="Powered by boastMachine" \/><\/a>/},
    {:text=>'Powered by <a href="http://boastology.com'},
    {:text=>'powered by boastMachine'},
    {:version=>/Powered by <a href="http:\/\/boastology.com">boastMachine v([\d\.]+)<\/a>/}
]
end
