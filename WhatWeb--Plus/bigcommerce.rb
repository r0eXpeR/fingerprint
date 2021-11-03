Plugin.define do
name "BigCommerce"
authors [
  "Claudio Salazar <csalazar at spect dot cl>",

  "Bhavin Senjaliya", 

  "Andrew Horton", 

]
version "0.3"
description "Fully loaded with killer features."
website "http://www.bigcommerce.com/"
matches [
    {:name=>"iselector.css is a common file in BigCommerce systems",
	:regexp=>/\/iselector.css/, :certainty=>25},
    {:regexp=>/<link href=[^>]+cdn\d+\.bigcommerce\.com./},
    {:regexp=>/config.AppPath = /, :certainty=>25},
    {:regexp=>/config.ShopPath = /, :certainty=>25},
    {:search=>"headers", :text=>'SHOP_SESSION_TOKEN'},
    {:search=>"headers[set-cookie]", :regexp=>/^RECENTLY_VIEWED_PRODUCTS/, :name=>"RECENTLY_VIEWED_PRODUCTS cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^SHOP_SESSION_TOKEN/, :name=>"SHOP_SESSION_TOKEN cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^fornax_anonymousId/, :name=>"fornax_anonymousId cookie"},
    {:search=>'body', :regexp=>/cdn\d+\.bigcommerce\.com./}
]
end
