Plugin.define do
name "Akamai-Global-Host"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Akamai-Global-Host HTTPd"
website "https://www.akamai.com"
matches [
{ :search=>"headers[server]", :regexp=>/^AkamaiGHost/ },
]
end
