Plugin.define do
name "Ultimate-Bulletin-Board"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Since 1997, thousands of websites have chosen UBB for their forum software solution. With the integrated Portal and Photo Gallery (UBB.Gallery) you can create your entire website using UBB without the need to buy anything else"
website "http://ubbcentral.com/"
dorks [
'"Powered by UBB.threads"'
]
matches [
{ :certainty=>75, :ghdb=>'filetype:cgi inurl:/ultimatebb.cgi' },
{ :version=>/<meta name="generator" content="UBB\.threads ([\d\.]+)" \/>/ },
{ :version=>/<center>Powered by <a target="_blank" style="TEXT-DECORATION: none; COLOR: #000066; FONT-SIZE: 10px" href="http:\/\/www.php121.com"><U>PHP121<\/U><\/a> v([\d\.]+)<\/center>/ },
{ :version=>/<a href="http:\/\/www.groupee.com\/landing\/goto\.php\?a=ubb\.classic">Powered by UBB.classic&trade;[\s]+([\d\.]+)(<!-- [\d\.]+ -->)?<\/a>/ },
]
end
