Plugin.define do
name "LuxCal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LuxCal is a free user-friendly and lightweight web based event calendar. Requires PHP and MySQL"
website "http://www.luxsoft.eu/"
dorks [
'"powered by LuxSoft" "LuxCal" "Log In" Monday Tuesday Wednesday Thursday Friday Saturday Sunday'
]
matches [
{ :certainty=>75, :text=>'<meta name="description" content="LuxCal web calendar - a LuxSoft product" />' },
{ :certainty=>75, :text=>'<link rel="shortcut icon" href="lcal.ico" />' },
{ :certainty=>75, :text=>'<meta name="author" content="Roel Buining" />' },
{ :text=>"<span class=\"floatR\"><a href=\"http://www.luxsoft.eu\"><font size='1'>powered by </font><i><b><font size='2' color='#0033FF'>Lux</font><font size='2' color='#AA0066'>Soft</font></b></i></a></span>" },

{ :version=>/<b><i><font size='2' color='#0033FF'>Lux<\/font><font size='2' color='#AA0066'>Cal<\/font><\/i><\/b><font size='1'> version ([^<]+)<\/font>/ },

]
end
