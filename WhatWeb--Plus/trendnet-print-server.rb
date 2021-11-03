Plugin.define do
name "TRENDnet-Print-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "TRENDnet Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://www.trendnet.com/products/products.asp?cat=46"
matches [
{ :text=>'<frame name="Banner" scrolling="no" noresize target="Inhalt" src="head.htm">' },
{ :url=>"/head.htm", :model=>/<td width="415" align="right" background="bg.gif" valign="bottom"><b><font size="2" color="#FFFFFF">[^<]+ Print Server<br>([^<]{5,15})<\/font><\/b><\/td>/ },
{ :certainty=>25, :version=>/^PRINT_SERVER WEB ([\d\.]+)$/, :search=>"headers[server]" },
]
end
