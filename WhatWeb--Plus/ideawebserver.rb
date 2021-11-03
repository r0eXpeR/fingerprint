Plugin.define do
name "IdeaWebServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "home.net.pl hosting - a major polish hosting company home.pl uses its own server software (Idea Web Server)"
website "http://home.net.pl"
matches [
    {:search=>"headers", :text=>'IdeaWebServer'},
    {:version=>/^IdeaWebServer\/v([\d\.]+)$/, :search=>"headers[server]"}
]
end
