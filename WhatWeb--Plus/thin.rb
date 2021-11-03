Plugin.define do
name "thin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Thin is a Ruby web server that glues together 3 of the best Ruby libraries in web history: the Mongrel parser, Event Machine, and Rack"
website "http://code.macournoyer.com/thin/"
matches [
{ :search=>"headers[server]", :version=>/^thin ([^\s]+) codename (.+)$/ },
{ :search=>"headers[server]", :string=>/^thin [^\s]+ (codename .+)$/ },
]
end
