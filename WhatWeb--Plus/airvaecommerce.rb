Plugin.define do
name "AirvaeCommerce"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Airvae Commerce 3.0 is a flexible, powerful, e-commerce shopping cart software offering clients, web developers, and I.T. professionals the perfect solution to deploy sophisticated, extensible, e-commerce solutions."
website "http://www.airvaecommerce.com/"
dorks [
'"powered by AirvaeCommerce" -Vulnerability'
]
matches [
    {:text=>'<link href="/conf/minify/f=imgs/store.css&142" rel="stylesheet" media="screen">', :version=>"3.x"},
    {:text=>'<link href="imgs/store.css" rel="stylesheet" media="screen">'},
    {:text=>'E-Commerce Shopping Cart Software'},
    {:version=>/<a href="http:\/\/www.airvaecommerce.com">Powered by AirvaeCommerce ([\d\.]+) - E-Commerce Shopping Cart Software<\/a><br><br>/}
]
end
