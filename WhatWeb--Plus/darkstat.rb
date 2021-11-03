Plugin.define do
name "darkstat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "darkstat captures network traffic, calculates statistics about usage, and serves reports over HTTP."
website "http://unix4lyfe.org/darkstat/"
dorks [
'intitle:darkstat intitle:"graphs" "graphs" "Running for"'
]
matches [
    {:search=>"headers", :text=>'darkstat'},
    {:search=>"headers[server]", :version=>/^darkstat\/([^\s]+)$/},
    {:version=>/<li class="label">darkstat ([^\s^<]+)<\/li><li><a href="[^"]+">graphs<\/a><\/li>/},
    {:version=>/<title>darkstat ([^\s]+) : graphs ([^\s^\)]+)<\/title>/}
]
end
