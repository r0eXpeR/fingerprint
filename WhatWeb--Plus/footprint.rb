Plugin.define do
name "Footprint"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Caching server"
matches [
    {:regexp=>/^Footprint/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Footprint'},
    {:version=>/^Footprint ([\d\.]+)\/FPMCP$/, :search=>"headers[server]"}
]
end
