Plugin.define do
name "fnord"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "fnord - yet another small httpd"
website "http://www.fefe.de/fnord/"
matches [
    {:regexp=>/^fnord/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'fnord'},
    {:version=>/^fnord\/([^\s]+)$/, :search=>"headers[server]"}
]
end
