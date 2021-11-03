Plugin.define do
name "Cougar"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Cougar video conferencing server"
website "http://www.cougarconference.com/"
matches [
    {:search=>"headers", :text=>'Cougar'},
    {:search=>"headers[server]", :version=>/^Cougar\/([\d\.]+)$/}
]
end
