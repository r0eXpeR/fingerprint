Plugin.define do
name "WebsiteBaker-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebsiteBaker open source content management system (CMS)."
website "http://www.websitebaker2.org"
dorks [
'"powered by websitebaker"'
]
matches [
    {:regexp=>/[pP]owered by <a href="http:\/\/www\.websitebaker2?\.org"( target="_blank")?>WebsiteBaker<\/a>/},
    {:search=>"headers", :text=>'wb_session_id'},
    {:search=>"headers[set-cookie]", :regexp=>/wb_[\d]{4}_session_id=[^;]+;/},
    {:search=>"headers[set-cookie]", :regexp=>/wb_session_id=[^;]+;/, :certainty=>75 },
    {:version=>/<meta name="generator" content="WebsiteBaker ([\d\.]+) CMS; www\.websitebaker2?\.org"[\s]?\/?>/}
]
end
