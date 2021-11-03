Plugin.define do
name "phpATM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpATM (PHP Advanced Transfer Manager) is a free, open source, PHP based Upload and Download manager. But unlike most other of its kind it stores the data in flat text files and therefore does not require a database like MySQL installed on the web server."
website "http://phpatm.org/"
dorks [
'"Powered by phpATM" inurl:"viewer_bottom.php"'
]
matches [
{ :text=>'<frame name="viewer_bottom" src="viewer_bottom.php?file=' },
{ :version=>/<div id="phpatm">(<br>)?<a href="http:\/\/phpatm\.org\/" target="_blank" title="Powered by PHP Advanced Transfer Manager v([^"]+)">Powered by phpATM<\/a><br><\/div>/, :offset=>1 },
]
end
