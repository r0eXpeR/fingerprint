Plugin.define do
name "Apache-Cocoon"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Apache Cocoon is a Spring-based framework (since version 2.2 of Cocoon) built around the concepts of separation of concerns and component-based development."
website "http://cocoon.apache.org/"
matches [
    {:search=>"headers", :text=>'x-cocoon-version'},
    {:version=>/^(.*)$/ ,:search=>"headers[x-cocoon-version]"}
]
end
