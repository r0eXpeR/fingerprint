Plugin.define do
name "Mihalism-Multi-Host"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "An easy image hosting solution for everyone."
website "http://www.mihalism.com/product/mmh/"
matches [
{ :text=>'Powered by <a href="http://www.mihalism.com/product/mmh/">Mihalism Multi Host</a>' },
{ :regexp=>/<!-- Powered by Mihalism Multi Host - Copyright \(c\) [\d\,\ ]+ Mihalism Technologies \(www.mihalism.net\) -->/ },
{ :regexp=>/<!-- Powered by Mihalism Multi Host - Copyright \(c\) [\d\,\ ]+ Mihalism, Inc. \(www.mihalism.com\) -->/ },
{ :text=>'					<title>Fatal Error (Powered by Mihalism Multi Host)</title>' },
{ :text=>'					<title>MySQL Error (Powered by Mihalism Multi Host)</title>' },
{ :text=>'    <title>Mihalism Multi Host » Installation</title>' },
{ :text=>'<b style="color: #F00;">Warning:</b> Using this installer will erase any already existing Mihalism Multi Host installation.' },
{ :version=>/    <meta name="version" content="Mihalism Multi Host v([\d\.]+)" \/>/ },
]
end
