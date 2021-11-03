Plugin.define do
name "nopCommerce"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "nopCommerce is an ASP.NET based open-source ecommerce solution "
website "https://www.nopcommerce.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^Nop.customer/, :name=>"Nop.customer cookie" },
] 
end
