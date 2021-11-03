Plugin.define do
name "siteGENIUS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "siteGENIUS, a custom website builder that lets you create your own website."
website "http://www.sitegenius.com/"
dorks [
'inurl:"sitegenius/topic.php?id="'
]
matches [
{ :certainty=>75, :ghdb=>'inurl:"sitegenius/topic.php"' },
{ :regexp=>/var PortalBrowser = window.open\('popup.php\?page_type='\+page_type\+'&lang=[A-Z]{2}&page_id='\+pgid(\+addToURL)?, '', myFeatures\); / },
]
end
