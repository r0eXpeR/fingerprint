Plugin.define do
name "ORITE-301-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Orite IC301 web cam interface"
dorks [
'intitle:"Orite IC301" | intitle:"ORITE Audio IP-Camera IC-301" -the -a'
]
matches [
{ :text=>'	<TITLE>ORITE Audio IP-Camera IC-301 </TITLE>' },
{ :text=>'<TITLE>Orite IC301</TITLE>' },
{ :text=>'	var s=\'<frameset cols="220, *" id=totalframeset frameborder="NO" border="0" framespacing="0" noresize>\'' },
]
end
