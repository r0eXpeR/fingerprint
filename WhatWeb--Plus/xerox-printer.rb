Plugin.define do
name "Xerox-Printers"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Xerox printers web interface"
website "http://www.xerox.com/"
dorks [
'"Phaser 6250" "Printer Neighborhood" "XEROX CORPORATION" -intitle',
'inurl:"properties/aboutPrinter.html" intitle:"About Printer - Xerox Phaser"',
'intext:centreware inurl:status'
]
matches [
{ :certainty=>25, :text=>'Phaser 6250DP</title>', :model=>"Phaser 6250DP" },
{ :certainty=>25, :text=>'Phaser 6250N</title>', :model=>"Phaser 6250N" },
{ :model=>/<title> Home - Xerox (Phaser 3300MFP) <\/title>/ },
{ :url=>"/properties/aboutprinter.html", :model=>/<title> About Printer - Xerox (Phaser [^\s]+) <\/title>/ },
{ :url=>"/properties/aboutPrinter.html", :model=>/<title> About Printer - Xerox (Phaser [^\s]+) <\/title>/ },
{ :url=>"/properties/aboutprinter.html", :firmware=>/<tr>[\s]+<td width=60%>(Firmware Version OS|Operating System) <\/td>[\s]+<td width=40%>(OS | )?([^<]+)<\/td>[\s]+<\/tr>/, :offset=>2 },
{ :url=>"/properties/aboutPrinter.html", :firmware=>/<tr>[\s]+<td width=60%>(Firmware Version OS|Operating System) <\/td>[\s]+<td width=40%>(OS | )?([^<]+)<\/td>[\s]+<\/tr>/, :offset=>2 },
{ :url=>"/properties/aboutprinter.html", :firmware=>/<tr>[\s]+<td width=60%>(Networking|NIC Firmware Version)<\/td>[\s]+<td width=40%>([^<]+)<\/td>[\s]+<\/tr>/, :offset=>1 },
{ :url=>"/properties/aboutPrinter.html", :firmware=>/<tr>[\s]+<td width=60%>(Networking|NIC Firmware Version)<\/td>[\s]+<td width=40%>([^<]+)<\/td>[\s]+<\/tr>/, :offset=>1 },
{ :url=>"/properties/aboutprinter.html", :version=>/<tr>[\s]+<td width=60%>IP Core Software Version<\/td>[\s]+<td width=40%>([^<]+)<\/td>[\s]+<\/tr>/ },
{ :url=>"/properties/aboutPrinter.html", :version=>/<tr>[\s]+<td width=60%>IP Core Software Version<\/td>[\s]+<td width=40%>([^<]+)<\/td>[\s]+<\/tr>/ },
{ :text=>'	<br><font class=s4 face="Arial,Helvetica" size=4 color="#0000FF"><b><font size=4>&nbsp;&nbsp;&nbsp;&nbsp;</font>DocuPrint N2125</b></font></td>', :model=>"DocuPrint N2125" },
{ :text=>'                              color=#008000 face="Arial,Helvetica" size=2>Phaser 4500DT</font></td>', :model=>"Phaser 4500DT" },
{ :text=>'<td valign=top width=85><font class=s2 face="Arial,Helvetica" size=2 color="#008000"> Phaser 7700DN </font></td>', :model=>"Phaser 7700DN" },
{ :text=>'                              color=#008000 face="Arial,Helvetica" size=2>Phaser 8400DP-1</font></td>', :model=>"Phaser 8400DP-1" },
{ :model=>/<title>(FX[0-9A-Z]{6})-Home<\/title>/ },
]
end
