Plugin.define do
name "NinkoBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NinkoBB"
website "http://ninkobb.com/"
dorks [
'"Powered by NinkoBB"'
]
matches [
{ :regexp=>/<link href="[^"]*\/assets\/css\/ninko.css" rel="stylesheet" type="text\/css" \/>/ },
{ :text=>'Powered by <a href="http://ninkobb.com">NinkoBB</a>' },
{ :version=>/Powered by <a href="http:\/\/ninkobb.com\/">NinkoBB<\/a> v. ([\d\.]{1,5}) t./ },
]
end
