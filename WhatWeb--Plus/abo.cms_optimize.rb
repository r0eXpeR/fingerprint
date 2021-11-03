Plugin.define do
name "ABO_CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "ABO.CMS"
website "http://www.abocms.com/"
matches [
    {:search=>"headers", :text=>'ABO.CMS'},
    {:search=>"headers", :text=>'a-powered-by'},
    {:version=>/^ABO\.CMS( E-commerce| Corporative)? ([\d\.]+)/, :offset=>1 , :search=>"headers[a-powered-by]"}
]
end
