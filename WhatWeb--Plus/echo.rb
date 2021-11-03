Plugin.define do
name "Echo"
authors [
  "Andrew Horton",

]
version "0.2"
description "CMS"
website "http://www.helloecho.com/"
dorks [
'"powered by echo"'
]
matches [
    {:regexp=>/<a href="http:\/\/www\.helloecho\.com\/go\/\?[^"]*" target="_blank">powered by echo<\/a>/},
    {:text=>'/Echo2/echoweb/login'},
    {:text=>'powered by echo'}
]
end
