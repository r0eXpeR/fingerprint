Plugin.define do
name "Taurus-Server-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Taurus Server Appliance is an all-in-one networking device solution for the small to midsize business."
website "http://www.celestix.com/"
dorks [
'"Welcome to Taurus" "Taurus administration UI" intitle:"The Taurus Server Appliance"'
]
matches [
{ :certainty=>75, :text=>'<title>The Taurus Server Appliance</title>' },
{ :text=>'<b><font color=#FFFFFF>Welcome to Taurus </font></b>' },
{ :version=>/<div align=center><font size=-2 color=#FFFFFF>Software Version : CeLinuX-([\d\.]+)<\/font><\/div>/ },
]
end
