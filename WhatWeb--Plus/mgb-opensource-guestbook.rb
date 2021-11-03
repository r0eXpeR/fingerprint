Plugin.define do
name "MGB-OpenSource-Guestbook"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MGB OpenSource Guestbook"
website "http://www.m-gb.org/"
dorks [
'inurl:"mgb/index.php?p="'
]
matches [
{ :string=>/<meta name="copyright" content="MGB OpenSource Guestbook \(C\) Copyright 2004-(20[\d]{2}) by http:\/\/www\.m\-gb\.org\/">/ },
{ :text=>'<!-- If you want to remove this copyright you can do so. But it took and already takes a lot of time to code all this stuff.' },
{ :text=>'<td class="entry_info" colspan="3"><a href="email.php?id=denied">' },
{ :string=>/<span class="copyright"><a href="http:\/\/www\.m\-gb\.org\/" title="MGB Homepage" target="_blank">MGB OpenSource Guestbook<\/a> &copy; 2004-(20[\d]{2})<br>/ },
]
end
