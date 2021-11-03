Plugin.define do
name "Citrix-ConfProxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Citrix ConfProxy ISAPI"
website "http://www.citrix.com/"
matches [
    {:search=>"headers", :text=>'confproxy'},
    {:text=>'confproxy'},
    {:version=>/^confproxy\/([\d\.]+)/, :search=>"headers[server]"}
]
end
