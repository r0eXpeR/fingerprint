Plugin.define do
name "CaupoShop-Classic"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "German eCommerce and Content management system"
website "http://www.caupo.net/"
dorks [
'"powered by CaupoShop Classic"',
'inurl:csc_articles.php'
]
matches [
    {:ghdb=>'inurl:csc_articles.php', :certainty=>25},
    {:regexp=>/<td align="center"><small>&copy; 1998\-?[0-9]{0,4} <a href="http:\/\/www.caupo.net" target="_blank">CaupoNet<\/a>/},
    {:regexp=>/<td align="center"><small>Powered by CaupoShop Classic[\s]?<\/small><\/td>/},
    {:text=>'<!-- CaupoShop Classic'},
    {:text=>'<a href="http://www.caupo.net" target="_blank">CaupoNet'},
    {:text=>'Powered by CaupoShop'},
    {:version=>/<!-- CaupoShop Classic Ver\. ([\d\.]+) \([\d]{4}-[\d]{2}-[\d]{2}\)/},
    {:version=>/<td align="center"><small>Powered by CaupoShop Classic Ver\. ([\d\.]+)<\/small><\/td>/}
]
end
