Plugin.define do
name "SentinelServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Monitor application performance and availability"
website "http://www.ymor.eu/"
dorks [
'intitle:"SentinelServer Login" "SentinelServer Login"'
]
matches [
{ :search=>"headers[server]", :regexp=>/^SentinelServer/ },
]
end
