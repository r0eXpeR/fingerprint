Plugin.define do
name "Access-Control-Allow-Methods"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Specifies the method or methods allowed when accessing a resource"
website "http://www.w3.org/TR/2008/WD-access-control-20080912/"
matches [
    {:search=>"headers", :text=>'Access-Control-Allow-Methods'},
    {:search=>"headers[access-control-allow-methods]", :string=>/(.+)/}
]
end
