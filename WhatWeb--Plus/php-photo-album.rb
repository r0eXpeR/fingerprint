Plugin.define do
name "PHP-Photo-Album"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Photo Album"
website "http://www.phpalbum.net/dw"
dorks [
'"Powered by PHP Photo Album"'
]
matches [
{ :certainty=>75, :version=>/<!--phpalbum ([^\s]+) -->/ },
{ :text=>'<LINK REL="stylesheet" HREF="main.php?cmd=theme&var1=style_css" TYPE="text/css">' },
{ :text=>'<font size="2">Powered by </font><a class="me" href="http://www.phpalbum.net"><font size="2">PHP Photo Album</font></a>' },
{ :text=>'<!-- <font size="2">Powered by <a class="me"href="http://www.phpalbum.net">PHP Photo Album</font></a> -->' },
]
end
