Plugin.define do
name "Knopflerfish-HTTP-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Knopflerfish HTTP Server - Small footprint OSGi HTTP server implementation for embedded use"
website "http://www.knopflerfish.org/"
matches [
    {:search=>"headers", :text=>'The Knopflerfish HTTP Server'},
    {:search=>"headers[server]", :regexp=>/^The Knopflerfish HTTP Server$/}
]
end
