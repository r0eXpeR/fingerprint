Plugin.define do
name "Intoto-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Intoto router"
website "http://www.intoto.com/"
dorks [
'intitle:"Device Manager" "To administer this device you must first login"'
]
matches [
    {:certainty=>25, :model=>/<td class="headtext" nowrap>Router Model: (<font size=2>)?<b>([^\s^<]+)[\s]*(&nbsp;)?<\/b><\//, :offset=>1},
    {:certainty=>25, :text=>'<td class="headtext" nowrap><font class="yellowbullet">&#149;</font> <a href="javascript:telnetToBox();">Telnet</a></td>'},
    {:regexp=>/<body bgcolor=#E6E6E6 leftmargin=0 topmargin=0 marginheight=0 marginwidth=0 style="padding: [\d]{1,2}px" onload="javascript:usrnameFocus\(\);javascript:isValidBrowser\(\);/},
    {:search=>"headers", :text=>'Intoto Http Server'},
    {:search=>"headers[server]", :version=>/^Intoto Http Server v([^\s]+)$/},
    {:text=>'<td class="greytitle" nowrap><b>About Device Manager </b></td> '}
]
end
