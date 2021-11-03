Plugin.define do
name "KeyFocus-WebServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "KeyFocus Web Server is a free HTTP Server that can host an unlimited number of web sites."
website "http://www.keyfocus.net/kfws/"
matches [
    {:search=>"headers", :text=>'KFWebServer'},
    {:search=>"headers[server]", :regexp=>/^KFWebServer$/},
    {:search=>"headers[server]", :version=>/^KFWebServer\/([\d\.]+)/}
]
end
