Plugin.define do
name "Cype-MSCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cype MSCMS - a CMS for managing MapleStory server stats - http://cypedev.com/"
dorks [
'intitle:"Powered By Cype" intext:"Powered By Cype MSCMS"'
]
matches [
{ :certainty=>25, :regexp=>/<title>[^\(^<]+ \(Powered by Cype\)<\/title>/ },
{ :text=>'<meta name="author" content="cypedev.com" />' },
{ :text=>"<li><i>All images and other contents related to <a href='http://maplestory.com/' target='_blank'>MapleStory</a>&trade; are owned by <a href='http://nexon.net/' target='_blank'>Nexon Corporation</a></i><br /></li>" },
{ :version=>/<li>Powered By Cype MSCMS ([\d\.]+) &copy; 20[\d]{2} <a href="http:\/\/www.imurad.net" target="_blank">CypeDEV\/iMurad.net<\/a><br \/><\/li>/ },
{ :version=>/<li>Powered By Cype MSCMS ([\d\.]+) &copy; 20[\d]{2} <a href="http:\/\/www.cypedev.com" target="_blank">Cype Developments<\/a><br \/><\/li>/ },
]
end
