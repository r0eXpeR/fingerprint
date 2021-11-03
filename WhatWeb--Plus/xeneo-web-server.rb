Plugin.define do
name "Xeneo-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Xeneo Web Server"
website "http://www.northernsolutions.com/products/xeneo/"
matches [
{ :search=>"headers[server]", :version=>/^Xeneo\/([^\s]+)$/ },
{ :search=>"headers[server]", :regexp=>/^Xeneo$/ },
]
end
