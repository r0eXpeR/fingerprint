Plugin.define do
name "CreateLive-Cms"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CreateLive Cms"
website "http://www.aspoo.cn/"
dorks [
'intext:"Powered by CreateLive CMS Version"'
]
matches [
    {:search=>"headers", :text=>'AspooKill=kill='},
    {:search=>"headers[set-cookie]", :regexp=>/Kill=kill=(Yes|No)/},
    {:text=>'<!--By CreateLiveCms'},
    {:version=>/<!--By CreateLiveCms (\d)\.00-->/},
    {:version=>/Powered by:(<a href="http:\/\/www.aspoo.cn\/" target="_blank">)?CreateLive CMS Version ([\d\.]+)/i}
]
end
