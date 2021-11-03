Plugin.define do
name "iPeer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iPeer - a web-based platform/database independent application to develop and deliver peer evaluations - Requires PHP"
website "http://ipeer.ctlt.ubc.ca/trac"
dorks [
'"Powered by iPeer and TeamMaker - Created by UBC and Rose-Hulman"',
'intitle:"iPeer V2 with TeamMaker"'
]
matches [
    {:search=>"headers", :text=>'IPEER='},
    {:search=>"headers[set-cookie]", :regexp=>/IPEER=[^;]+;/},
    {:text=>'/css/ipeer.css'},
    {:text=>'/js/ipeer.js'},
    {:text=>'<h1 align="center"><span class="footer">Powered by iPeer and TeamMaker - Created by UBC and Rose-Hulman</span></h1>'},
    {:text=>'Powered by iPeer'},
    {:version=>/<span class="bannerText"><span style='font-size: 120%;'>([^<]+)<\/span>&nbsp;&nbsp;with TeamMaker<\/span><\/td>/},
    {:version=>/<title>iPeer V(\d) with TeamMaker<\/title>/}
]
end
