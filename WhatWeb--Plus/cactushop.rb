Plugin.define do
name "CactuShop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ASP and ASP.NET SEO optimized database-driven e-commerce storefront software."
website "http://www.cactushop.com/"
dorks [
'"Cactusoft International FZ-LLC & Cactusoft Ltd All rights reserved"'
]
matches [
    {:certainty=>75, :regexp=>/<!-- MYDEVLICNUM -->/},
    {:search=>"headers", :text=>'CactuShop'},
    {:text=>'<!-- CactuShop'},
    {:text=>'<select name="numCurrencyID" class="currencymenu" onchange="javascript:document.getElementById(\'currmenuform\').submit();">'},
    {:text=>'<select name="numCurrencyID'},
    {:version=>/<!-- CactuShop v\.?([^\s]+) license: [\s]+ -->/},
    {:version=>/<!---?[\s]+===============================================================================[\s]+CACTUSHOP v?([^\s]+) ASP SHOPPING CART/}
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /CactuShop[\d]+lang=numLanguageID=/ and @headers["set-cookie"] =~ /CactuShop[\d]+=numCurrencyID=/
		m << { :name=>"CactuShop cookies" }
	end
	m
end
end
