Plugin.define do
name "phpFreeChat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "phpFreeChat is a free, simple to install, fast, customizable and multi languages chat that uses a simple filesystem for message and nickname storage."
website "http://www.phpfreechat.net/"
dorks [
'"powered by phpfreechat"'
]
matches [
{ :ghdb=>'"powered by phpfreechat"', :certainty=>75 },
{ :version=>/<img src="http:\/\/www.phpfreechat.net\/pub\/logo[2]*_80x15.gif" alt="PHP FREE CHAT \[powered by phpFreeChat-([\d\.\-a-z]*)\]"/ },
]
end
