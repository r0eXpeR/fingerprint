Plugin.define do
name "Weebly"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Weebly is a hosted CMS for ecommerce and blogs"
website "https://www.weebly.com/"
matches [
    {:search=>"headers", :text=>'intern.weebly.net'},
    {:search=>"headers[set-cookie]", :regexp=>/^is_mobile/, :name=>"is_mobile cookie"},
    {:search=>'body', :regexp=>/cdn\d+\.editmysite\.com/},
    {:text=>'wsite-page-index'}
]
end
