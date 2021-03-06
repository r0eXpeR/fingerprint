Plugin.define do
name "Level1-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Level1 Router"
website "http://uk.level1.com/"
dorks [
'intitle:"WBR" intitle:"Wireless Broadband NAT Router Web-Console"'
]
matches [
{ :model=>/<TITLE>(WBR-[^\s]+) Wireless Broadband NAT Router Web-Console<\/TITLE>/ },
{ :url=>"/status.htm", :string=>/<!--TR><TD>MAC Address<\/TD><TD ALIGN=CENTER COLSPAN=2>([A-F\d\-]{17})<\/TD><\/TR-->/ },
{ :url=>"/bg_logo1.jpg", :md5=>"b78c9744264dadba05ba0d00d62a97b6" },
{ :certainty=>25, :text=>'<!---CAS:0003--><HTML>' },
]
end
