Plugin.define do
name "PageCookery-Microblog"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Blog [Chinese]"
website "http://www.pagecookery.com/"
dorks [
'"Powered by PageCookery Microblog"'
]
matches [
{ :version=>/Powered by <a href="http:\/\/pagecookery.com\/" target="_blank">PageCookery<\/a> Microblog ([\d\.]{1,5})/ },
]
end
