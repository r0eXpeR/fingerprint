Plugin.define do
name "Price-Comparison-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The price comparison script is a comprehensive solution to let you start your own professional price comparison website. The script comes with bells and whistles to make you start and run your price comparison website and keep it updated with the products and prices on regular basis."
website "http://www.kaonsoftwares.com/price-comparison-script.html"
dorks [
'"Web Administration Panel" "by Kaon Softwares. All Rights Reserved."'
]
matches [
{ :version=>/<td height="10%" valign="bottom" align="right"><font face="verdana" size="1" color="gray">&copy; Web Administration Panel .v([\d\.]+) by <a href="http:\/\/www.kaonsoftwares.com\/" class="" target="_blank">Kaon Softwares<\/a>. All Rights Reserved.<\/font><\/td>/ },
{ :version=>/<td height="19" colspan="6" align="right"><font face="verdana" size="1" color="gray">&copy; Web Administration Panel .v([\d\.]+) by <a href="http:\/\/www.kaonsoftwares.com\/" class="" target="_blank">Kaon Softwares<\/a>. All Rights Reserved.<\/font><\/td>/ },
{ :version=>/<td height="70%" valign="bottom" align="right"><font face="verdana" size="1" color="gray">&copy; Web Administration Panel .v([\d\.]+) by <a href="http:\/\/www.kaonsoftwares.com\/" class="" target="_blank">Kaon Softwares<\/a>. All Rights Reserved.<\/font><\/td>/ },
]
end
