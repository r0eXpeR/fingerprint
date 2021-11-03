Plugin.define do
name "netboard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "netboard forum"
dorks [
'inurl:cgi-sys/netboard.cgi ext:cgi'
]
matches [
{ :ghdb=>'inurl:"cgi-sys/netboard.cgi" filetype:cgi' },
{ :text=>'<td><form method=post action="netboard.cgi">' },
{ :text=>'<td><form method=post action=netboard.cgi>' },
]
end
