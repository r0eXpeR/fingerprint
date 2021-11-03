Plugin.define do
name "4D"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "4D web application deployment server"
website "http://www.4d.com/products.html"
matches [
    {:search=>"headers", :text=>'Server:4D'},
    {:search=>"headers[server]", :version=>/^4D_v[\d]{1,2}(_SQL)?\/([\d\.]+)$/, :offset=>1 }
]
end
