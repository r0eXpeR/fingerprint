Plugin.define do
name "HyNetOS-httpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "HyNetOS is a network operating system specifically designed for embedded systems, where computing and memory resources are limited."
website "http://www.msc-ge.com/en/produkte/elekom/mc/hyperstone/sw_hynetos.html"
matches [
    {:os=>"HyNetOS", :regexp=>/^HyNetOS/, :search=>"headers[server]"},
    {:os=>"HyNetOS", :version=>/^HyNetOS\/([^\s]+)$/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'HyNetOS'}
]
end
