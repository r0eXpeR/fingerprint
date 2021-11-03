Plugin.define do
name "OpenConf"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenConf is an abstract and peer-review management system that greatly facilitates the submission and review processes for conferences, workshops, and symposia."
website "http://www.openconf.com/"
dorks [
'"Powered by OpenConf"'
]
matches [
{ :text=>'Powered by <a href="http://www.OpenConf.org" target="_blank">OpenConf</a>' },
{ :version=>/<div class="powered">Powered by <a href="http:\/\/www\.OpenConf\.com" target="_blank">OpenConf<\/a>(<sup>&reg;<\/sup>)?<!--([^\s]+)-->/, :offset=>1 },
{ :version=>/<script type="text\/javascript" src="openconf\.js\?v=([^\s^"]+)"><\/script>/ },
{ :search=>"headers[set-cookie]", :regexp=>/OPENCONF=[^;]+;/ },
]
end
