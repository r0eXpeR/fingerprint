Plugin.define do
name "BroadWin-WebAccess"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BroadWin WebAccess is a web browser-based software package for human-machine interfaces (HMI), and supervisory control and data acquisition (SCADA)."
website "http://broadwin.com/Client.htm"
dorks [
'inurl:"broadweb/bwconfig.asp"'
]
matches [
    {:search=>"headers", :text=>'/broadWeb/bwRoot.asp?username='},
    {:search=>"headers[location]", :account=>/^\.\/broadWeb\/bwRoot\.asp\?username=([^\s^&]+)$/},
    {:text=>'<!-- #BeginTemplate "/Templates/bw_templete1.dwt" -->'},
    {:text=>'<form name="login" action="/broadweb/user/signin.asp" method="post" onSubmit="return validateUserName()">'},
    {:text=>'<frame marginheight="0" marginwidth="0" name="rightRunFrame" noresize src="bwRunRight.asp">'},
    {:text=>'<html><!-- #BeginTemplate "/Templates/bw_templete1.dwt" -->'},
    {:url=>"/favicon.ico", :md5=>"e852c819348eb49dcc549cd594e776ee"},
    {:version=>/<div style="position:relative;top:15;width:870px; height:15px">[\s]+<font class=e5>[^:^<]+ : ([\d\.]+-[\d]{4}\.[\d]{2}\.[\d]{2})<\/font>[\s]+<\/div>/}
]
end
