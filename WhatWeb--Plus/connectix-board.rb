Plugin.define do
name "Connectix-Boards"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Connectix-Boards Forum"
website "http://www.connectix-boards.org/index.php"
matches [
{ :text=>'	<title>Installation de Connectix Boards</title>' },
{ :text=>'    <title>Connectix Boards - Fatal Error</title>' },
{ :text=>'	<title>Connectix Boards Error</title>' },
{ :version=>/Powered by <a href="http:\/\/www.connectix-boards.org"[^>]*>Connectix Boards<\/a> ([^&]+) &copy; [0-9]{4}-[0-9]{4}/ },
]
end
