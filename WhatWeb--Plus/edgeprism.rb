Plugin.define do
name "EdgePrism"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Edge Prism Content Delivery Network (CDN)"
matches [
    {:search=>"headers", :text=>'EdgePrism'},
    {:search=>"headers", :text=>'EdgePrismSSL'},
    {:search=>"headers[server]", :regexp=>/^EdgePrismSSL/},
    {:search=>"headers[server]", :version=>/^EdgePrism\/([^\s]+)$/}
]
end
