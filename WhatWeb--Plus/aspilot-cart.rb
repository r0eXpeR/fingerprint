Plugin.define do
name "ASPilot-Cart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Before you spend thousands on an E-Commerce site, check out our feature rich web site and e-commerce/shopping cart solution. The power of Enterprise, the simplicity of basic carts & the usefulness you expect."
website "http://www.pilotcart.com/"
dorks [
'"Powered by Pilot Cart V" -vulnerabilities'
]
matches [
    {:regexp=>/<meta name="copyright" content="Pilot Cart, Copyright 2003-[0-9]{4} Scarab Media dba ASPilot.com - All Rights Reserved Worldwide.">/},
    {:text=>'/pilot_css_default.css'},
    {:text=>'content="Pilot Cart'},
    {:version=>/<a[^>]*href="http:\/\/www.PilotCart.com[^>]*>Powered by Pilot[^>]*Cart V.[\s]*([\d\.]+)<\/a>/i},
    {:version=>/Powered By[^<]*<a[^>]*href="http:\/\/www.aspilot.com[^>]*>Pilot[^>]*Cart V.[\s]*([\d\.]+)<\/a>/i }
]
end
