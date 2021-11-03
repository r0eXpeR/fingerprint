Plugin.define do
name "PithCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PithCMS - requirements: Linux, PHP 4.4.4-8"
website "http://pithcms.altervista.org/index.php?pagina=data/info.php"
dorks [
'"powered by pithcms"'
]
matches [
{ :text=>'<p class="admin">Powered by <a href="http://pithcms.altervista.org/index.php?pagina=data/info.php">PithCMS</a>' },
{ :text=>'/icons/admin48.png"><br />Welcome Admin.<br /><br />', :path=>'login.asp' },
]
end
