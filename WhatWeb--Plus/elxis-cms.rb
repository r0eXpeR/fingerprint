Plugin.define do
name "Elxis-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Elxis is powerful open source content management system (CMS) released for free under the GNU/GPL license."
website "http://www.elxis.org/"
dorks [
'"powered by Elxis CMS"'
]
matches [
    {:md5=>'36d8efa82de41f53c23eece784405c9e', :url=>'images/favicon.ico'},
    {:regexp=>/<meta name="Generator" content="Elxis - Copyright \(C\) 2006-[0-9]{4} Elxis.org. All rights reserved." \/>/},
    {:regexp=>/Powered by <a href="http:\/\/www.elxis.org[\/]*" title="Elxis open source content management system"[\ target="_blank"]*>Elxis[\ CMS]*<\/a>/},
    {:text=>'Powered by <a href="http://www.elxis.org" title="Elxis CMS">Elxis</a>'},
    {:text=>'content="Elxis'}
]
end
