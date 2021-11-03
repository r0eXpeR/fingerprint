Plugin.define do
name "Visec"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Visec - Surveillance Software"
website "http://www.visec.net/"
dorks [
'intitle:"VISEC - Login" "Please enter a password to log into VISEC"'
]
matches [
{ :regexp=>/<!--wml-->\s+<!--bad-->/ },
{ :url=>"/favicon.ico", :md5=>"2e5e985fe125e3f8fca988a86689b127" },
{ :search=>"headers[server]", :version=>/^VISEC\/([^\s]+)$/ },
]
end
