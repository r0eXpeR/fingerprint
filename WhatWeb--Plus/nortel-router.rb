Plugin.define do
name "Nortel-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nortel router"
website "http://www.nortel.com/"
dorks [
'intitle:"Nortel Secure Router" "To administer this device you must first login"'
]
matches [
{ :certainty=>25, :model=>/<td class="headtext" nowrap>Router Model: (<font size=2>)?<b>([^\s^<]+)[\s]*(&nbsp;)?<\/b><\//, :offset=>1 },
{ :text=>'<td class="greytitle" nowrap><b>About Nortel Secure Router</b></td>' },
{ :certainty=>25, :text=>'<td class="headtext" nowrap><font class="yellowbullet">&#149;</font> <a href="javascript:telnetToBox();">Telnet</a></td>' },
{ :regexp=>/<body bgcolor=#E6E6E6 leftmargin=0 topmargin=0 marginheight=0 marginwidth=0 style="padding: [\d]{1,2}px" onload="javascript:showspan\(\);javascript:positionmenu\(\);javascript:usrnameFocus\(\);/ },
{ :search=>"headers[server]", :version=>/^Nortel Http Server v([^\s]+)$/ },
]
end
