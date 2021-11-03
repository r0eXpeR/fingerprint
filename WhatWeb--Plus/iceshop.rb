Plugin.define do
name "ICEshop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ICEshop e-commerce"
website "http://www.iceshop.nl/"
dorks [
'"Powered by ICEshop"'
]
matches [
    {:text=>'<div id="iceshop">'},
    {:text=>'<dl class="box boxLogo  box02 iceshop">'},
    {:text=>'<p id="power_by"><a href="http://www.iceshop.nl" target="_blank">Powered by ICEshop</a></p>'},
    {:text=>'Powered by <a class="link copyright02" href="http://www.iceshop.nl/" target="_blank">ICEshop</a>'},
    {:text=>'Powered by ICEshop'}
]
end
