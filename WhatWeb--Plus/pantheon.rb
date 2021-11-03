Plugin.define do
name "Pantheon"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pantheon"
website "https://www.getpantheon.com/"
matches [
    {:search=>"headers", :regexp=>/HTTP\/1\.[01] 404 Unknown site\!/},
    {:search=>"headers[x-pantheon-edge-server]", :string=>/^(.*)$/},
    {:search=>'headers[server]', :regexp=>/^Pantheon/}
]
end
