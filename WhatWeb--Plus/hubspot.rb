Plugin.define do
name "HubSpot"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "HubSpot Websites"
website "https://www.hubspot.com/"
matches [
    {:regexp=>/<!-- Start of Async HubSpot/},
    {:regexp=>/HubSpot/, :search=>'body'},
    {:search=>"headers[set-cookie]", :regexp=>/hsPagesViewedThisSession/, :name=>"hsPagesViewedThisSession cookie"},
    {:text=>'js.hubspot.com/analytics'}
]
end
