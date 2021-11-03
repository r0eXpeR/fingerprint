Plugin.define do
name "Network-Tracker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Network Tracker is a free web-based network management tool. Network tracker allows you to track all changes and updates made to a network device. - Requires PHP and MySQL"
website "http://networktracker.org/"
dorks [
'"powered by network tracker"'
]
matches [
{ :text=>'<p><small>powered by <a href="http://networktracker.org" target="_blank" title="network tracker website">network tracker</a></small></p>' },
]
end
