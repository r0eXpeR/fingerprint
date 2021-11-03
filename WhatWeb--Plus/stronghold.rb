Plugin.define do
name "Stronghold"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Stronghold was a fork of the Apache HTTP Server. Stronghold was created by C2Net, which was eventually purchased by Red Hat. Red Hat Stronghold products are no longer available for purchase."
website "https://www.redhat.com/software/stronghold/"
matches [
{ :search=>"headers[server]", :regexp=>/^Stronghold$/ },
{ :search=>"headers[server]", :version=>/^Stronghold\/([^\s]+)/ },
{ :search=>"headers[server]", :string=>/(C2Net[A-Z]{2}\/[^\s]+)/ },
]
end
