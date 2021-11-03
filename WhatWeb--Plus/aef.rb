Plugin.define do
name "AEF"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Advanced Electron Forum (AEF) - bulletin board software - requires PHP and MySQL"
website "http://www.anelectron.com/"
dorks [
'"Powered By AEF" "Electron Inc."'
]
matches [
{ :certainty=>75, :text=>'<meta name="keywords" content="aef, advanced, electron, forum, bulletin, board, software" />' },
{ :version=>/<a href="http:\/\/www\.anelectron\.com">Powered By AEF ([^<]{1,256})<\/a> &copy; [\d]{4}/ },
{ :search=>"headers[set-cookie]", :regexp=>/AEFCookies[\d]*\[aefsid\]=/ },
]
end
