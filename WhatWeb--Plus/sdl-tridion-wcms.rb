Plugin.define do
name "SDL-Tridion-WCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SDL Tridion WCMS - Web Content Management System (WCMS)"
website "http://www.sdl.com/en/wcm/products/sdltridion/default.asp"
matches [
{ :search=>"headers[product-version]", :version=>/^(.+)$/ },
{ :search=>"headers[product]", :string=>/^Tridion (20[\d]{2}) Dynamic Content Web Application$/ },
]
end
