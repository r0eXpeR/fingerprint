Plugin.define do
name "ExtremeWare"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Extreme Networks ExtremeWare device"
website "http://www.extremenetworks.com/services/software-userguide.aspx"
dorks [
'intitle:"ExtremeWare Management Interface"'
]
matches [
    {:md5=>"a18d6970836e3302e4d6d085e8f9d31b", :url=>"/Images/extremelogan"},
    {:md5=>"bf368990304c878ce2924bc21b3f06d9", :url=>"/Images/extremelogan"},
    {:search=>"headers", :text=>'ExtremeWare'},
    {:search=>"headers[server]", :version=>/^ExtremeWare\/([^\s]+)$/},
    {:text=>'<center><img src="Images/extremelogan"><a href="extremebasepage" target="_top"><h2>Logon</h2></a><P><P><TABLE BORDER="0"><TR><TD NOWRAP><TT><FONT COLOR="#000000">'},
    {:text=>'<frame src="extremetop'},
    {:text=>'<title>ExtremeWare Management Interface</title>'}
]
end
