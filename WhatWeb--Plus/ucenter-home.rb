Plugin.define do
name "UCenter-Home"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Social networking platform developed by Comsenz. Uses PHP and MySQL. Wikipedia page: https://zh.wikipedia.org/wiki/UCenter_Home"
website "http://www.comsenz.com/downloads/install/uchome"
dorks [
'"powered by UCenter Home"'
]
matches [
{ :text=>'Powered by UCenter Home</title>' },
{ :version=>/Powered by <a  href="http:\/\/u.discuz.net" target="_blank"><strong>UCenter Home<\/strong><\/a> <span title="[0-9]{8}">([\d\.]+)<\/span>/ },
]
end
