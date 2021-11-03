Plugin.define do
name "FortiWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The FortiWeb family of Web application and XML firewalls protect, balance, and accelerate Web applications, databases, and the information exchanged between them."
website "http://www.fortinet.com/products/fortiweb/"
matches [
    {:search=>"headers", :text=>'FortiWeb'},
    {:search=>"headers[server]", :regexp=>/^FortiWeb$/},
    {:search=>"headers[server]", :version=>/^FortiWeb-([\d\.]+)$/}
]
end
