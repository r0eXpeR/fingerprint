Plugin.define do
name "Commerce-Builder"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Internet Factory's Commerce Builder web server [Discontinued]"
website "http://www.ifact.com/"
matches [
    {:search=>"headers", :text=>'Commerce-Builder'},
    {:version=>/^Commerce-Builder\/([^\s]+)/, :search=>"headers[server]"}
]
end
