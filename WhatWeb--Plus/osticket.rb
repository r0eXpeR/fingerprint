Plugin.define do
name "osTicket"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "osTicket is a widely-used open source support ticket system - Requires: PHP and MySQL"
website "http://www.osticket.com/"
dorks [
'"SUPPORT TICKET SYSTEM" "Home" "Ticket Status" "New Ticket" "Welcome to the support center"'
]
matches [
{ :version=>/<div id="nav">[\s]+<ul id="sub_nav">[\s]+<li>osTicket version ([^\-^<]+) - Basic installation<\/li>[\s]+<\/ul>[\s]+<\/div>/ },
{ :regexp=>/<title>osTicket Installer<\/title>[\s]+<link rel="stylesheet" href="style\.css" media="screen">/ },
{ :regexp=>/<a id="powered_by" href="http:\/\/osticket\.com"><img src="\.\/images\/poweredby\.jpg" width="126" height="23" alt="Powered by osTicket"><\/a><\/div>/ },
]
end
