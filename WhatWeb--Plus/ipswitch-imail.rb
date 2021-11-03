Plugin.define do
name "Ipswitch-IMail"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "IMail Server matches the capabilities of Exchange without the maintenance headache or hefty price tag. From install assistance to unlimited tech support, IMail delivers your complete messaging solution."
website "http://www.imailserver.com/"
matches [
    {:regexp=>/^Ipswitch-IMail/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Ipswitch-IMail'},
    {:version=>/^Ipswitch-IMail\/([\d\.]+)$/, :search=>"headers[server]"}
]
end
