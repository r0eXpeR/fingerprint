Plugin.define do
name "Censura"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Censura - the flexible, robust, reviews and ratings application."
website "http://www.censura.info/"
dorks [
'"Powered by: Censura"'
]
matches [
    {:text=>'Powered by: <a href="http://www.censura.info'},
    {:version=>/Powered by: <a[^>]* href="http:\/\/www.censura.info">Censura<\/a> version ([\d\.]+)/}
]
end
