Plugin.define do
name "Siemens-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Siemens Router"
website "https://www.siemens.com/"
matches [
{ :search=>"headers[www-authenticate]", :model=>/Basic realm="Siemens ADSL ([^"^\s]+)"/, :certainty=>75 },
]
end
