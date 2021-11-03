Plugin.define do
name "Lasernet-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Lasernet CMS"
website "http://lasernet.gr/cms.php"
dorks [
'intext:"Powered by Lasernet" -intext'
]
matches [
{ :regexp=>/<table width="100%" height="1[\d]{2}" border="0" cellpadding="0" cellspacing="0" background="images\/headers\/[^"\/>]* ">/ },
{ :regexp=>/<font size="1" face="Verdana, Arial, Helvetica, sans-serif">Powered by<\/font><\/font>[\s]+<a href="http:\/\/lasernet\.gr"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Lasernet<\/font><\/a>[\s]+<\/td>/ },
]
end
