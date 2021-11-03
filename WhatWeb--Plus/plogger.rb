Plugin.define do
name "Plogger"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Plogger is the next generation in open-source photo gallery systems."
website "http://www.plogger.org/"
dorks [
'"powered by Plogger"'
]
matches [
{ :regexp=>/<title>[^powered]+powered by Plogger Gallery<\/title>/ },
{ :regexp=>/<a[\ title="Powered by Plogger"]* href="http:\/\/www.plogger.org\/">Powered by Plogger[!]*<\/a>/ },
]
end
