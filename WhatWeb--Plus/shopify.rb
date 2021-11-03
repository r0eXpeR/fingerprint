Plugin.define do
name "Shopify"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Shopify CMS and ecommerce platform."
website "http://shopify.com/"
matches [
    {:regexp=>/<link[^>]+=['"]..cdn\.shopify\.com/, :certainty=>25},
    {:search=>"headers", :text=>'X-Shopid:'},
    {:search=>"headers[set-cookie]", :regexp=>/_secure_session_id/, :name=>"_secure_session_id cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/_session_id/, :name=>"_session_id cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/cart_sig/, :name=>"cart_sig cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/customer_sig/, :name=>"customer_sig cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/secure_customer_sig/, :name=>"secure_customer_sig cookie"},
    {:search=>'body', :regexp=>/sdks\.shopifycdn\.com/},
    {:text=>'<a target="_blank" class="ico ico-shopify-bag" href="//www.shopify.com">
        <span class="helper--visually-hidden">Shopify.com</span>
</a>', :name=>"Admin-Login-Page"}
]
end
