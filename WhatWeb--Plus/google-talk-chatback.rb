Plugin.define do
name "Google-Talk-Chatback"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Google 'chatback badge' allows your site's visitors to chat with you, provided you're logged in to Google Talk at the time."
website "http://www.google.com/talk/service/badge/New"
matches [
    {:regexp=>/<iframe[^>]+src[\s]*=[\s]*('|")http:\/\/www.google.com\/talk\/service\/badge\/Show\?tk=[^>]+>/},
    {:text=>'www.google.com/talk/service/'}
]
end
