Plugin.define do
name "TRENDnet-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TRENDnet router"
website "http://www.trendnet.com/"
matches [
{ :text=>'<link rel="stylesheet" rev="stylesheet" href="ubicom_style.css" type="text/css" />' },
{ :version=>/<META HTTP-EQUIV="Content-Type"CONTET="text\/html; cahrset=ks_c_5601-1987">[\s]+<TITLE>Web Client [^<]+ v([^\s^<]+)<\/TITLE>/ },
{ :model=>/<title>TRENDnet ([^\|]+) \|[\s]+Login[\s]+<\/title>/ },
]
end
