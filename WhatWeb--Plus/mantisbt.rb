Plugin.define do
name "MantisBT"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MantisBT is a popular free web-based bug tracking system. It is written in PHP works with MySQL, MS SQL, and PostgreSQL databases."
website "http://www.mantisbt.org/"
dorks [
'"Powered by Mantis Bugtracker"'
]
matches [
    {:regexp=>/<div align="right"><a href="http:\/\/www.mantis(bugtracker.com|bt.org)" title="Powered by Mantis Bugtracker"><img src="[^"]*images\/mantis_logo_button.gif" width="88" height="35" alt="Powered by Mantis Bugtracker" border="0" \/><\/a><\/div>/},
    {:regexp=>/<div align="right"><a href="http:\/\/www.mantisbt.org" title="Free Web Based Bug Tracker"><img src="[^"]*images\/mantis_logo_button.gif" width="88" height="35" alt="Powered by Mantis Bugtracker" border="0" \/><\/a><\/div>/},
    {:regexp=>/<img[^>]+ alt="Powered by Mantis Bugtracker/},
    {:string=>"Install", :text=>"<title> MantisBT Administration - Installation  </title>"},
    {:version=>/<span class="timer"><a href="http:\/\/www.mantis(bugtracker.com|bt.org)\/">Mantis ([\d\.]+)<\/a>\[<a href="http:\/\/www.mantis(bugtracker.com|bt.org)\/" target="_blank">\^<\/a>\]<\/span>/, :offset=>1},
    {:version=>/<span class="timer"><a href="http:\/\/www.mantisbt.org\/" title="Free Web Based Bug Tracker">Mantis(BT)? ([\d\.]+)<\/a>\[<a href="http:\/\/www.mantisbt.org\/"  title="Free Web Based Bug Tracker" target="_blank">\^<\/a>\]<\/span>/, :offset=>1}
]
end
