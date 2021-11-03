Plugin.define do
name "PRITLOG"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PRITLOG is an extremely simple, small and powerful blog system. Requires SQLite"
website "http://pritlog.com/fossil.cgi/home"
dorks [
'"Please enable Javascript for full functionality." "Powered by Pritlog"',
'inurl:"pritlog/index.php/archives"'
]
matches [
{ :text=>'<em id="jserror">Please enable Javascript for full functionality.</em>' },
{ :text=>'Powered by <a href="http://pritlog.com/">Pritlog</a>' },
]
end
