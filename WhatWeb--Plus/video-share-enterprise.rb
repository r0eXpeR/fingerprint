Plugin.define do
name "VideoShareEnterprise"
authors [
  "Brendan Coles <bcoles at gmail dot com>", 

]
version "0.1"
description "online video sharing community web application"
website "http://www.alstrasoft.com"
matches [
{:name=>'GHDB: "Powered By AlstraSoft Video Share Enterprise"',
:certainty=>75,
:ghdb=>'"Powered By AlstraSoft Video Share Enterprise"'
},
{:name=>'default html comment',
:certainty=>100,
:text=>'<!--!!!!!!!!!!!!!!!!!!!!!!!!! Processing SCRIPT !!!!!!!!!!!!!!!!!!!-->'
}
]
end
