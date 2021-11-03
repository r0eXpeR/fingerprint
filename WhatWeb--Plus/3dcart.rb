Plugin.define do
name "3dcart"
authors [
  "Napz <napzs@rocketmail.com>", 

  "Andrew Horton", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.3"
description "3dcart - The 3dcart Shopping Cart Software is a complete ecommerce solution for anyone."
website "http://www.3dcart.com/"
dorks [
'"powered by 3dcart"'
]
matches [
    {:regexp=>/(?:twlh(?:track)?\.asp|3d_upsell\.js)/, :search=>'body'},
    {:search=>"headers", :text=>'3dvisit'},
    {:search=>"headers", :text=>'X-Powered-By: 3DCART'},
    {:search=>"headers[set-cookie]", :regexp=>/3dvisit/},
    {:search=>"headers[set-cookie]", :regexp=>/^affiliate\s/, :name=>"affiliate cookie", :certainty=>25 },
    {:search=>'headers[x-powered-by]', :regexp=>/3DCART/},
    {:text=>'<!--END: 3dcart stats-->'},
    {:text=>'<!--START: 3dcart stats-->'},
    {:text=>'powered by 3dcart'}
]
end
