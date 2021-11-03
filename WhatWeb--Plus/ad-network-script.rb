Plugin.define do
name "Ad-Network-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The ad network script is a comprehensive solution to let you start your own professional ad network website. The script comes with bells and whistles to make you start and run your ad network website and to monitor the daily sales and delivery of ads on regular basis."
website "http://www.kaonsoftwares.com/ad-network-script.html"
dorks [
'"Web Administration Panel" "by Kaon Softwares. All Rights Reserved."'
]
matches [
{ :version=>/<td width="100%" height="33" bgcolor="#ED7900" class="copyright">&copy; Web Administration Panel .v([\d\.]+) by <a href="http:\/\/www.kaonsoftwares.com\/" class="copyright" target="_blank">Kaon Softwares<\/a>. All Rights Reserved.<\/td>/ },
{ :version=>/<td height="70%" valign="bottom" align="right"><font face="verdana" size="1" color="gray">&copy; Web Administration Panel .v([\d\.]+) by <a href="http:\/\/www.kaonsoftwares.com\/" class="" target="_blank">Kaon Softwares<\/a>. All Rights Reserved.<\/font><\/td>/ },
]
end
