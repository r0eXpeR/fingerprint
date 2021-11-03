Plugin.define do
name "Think-Plus"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Think+ - Social Media Marketing"
website "http://think-plus.gr/"
dorks [
'"Powered by Think+"'
]
matches [
{ :text=>'<div class="copy">Powered by <a href="http://think-plus.gr">Think+</a>' },
{ :text=>'<meta name="author" CONTENT="Think+">' },
]
end
