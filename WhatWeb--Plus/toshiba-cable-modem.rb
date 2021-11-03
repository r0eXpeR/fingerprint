Plugin.define do
name "Toshiba-Cable-Modem"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Toshiba Cable Modem"
website "http://www.toshiba.com/"
matches [
{ :text=>"<TITLE>Toshiba Cable Modem PCX3000</TITLE>", :certainty=>75 },
{ :url=>"/pcx3k.gif", :md5=>"b70118d64dc5a404f82467bbf3858524", :model=>"PCX3000" },
{ :url=>"/up.html", :text=>"<BR><FONT color=navy size=5>Toshiba Cable Modem Diagnostics Page &nbsp;</FONT>" },
{ :url=>"/up.html", :string=>/<STRONG>CMTS MAC Address:<FONT color="#980040">([^<]+)<\/FONT><\/STRONG>/ },
{ :url=>"/up.html", :model=>/<STRONG>&nbsp;&nbsp;MODEL[\r\n]*<FONT COLOR="#980040">([^\s^<]+)<\/FONT>/ },
{ :url=>"/up.html", :firmware=>/;&nbsp;HW_REV[\r\n]*<FONT COLOR="#980040">([^\s^<]+)<\/FONT>/ },
{ :url=>"/up.html", :version=>/;&nbsp;SW_REV[\r\n]*<FONT COLOR="#980040">([^\s^<]+)<\/FONT>/ },
]
passive do
	m=[]
	m << { :model=>"PCX3000" } if @headers["server"] =~ /^PCX3000\/[\d\.]{1,5}/
	m
end
end
