Plugin.define do
name "Webduino"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Simple and extensible web server library for the Arduino using the Wiznet-based Ethernet shields."
website "https://code.google.com/p/webduino/"
matches [
{ :search=>"headers[server]", :regexp=>/^Webduino$/ },
{ :search=>"headers[server]", :version=>/^Webduino\/([^\s]+)/ },
]
end
