Plugin.define do
name "UnBounce"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "UnBounce - Landing page system."
website "https://www.unbounce.com/"
matches [
    {:search=>"headers[set-cookie]", :regexp=>/^ubpv/, :name=>"ubpv cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^ubvs/, :name=>"ubvs cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^ubvt/, :name=>"ubvt cookie"},
    {:search=>'body', :regexp=>/ubembed\.com/}
]
end
