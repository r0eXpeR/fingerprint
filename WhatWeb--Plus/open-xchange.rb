Plugin.define do
name "Open-Xchange"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open-Xchange mail server"
website "http://www.open-xchange.com/"
dorks [
'inurl:"ox6/ox.html"',
'"You need to enable JavaScript to access the Open-Xchange Server." +Version inurl:ox'
]
matches [
{ :text=>'<noscript><div class="noscriptmsg">You need to enable JavaScript to access the Open-Xchange Server.' },
{ :text=>'<td class="browserchecktextnormal" id="browserchecktext_id">You need to enable JavaScript to access the Open-Xchange Server.' },
{ :version=>/<div class="login-bottomline">\W+<span id="[a-z]\d+[a-z]\d+">Version<\/span>\s+:\W+([^\s]+\W+[^\W]+)/ },
{ :certainty=>75, :search=>"headers[location]", :regexp=>/^https?:\/\/[^\/]+\/ox6\/ox\.html$/, :version=>"6.x" },
]
end
