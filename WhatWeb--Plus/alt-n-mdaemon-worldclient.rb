Plugin.define do
name "Alt-N-MDaemon-WorldClient"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MDaemon Messaging Server, mail server software, supports IMAP, SMTP, and POP3 protocols. MDaemon Messaging Server's webmail client, WorldClient is provided free with every version of MDaemon Messaging Server."
website "http://www.altn.com/Products/MDaemon-Email-Server-Windows/WorldClient-WebMail-MDaemon/"
dorks [
'inurl:WorldClient.dll?View=Main'
]
matches [
    {:search=>"headers", :text=>'WDaemon'},
    {:text=>'/WorldClient.dll'},
    {:text=>'<div id="biglogo" align="center"><img src="LookOut/biglogo.gif" alt="WorldClient" /></div>'},
    {:text=>'<form action="/WorldClient.dll?View=Main" target="_top" method="post" onsubmit="document.getElementById(\'Logon\').disabled=true;">'},
    {:text=>'<form action="/WorldClient.dll?View=Main" target="_top" method="post">'},
    {:version=>/<strong><a href="http:\/\/www\.altn\.com\/Products\/MDaemon-Email-Server-Windows\/">MDaemon Messaging Server, BlackBerry Edition<\/a>\/WorldClient v([^\s<]+) &copy; 20[\d]{2} <a href="http:\/\/www\.altn\.com">Alt-N Technologies<\/a>\.<\/strong>/, :string=>"BlackBerry Edition"},
    {:version=>/<strong>[\s]*MDaemon\/WorldClient v([^\s<]+) &copy; 20[\d]{2} Alt-N Technologies\.[\s]*<\/strong>/},
    {:version=>/^WDaemon\/([\d\.]+)$/, :search=>"headers[server]"}
]
end
