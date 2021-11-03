Plugin.define do
name "SocketKB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Deploy your own professional knowledge base or knowledge repository. Provide your customers the answers to their questions with SocketKB. Increase customer satisfaction and confidence. Easy and fast to install."
website "http://socketkb.com/site/home/"
dorks [
'"Powered by SocketKB version" -intext'
]
matches [
{ :version=>/>Powered by SocketKB version ([\d\.]+)<\/a>/ },
]
end
