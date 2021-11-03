Plugin.define do
name "MD-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "MaxDev is proud to introduce MD-Pro, the most complete, flexible and reliable CMS available on the market."
website "http://www.maxdev.com/AboutMD.phtml"
dorks [
'"powered by MAXdev"'
]
matches [
{ :text=>'<a href="language/eng/dbfail.html" style="text-decoration: none;">MAXdev - Problem in Database Connection: click here to read more...</a>' },
{ :text=>'<a href="http://www.maxdev.it" target="_blank">Powered by MAXDev</a>' },
{ :regexp=>/<div class="poweredtext"><a href="javascript:opencredits\(\)">Credit(i|s)<\/a> <a href="http:\/\/www.maxdev(.it|italia.com)">Powered by MAXdev<\/a><\/div>/ },
{ :text=>'************** MAXdev - MAXdev (http://www.maxdev.it) ***********' },
{ :text=>'************** MAXdev - MAXdev (http://www.maxdev.com) ***********' },
{ :md5=>'0caf204c07776c652de251a1eb74447a', :url=>'images/logo.gif' },
{ :version=>/<meta name="generator" content="MAXdev ([\d\.]+) - http:\/\/www.maxdev.(com|it)">/ },
]
end
