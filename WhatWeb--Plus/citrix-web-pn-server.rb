Plugin.define do
name "Citrix-Web-PN-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Citrix Web PN Server - http://www.citrix.com"
matches [
    {:search=>"headers", :text=>'Citrix Web PN Server'},
    {:search=>"headers[server]", :regexp=>/^Citrix Web PN Server$/},
    {:text=>'Citrix Web PN Server'}
]
end
