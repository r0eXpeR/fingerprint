Plugin.define do
name "ClanSphere"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Free OpenSource Clan CMS"
website "www.csphere.eu/index/clansphere/about"
dorks [
'"powered by ClanSphere"'
]
matches [
    {:regexp=>/<a href="[\/]*index.php\?mod=clansphere&amp;action=about[^>]+>Clansphere[\ CSP]*/i},
    {:regexp=>/<a href="[\/]*index.php\?mod=clansphere&amp;action=about[^>]+>Powered by Clansphere[\ CSP]*/i},
    {:regexp=>/Powered by <a href="http:\/\/www.csphere.eu[^>]+>Clansphere[\ CSP]*/i},
    {:regexp=>/powered by <a href="http:\/\/www.clansphere.net[^>]+>ClanSphere Project<\/a>/},
    {:text=>'<meta name="generator" content="ClanSphere" />'},
    {:text=>'<title>ClanSphere - News</title>'},
    {:text=>'content="ClanSphere'},
    {:text=>'index.php?mod=clansphere&amp;action=about'}
]
end
