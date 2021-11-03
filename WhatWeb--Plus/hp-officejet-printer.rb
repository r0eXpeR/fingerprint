Plugin.define do
name "HP-OfficeJet-Printer"
authors [
  "Andrew Horton",

]
version "0.2"
description "HP Officejet Pro and Officejet printers"
website "http://www.hp.com/products1/inkjetprinter/officejet.html"
dorks [
'intitle:"HP Officejet" inurl:index.htm'
]
matches [
    {:certainty=>25, :text=>'home.htm?cat=home&page=home'},
    {:model=>/<title>HP Officejet (Pro [A-Z0-9a-z ]+)<\/title>.*(home.htm\?cat=home&page=home|printerFrame.htm)/m},
    {:model=>/<title>HP Officejet ([^<]+)<\/title>.*<body onLoad="window.top.location.href='.\/index.htm\?cat=info&page=printerInfo/m},
    {:text=>'HP Officejet'},
    {:text=>'align="center">HP Officejet'},
    {:text=>'index.htm?cat=info&page=printerInfo'}
]
end
