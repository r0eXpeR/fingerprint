Plugin.define do
name "NexusPHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BitTorrent private tracker scripts written in PHP"
website "http://sourceforge.net/projects/nexusphp/"
dorks [
'"Powered by NexusPHP"',
'"Powered by NexusPHP" inurl:aboutnexus.php'
]
matches [
{ :regexp=>/<meta name="generator" content="NexusPHP"[\s]?\/>/ },
{ :text=>'<p><b>Note</b>: You need cookies enabled to log in or switch language.<br /> [<b>' },
{ :text=>'<tr><td class="rowhead">SSL (HTTPS):</td><td class="rowfollow" align="left"><input class="checkbox" type="checkbox" name="ssl" value="yes"' },
{ :string=>/<\/a> (20[\d]{2})-20[\d]{2} Powered by <a href="aboutnexus\.php">NexusPHP<\/a>/ },
]
end
