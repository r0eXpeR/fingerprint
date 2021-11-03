Plugin.define do
name "Sipura-VoIP-Phone"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sipura VoIP phone. Cisco Systems acquired Sipura Technologies for its Linksys division in 2005."
website "http://www.sipura.net/"
dorks [
'intitle:"Sipura SPA Configuration" inurl:admin -ext:htm'
]
matches [
{ :text=>'<form action="bsipura.spa" method="POST">' },
{ :text=>'<img width="100%" src="/spabanner.jpg" border="0" alt="Sipura Technology Inc">' },
{ :model=>/<tr bgcolor="#dcdcdc"><td>Product Name:<td><font color="darkblue">([^<]+)<\/font><td>Serial Number:<td>/ },
{ :version=>/<tr bgcolor="#d3d3d3"><td>Software Version:<td><font color="darkblue">([^<]+)<\/font><td>Hardware Version:<td><font color="darkblue">[^<]+<\/font>/ },
{ :firmware=>/<tr bgcolor="#d3d3d3"><td>Software Version:<td><font color="darkblue">[^<]+<\/font><td>Hardware Version:<td><font color="darkblue">([^<]+)<\/font>/ },
{ :string=>/<tr bgcolor="#dcdcdc"><td>MAC Address:<td><font color="darkblue">([A-F\d]{12})<\/font><td>Client Certificate:<td>/ },
{ :module=>/<\/font><a href="\/calllog\.htm" target=_calllog_[\d]+><font class=swalft>(Call History)<\/font><\/a><\/p><\/div>/ },
{ :url=>"/pdir.htm", :string=>/<td>[\d]+\.<td>&nbsp;<input class="inputc" size="40" name="[\d]+" value="(n=[^;]*;p=[\d]+)" maxlength=[\d]+>/ },
]
end
