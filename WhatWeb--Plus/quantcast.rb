Plugin.define do
name "Quantcast"
authors [
  "Andrew Horton",

]
version "0.1"
description "Visitor demographics and statistics. www.quantcast.com"
matches [
    {:name=>"quant.js", :regexp=>/<script[^>]+src=["']http:\/\/edge.quantserve.com\/quant.js["']/},
    {:regexp=>/\.quantserve\.com.quant\.js/, :search=>'body'}
]
end
