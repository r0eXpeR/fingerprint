Plugin.define do
name "Piwik"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.3"
description "Piwik is a downloadable, open source (GPL licensed) real time web analytics software program."
website "http://piwik.org/"
dorks [
'intitle:Piwik "JavaScript must be enabled in order for you to use Piwik in standard view"'
]
matches [
    {:certainty=>75, :ghdb=>'+intitle:Piwik "JavaScript must be enabled in order for you to use Piwik in standard view"'},
    {:search=>"headers", :text=>'PIWIK_SESSID'},
    {:search=>"headers[set-cookie]", :regexp=>/^PIWIK_SESSID/, :name=>"PIWIK_SESSID cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^_pk_/, :name=>"_pk_ cookie"},
    {:text=>'<img src="themes/default/images/loading-blue.gif" alt="" /> Loading data'},
    {:text=>'<title>Piwik &rsaquo; Web Analytics Reports</title>'},
    {:text=>'index.php?module=Proxy")'},
    {:version=>/<meta name=\"generator\"[^>]*content=\"Piwik ([0-9\.]+)/}
]
end
