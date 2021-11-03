Plugin.define do
name "Spree-Commerce"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Spree Commerce is an open source e-commerce solution"
website "http://spreecommerce.com/"
dorks [
'inurl:"products?utf8=" inurl:keywords'
]
matches [
{ :text=>'<div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>' },
]
end
