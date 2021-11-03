Plugin.define do
name "Mibew-Messenger"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mibew Messenger (also known as Open Web Messenger) is an open-source live support application written in PHP and MySQL."
website "http://mibew.org/"
dorks [
'"Mibew Messenger" "mibew.org" intitle:"Mibew Messenger" inurl:"operator/restore.php"'
]
matches [
{ :version=>/<p id="legal"><a href="http:\/\/mibew\.org\/" class="flink">Mibew Messenger<\/a> ([^\s]+) \| \(c\) 20[\d]{2} mibew\.org<\/p>/ },
{ :certainty=>75, :text=>'<div class="empty_inner" style="">&#160;</div>' },
]
end
