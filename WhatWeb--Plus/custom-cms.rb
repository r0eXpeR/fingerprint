Plugin.define do
name "Custom-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Custom CMS Gaming is a Content Management System geared towards all Gamers that would like to maintain and create fully functional gaming sources. "
website "http://www.customcms.net/"
dorks [
'"powered by CCMS"'
]
matches [
    {:text=>' - Powered by CCMS</title>', :certainty=>75},
    {:text=>'<meta name="generator" content="CustomCMS Gaming" />'},
    {:text=>'content="CustomCMS'},
    {:text=>'title="Powered by CCMS'},
    {:version=>/power.png" border="0" style="margin-top: 7px;" alt="" title="Powered by CCMS v([\d\.]+)" \/><\/a>/}
]
end
