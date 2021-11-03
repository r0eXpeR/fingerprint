Plugin.define do
name "WebPress"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "WebPress is the foundation on which we build web sites. It.s our unique Content Management System (CMS), flexible enough for us to build your dream site, and easy enough for you to maintain it yourself."
website "http://www.goywp.com/view/cms"
matches [
{ :text=>'Powered By <a href="http://www.ecomenterprises.com" target="_blank" class="small_text">WebPress</a><SUP><FONT SIZE="-5">TM</FONT></SUP></td>' },
{ :text=>'Powered by <a href="http://goywp.com" id="webpresslink">WebPress</a><br></p></td>' },
{ :text=>'Powered by </font><font size="1" color="#000000" face="Arial">YWP</font>' },
{ :version=>/<!-- Powered by YWP ([\d\.]+) -->/ },
{ :version=>/<meta name="generator" content="YWP ([\d\.]+)">/ },
]
end
