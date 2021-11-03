Plugin.define do
name "ntop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ntop is a network traffic probe that shows the network usage, similar to what the popular top Unix command does."
website "http://www.ntop.org/products/ntop/"
dorks [
'intitle:"Global Traffic Statistics" "Name" "Device" "Type"'
]
matches [
    {:certainty=>75, :text=>'<TITLE>Global Traffic Statistics</TITLE>'},
    {:search=>"headers", :text=>'Server: ntop'},
    {:search=>"headers[server]", :version=>/^ntop\/([^\s]+)/},
    {:search=>"headers[www-authenticate]", :text=>'Basic realm="NTOP"'},
    {:text=>'<link rel="alternate" type="application/rss+xml" title="ntop RSS Feed" href="http://www.ntop.org/blog/?feed=rss2" />'},
    {:text=>'Global Traffic Statistics'},
    {:text=>'ntopMenuID'}
]
end
