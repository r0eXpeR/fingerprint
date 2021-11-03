Plugin.define do
name "VamCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VamCart - CakePHP Based Open Source Shopping Cart"
website "http://vamcart.com/"
dorks [
'# 5 for "VamCart" "Shipping and Returns" inurl:"page/shipping--returns.html"'
]
matches [
{ :regexp=>/<link type="text\/css" href="[^"]+\/stylesheets\/load\/vamcart\.css" rel="stylesheet"  media="screen"\/>/ },
{ :text=>'<!-- Powered by: VamCart (http://vamcart.com) -->' },
{ :text=>'<p><a href="http://vamcart.com/">PHP Shopping Cart</a> <a href="http://vamcart.com/">VamCart</a></p>' },
]
end
