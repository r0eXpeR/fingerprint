Plugin.define do
name "PJIRC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PJIRC is the best free java irc client available. It can be run as an applet or stand alone and it is fully opensource."
website "http://www.pjirc.it/"
dorks [
'"Chat Room" "Applet Style" "Nickname" ext:php'
]
matches [
{ :text=>'<body onload="document.login.nick.focus();" style="margin: 5px;">' },
{ :text=>'					document.writeln(\'<input name="jsenabled" type="hidden" value="1" \/>\');' },
{ :regexp=>/				<form name="login" action="[^"]*index\.php" method="post" onsubmit="return CheckForm\('[^']*index\.php\?page=advanced'\)">/ },
{ :version=>/	<td align="left">PJIRC Login Page Version ([\d\.]{1,5})<\/td>/ },
]
end
