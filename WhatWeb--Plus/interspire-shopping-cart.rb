Plugin.define do
name "Interspire-Shopping-Cart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Interspire Shopping Cart is an all-in-one e-commerce and shopping cart software platform that includes absolutely everything you need to sell online and attract more customers using the power, reach and affordability of the Internet."
website "http://www.interspire.com/shoppingcart/"
dorks [
'"Powered by Interspire Shopping Cart"'
]
matches [
    {:regexp=>/				Powered by <a href="http:\/\/www.interspire.com\/shoppingcart[\/]*" target="_blank" class="PoweredBy">Interspire Shopping Cart<\/a>/},
    {:text=>'	<meta name="generator" content="Interspire Shopping Cart" />'},
    {:text=>'class="PoweredBy">Interspire Shopping Cart'},
    {:text=>'content="Interspire Shopping Cart'}
]
end
