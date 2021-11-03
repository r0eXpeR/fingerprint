Plugin.define do
name "VP-ASP"
authors [
  "Andrew Horton",

]
version "0.5"
description "VP-ASP (Virtual Programming - ASP) Shopping Cart. Free & commercial versions. http://johnny.ihackstuff.com/ghdb/?function=detail&id=324"
website "www.vpasp.com"
matches [
    {:certainty=>75, :ghdb=>'filetype:asp inurl:"shopdisplayproducts.asp"'},
    {:certainty=>75, :text=>'shopdisplayproducts.asp?id='},
    {:certainty=>75, :text=>'src="vs350.js"'},
    {:regexp=>/<a[^>]+>Powered By VP-ASP Shopping Cart<.a>/},
    {:regexp=>/vs350\.js/, :search=>'body'},
    {:text=>'<a href="http://www.vpasp.com">Powered By VP-ASP Shopping Cart</a>'},
    {:text=>'<a href="http://www.vpasp.com">Shopping Cart</a> powered by VP-ASP</p>'},
    {:version=>/<title>VP-ASP Shopping Cart ([^ <]*)/,  :name=>"powered by title"}
]
end
