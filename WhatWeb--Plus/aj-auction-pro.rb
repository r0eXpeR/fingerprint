Plugin.define do
name "AJ-Auction-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "AJ Auction is a PHP-based Auction portal software which is a simple to use auction portal script with an effective administrative interface. You can control every aspect of your website through this all-inclusive user friendly Admin Panel with minimal server requirements."
website "http://www.ajauctionpro.com/"
dorks [
'"Powered By AJ Auction Pro" -dork'
]
matches [
{ :certainty=>25, :ghdb=>'"Powered By AJ Auction Pro"' },
{ :version=>/<td width="16%" class="site_statistics" align="left"><a class="site_statistics" href="http:\/\/www.ajauctionpro.com">Powered By AJ Auction Pro OOPD V([\d\.]{1,5})<\/a><\/td>/ },
]
end
