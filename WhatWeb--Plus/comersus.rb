Plugin.define do
name "ComersusCart"
authors [
  "Andrew Horton",

]
version "0.3"
description "ComersusCart is an open-source shopping cart using ASP. Comersus is an active server pages software for running a professional store, seamlessly integrated with the rest of your web site. Comersus Cart is free and it can be used for commercial purposes. Full source code included and compatible with Windows and Linux Servers."
website "http://www.comersus.com/"
matches [
{:regexp=>/<meta NAME="DESCRIPTION" CONTENT="Powered by Comersus http:\/\/www.comersus.com">/i },
{:regexp=>/<title>[^<]*Powered by Comersus ASP Shopping Cart Open Source[^<]*<\/title>/i },
{:regexp=>/<a href="[^"]*comersus_showCart.asp">/i },
{:regexp=>/Powered by <[^>]*>Comersus<\/a>/i }
]
end
