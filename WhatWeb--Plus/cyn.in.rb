Plugin.define do
name "Cyn_in"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cyn.in is a collaboration software that inter-connects your people with each other and their collective knowledge, seamlessly."
website "http://www.cynapse.com/cynin"
dorks [
'"Powered by cyn.in" "free open source edition"'
]
matches [
{ :text=>'<meta name="generator" content="cyn.in - http://cyn.in" />' },
{ :md5=>"3640b38549e4eeb872f66ec53ee27842", :url=>"/favicon.ico" },
{ :version=>/<a href="http:\/\/www\.cynapse\.com\/cynin" target="_blank" class="smallcolophonmainlink">Powered by cyn\.in v([^\s]+) - free open source edition<\/a>/ },
]
end
