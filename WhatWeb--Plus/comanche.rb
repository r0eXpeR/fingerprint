Plugin.define do
name "Comanche"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Comanche is an open-source web server for Squeak. Comanche contains the server framework, which makes it possible to develop web applications entirely in Squeak, without the need to run an external web server."
website "http://wiki.squeak.org/swiki"
matches [
    {:search=>"headers", :text=>'Comanche'},
    {:search=>"headers[server]", :version=>/^Comanche\/([^\s]+)/}
]
end
