Plugin.define do
name "Campsite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Campsite is a multilingual content management system (CMS) for news websites."
website "http://www.sourcefabric.org/"
dorks [
'"powered by campsite"'
]
matches [
    {:text=>'<a href="http://www.campware.org" target="_blank"><img src="/templates/img/powered.gif" alt="powered by campsite" border="0"/></a>'},
    {:text=>'content="Campsite'},
    {:text=>'powered by <a href="http://campsite.campware.org" target="_blank">Campsite</a>'},
    {:text=>'powered by <a href="http://campsite.sourcefabric.org" target="_blank">Campsite</a>'},
    {:text=>'powered by <a href="http://www.campware.org" target="_blank">CAMPSite</a></p>'},
    {:version=>/<meta name="generator" content="Campsite ([\d\.a-z]+)" \/>/}
]
end
