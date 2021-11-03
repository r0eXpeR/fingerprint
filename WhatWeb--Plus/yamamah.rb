Plugin.define do
name "Yamamah"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Yamamah - Free photo Gallery"
website "www.yamamah.org/home/"
dorks [
'"Powered By : Yamamah Version 1.00" -dork -exploit'
]
matches [
{ :version=>/<p>Copyright &copy; [\d]{4}  All rights reserved. Powered By : <a href="http:\/\/www.yamamah.org" title="Yamamah">Yamamah Version ([\d\.]{1,5})<\/a><\/p>/ },
{ :text=>'<meta name="Author" content="Majed Al-Mulihani - majed@modernsys.net" />' },
{ :text=>'<meta name="Description" content="Yamamah is free photo gallery cms" />' },
]
end
