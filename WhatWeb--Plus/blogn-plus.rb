Plugin.define do
name "BlognPlus"
authors [
  "Brendan Coles <bcoles at gmail dot com>", 

]
version "0.2"
description "BlognPlus"
website "http://www.blogn.org/"
dorks [
'"powered by BlognPlus"'
]
matches [
{ :regexp=>/Powered by[\s]*<a href="http:\/\/www.blogn.org[^>]*>BlognPlus/i },
{ :version=>/<meta name="generator"[^>]*content="BlognPlus ([0-9\.]+)/ },
]
end
