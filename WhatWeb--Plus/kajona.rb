Plugin.define do
name "Kajona"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kajona - Open Source Content Management System - Requires PHP & MySQL"
website "http://www.kajona.de/"
matches [
    {:regexp=>/<!--\s+Website powered by Kajona. Open Source Content Management Framework/},
    {:regexp=>/<meta name="generator" content="Kajona., www\.kajona\.de" \/>/},
    {:regexp=>/<script type="text\/javascript">KAJONA_(DEBUG|WEBPATH) = /},
    {:string=>/<div class="copyright">&copy; (20[\d]{2}) <a href="http:\/\/www\.kajona\.de" target="_blank" title="Kajona/},
    {:text=>'<div class="left">powered by Kajona</div>'},
    {:text=>'<div id="footerContainer">powered by <a href="http://www.kajona.de" target="_blank" title="Kajona'},
    {:text=>'content="Kajona'},
    {:text=>'powered by Kajona'}
]
end
