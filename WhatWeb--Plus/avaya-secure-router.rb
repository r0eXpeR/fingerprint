Plugin.define do
name "Avaya-Secure-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Avaya Secure Router - Hompage: http://www.avaya.com/usa/products/category--branch-routers"
matches [
    {:certainty=>25, :model=>/<td class="headtext" nowrap>Router Model: (<font size=2>)?<b>([^\s^<]+)[\s]*(&nbsp;)?<\/b><\//, :offset=>1},
    {:certainty=>25, :text=>'<td class="headtext" nowrap><font class="yellowbullet">&#149;</font> <a href="javascript:telnetToBox();">Telnet</a></td>'},
    {:search=>"headers", :text=>'Avaya Http Server'},
    {:search=>"headers[server]", :version=>/^Avaya Http Server v([^\s]+)$/},
    {:text=>'<b>About Avaya Secure Router</b>'},
    {:text=>'<font color="white" style="font-size:30px;"><span id="guiname">Avaya Secure Router</span></font>'},
    {:text=>'<span id="guiname">Avaya Secure Router'},
    {:text=>'<td class="greytitle" nowrap><b>About Avaya Secure Router</b></td>'}
]
end
