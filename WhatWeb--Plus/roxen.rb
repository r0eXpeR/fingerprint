Plugin.define do
name "Roxen"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Roxen WebServer is a full-featured open-source web server distributed under the GPL license."
website "http://www.roxen.com/products/webserver/"
matches [
{ :search=>"headers[server]", :regexp=>/^Roxen$/ },
{ :search=>"headers[server]", :version=>/^Roxen\/([^\s]+)$/ },
]
end
