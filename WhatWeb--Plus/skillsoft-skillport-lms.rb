Plugin.define do
name "Skillsoft-Skillport-LMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Skillsoft Skillport - learning management system (LMS)"
website "http://www.skillsoft.com/products/skillport/"
dorks [
'site:skillport.com inurl:"login.action"'
]
matches [
{ :version=>/<table id="loginwrapper">\s*<tr><td width="10%"><\/td>\s*<td width="80%"  align="left" class="v">v ([^\s]+)<\/td>/ },
{ :text=>'<a href="javascript:void(0);showContextSpecificHelp(\'/skillportfe/help/en_US/learnerHelp/23386.htm\');"' },
{ :string=>/<table border="0" width="100%" id="logobanner">\s+<tr width="100%">\s+<td  width="82%">\s+<img src="https?:\/\/customer\.skillport\.com\/spcustom\/([^\/]+)\/[^"]+" alt="([^"]+) ?Logo"/, :offset=>0 },
{ :string=>/<table border="0" width="100%" id="logobanner">\s+<tr width="100%">\s+<td  width="82%">\s+<img src="https?:\/\/customer\.skillport\.com\/spcustom\/([^\/]+)\/[^"]+" alt="([^"]+) ?Logo"/, :offset=>1 },
{ :regexp=>/<div id="poweredbylogo">\s+<img src ="\/skillportfe\/resources\/default\/images\/poweredby\.gif" \/>/ },
{ :search=>"headers[set-cookie]", :regexp=>/SP[5-7]\dFE=\d+\.\d+\.\d+/ },
{ :search=>"headers[x-sp-fe]", :string=>/^(.+)$/ },
]
end
