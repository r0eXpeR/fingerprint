Plugin.define do
name "PHP-Server-Monitor"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Server Monitor is a script that checks whether the servers on your list are up and running on the selected ports.It comes with a web based user interface where you can add and remove servers and users from the MySQL database."
website "http://sourceforge.net/projects/phpservermon/"
dorks [
'intitle:"PHP Server Monitor" "Powered by PHP Server Monitor"'
]
matches [
{ :text=>'<title>PHP Server Monitor</title>' },
{ :text=>'<div class="opensource"><a href="index.php"><img src="img/opensource.png" alt="Open Source" height="101px" /></a></div>' },
{ :version=>/Powered by <a href="http:\/\/phpservermon\.sourceforge\.net" target="_blank">PHP Server Monitor v([\d\.]+)<\/a><br\/>/ },
]
end
