Plugin.define do
name "phplist"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phplist is the world's most popular open source email campaign manager."
website "http://www.phplist.com/"
dorks [
'"powered by phplist version" intitle:phplist'
]
matches [
{ :text=>'<html><head><title>Nothing here</title></head><body>' },
{ :text=>'<p>You probably want to be <a href="../">here</a> or <a href="admin/">here</a>.</p>' },
{ :text=>'<meta name="Author" content="Michiel Dethmers - http://www.phplist.com" />' },
{ :version=>/<meta name="Powered-By" content="phplist version ([^"]+)" \/>/ },
{ :version=>/<span class="urhere">phplist powered by <\/span><a class="urhere" href="http:\/\/www\.phplist\.com" target="_blank">phplist<\/a> - version ([^<]+)<\/td>/ },
]
end
