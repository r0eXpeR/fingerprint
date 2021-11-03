Plugin.define do
name "Inout-Adserver"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Inout Adserver  is powerful, feature rich, fully customizable PayPerClick advertiser/publisher networking script from inoutscripts.com. Advertisers can register into adserver and can post their text/ banner/catalog PayPerClick(PPC) ads."
website "http://www.inoutscripts.com/products/adserver/"
dorks [
'"Powered by Inoutscripts"'
]
matches [
    {:text=>'<title>Inout Adserver - Pay Per Click Advertising Expert!</title>'},
    {:text=>'<title>Inout Search Engine Admin Login</title>'},
    {:text=>'Powered by <a href="http://www.inoutscripts.com/?r=0">Inoutscripts</a>', :certainty=>75 },
    {:text=>'Powered by Inoutscripts'},
    {:text=>'function trim(stringValue){return stringValue.replace(/(^\s*|\s*$)/, "");}', :certainty=>75}
]
end
