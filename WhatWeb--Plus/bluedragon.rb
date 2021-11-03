Plugin.define do
name "BlueDragon"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "BlueDragon for the Microsoft .NET Framework allows you to natively integrate and deploy your ColdFusion applications on the .NET platform."
website "http://www.newatlanta.com/products/bluedragon/product_info/overview.cfm"
matches [
    {:search=>"headers", :text=>'BlueDragon'},
    {:version=>/BlueDragon Server (JXAS|JX)/, :search=>"headers[server]"},
    {:version=>/BlueDragon Server( JXAS| JX)?(\/| )([\d\.]+)/, :offset=>2, :search=>"headers[server]"},
    {:version=>/BlueDragon Server\/([^\s^,]+)/, :search=>"headers[x-powered-by]"}
]
end
