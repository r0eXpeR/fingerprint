Plugin.define do
name "RobPoll"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RobPoll - CGI poll system"
website "Offline"
dorks [
'inurl:robpoll.cgi filetype:cgi'
]
matches [
{ :ghdb=>'inurl:"robpoll.cgi?start" filetype:cgi' },
{ :text=>'<head><title>RobPoll Admin</title></head>' },
{ :regexp=>/<form action="[^"]*\/robpoll\.cgi" method="post">/ },
]
end
