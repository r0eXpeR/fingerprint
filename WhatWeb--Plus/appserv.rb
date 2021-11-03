Plugin.define do
name "AppServ"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AppServ is an Apache, MySQL, PHP, phpMyAdmin installer package for Windows and Linux."
website "http://www.appservnetwork.com/"
dorks [
'intitle:"AppServ Open Project" "About AppServ Version"'
]
matches [
    {:text=>'<font color="#000080" class="headd">&nbsp;&nbsp;&nbsp;<img src="appserv/softicon.gif"'},
    {:text=>'appserv/softicon.gif'},
    {:text=>'index.php?appservlang=th'},
    {:version=>/<span class="headd"><strong><big>&nbsp; The AppServ Open Project - ([^\s]+) for (Windows|Linux) <\/big><\/strong><\/span><\/font><\/td>/}
]
end
