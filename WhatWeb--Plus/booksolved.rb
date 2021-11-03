Plugin.define do
name "BOOKSolved"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BOOKSolved - guestbook script"
website "http://www.usolved.net/scripts_9.html"
dorks [
'"BOOKSolved" "by USOLVED" inurl:"booksolved.php"'
]
matches [
{ :text=>'<!-- BOOKSolved - Copyright by www.usolved.net -->' },
{ :version=>/<!-- BOOKSolved v([^\s]+)- Copyright by www\.usolved\.net -->/ },
{ :version=>/<tr><td style="text-align: center;">[\s]*BOOKSolved ([^\s]+) &copy; by <a href="http:\/\/www\.usolved\.net" (target="_blank" )?class="menu">USOLVED<\/a>/ },
]
end
