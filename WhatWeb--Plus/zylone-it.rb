Plugin.define do
name "Zylone-IT"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Zylone IT is an IT company in Singapore providing web design, web solutions and internet marketing."
website "http://www.zylone.com/"
dorks [
'"powered by Zylone IT" -Vulnerability'
]
matches [
{ :regexp=>/Powered by[:]? <a href="http:\/\/www.zylone.com[\/]*[^>]+>Zylone IT/ },
]
end
