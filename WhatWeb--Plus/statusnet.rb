Plugin.define do
name "StatusNet"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "StatusNet's Open Source social software enables organizations to collaborate, share insights and build relationships in real time."
website "http://status.net/"
dorks [
'"powered by StatusNet version" inurl:"/main/version" -filetype:html'
]
matches [
{ :version=>/<p>This site is powered by <a href="http:\/\/status\.net\/">StatusNet<\/a> version ([^\s]+),/ },
{ :version=>/It runs the <a href="http:\/\/status\.net\/">StatusNet<\/a> microblogging software, version ([^\s]+), available under the <a / },
]
end
