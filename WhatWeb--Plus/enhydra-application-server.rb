Plugin.define do
name "Enhydra-Application-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Enhydra Application Server"
website "http://enhydra.org/"
matches [
    {:search=>"headers", :text=>'Enhydra'},
    {:search=>"headers[server]", :version=>/^Enhydra-MultiServer\/([^\s]+)/},
    {:search=>"headers[servlet-engine]", :version=>/Enhydra Application Server\/([^\s]+)/}
]
end
