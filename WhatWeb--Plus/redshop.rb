Plugin.define do
name "RedShop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ASP Powered shopping cart software [Chinese]"
website "http://www.rednetcms.com/redshop/"
matches [
{ :text=>'Powered by:<a href="http://www.rednetcms.com/redshop" target="_blank">Redshop</a>' },
{ :text=>'<link href="images/redcms.css" rel="stylesheet" type="text/css" />' },
]
end
