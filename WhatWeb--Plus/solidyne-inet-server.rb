Plugin.define do
name "Solidyne-iNET-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Solidyne iNET Server - web interface for Solidyne devices"
website "http://www.solidyne.com/"
matches [
{ :text=>'<title>Solidyne iNET Server</title>' },
{ :text=>'<frame name="frLeft" scrolling="NO" id="frLeft" src="QFrLeft.aspx">' },
{ :text=>'<META HTTP-EQUIV="refresh" content="0; url=/hmi/">' },
{ :url=>"/hmi/sysapp/QLogin.aspx", :text=>'<form name="form1" method="post" action="QLogin.aspx" id="form1">' },
]
end
