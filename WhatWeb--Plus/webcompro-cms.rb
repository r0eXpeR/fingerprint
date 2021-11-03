Plugin.define do
name "WEBCOMpro-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WEBCOMpro CMS"
website "http://www.webcompro-cms.com/"
dorks [
'inurl:module/interface.php?ifc_page=licence'
]
matches [
{ :search=>"headers[x-powered-by]", :version=>/WEBCOMpro CMS (.+)$/ },
{ :search=>"headers[set-cookie]", :regexp=>/wcp_userid=[\d]{10};/ },
{ :search=>"headers[set-cookie]", :regexp=>/wcp_userid_temporary=[\d]{10};/ },
{ :regexp=>/<meta name="generator" content="WEBCOMpro CMS ([^\s]+) . Patrick Heyer, www\.webcompro-cms\.com">/ },
]
end
