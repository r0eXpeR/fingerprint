Plugin.define do
name "Ben-SSL"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Apache-SSL was developed by Ben Laurie and is often referred to as Ben-SSL"
website "http://apache-ssl.org/"
matches [
    {:search=>"headers", :text=>'Ben-SSL'},
    {:version=>/Ben-SSL\/([\d\.]+)/, :search=>"headers[server]"}
]
end
