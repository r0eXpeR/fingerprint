Plugin.define do
name "Zones-Web-Solution"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies websites designed by Zones Web Solution"
website "http://www.zones.in/"
dorks [
'"Powered By : Zones Web Solution" "inurl:index.php?manufacturers_id='
]
matches [
{ :text=>'<meta name="author" content="Vikas Madaan (http://madaan.zones.in) - Zones Web Solution (www.zones.in), Visit http://www.zones.in for more info">' },
{ :text=>'<br>Powered by : <a href="http://www.zones.in" target="_blank">Zones Web Solution</a> &amp;' },
]
end
