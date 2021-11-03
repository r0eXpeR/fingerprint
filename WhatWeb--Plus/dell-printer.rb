Plugin.define do
name "Dell-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Dell printer web frontend - http://www.dell.com/" 
dorks [
'"Online Help" "Order Supplies" intitle:"Laser Printer" intitle:dell'
]
matches [
    {:model=>/<TITLE>Dell ([\d]{4}[a-z]+) Laser Printer<\/TITLE>/},
    {:model=>/<title>Dell Laser Printer ([A-Z]?[\d]{4}[a-z]{0,2})<\/title>/i},
    {:text=>'Dell Laser Printer'}
]
end
