Plugin.define do
name "Avaya-Aura-Utility-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Avaya Aura Utility Server"
website "http://www.avaya.com/"
matches [
    {:text=>'/webhelp/Base/Utility_toc.htm'},
    {:text=>'<div id="topBar"><div id="topBarLeft"><a href="#" class="helpAndExit" onclick="window.open(\'/webhelp/Base/Utility_toc.htm'},
    {:text=>'<span class="vmsTitle">Avaya Aura&#8482;&nbsp;Utility Server</span>'},
    {:text=>'vmsTitle">Avaya Aura&#8482;&nbsp;Utility Server'}
]
end
