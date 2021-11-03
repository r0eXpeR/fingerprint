Plugin.define do
name "TROY-Serial-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TROY500 Serial Server allows connection for devices with RS232, RS422, RS485 serial ports."
website "http://www.troygroup.com/index.aspx"
matches [
{ :model=>"TROY500", :text=>'<BODY><CENTER><TABLE BORDER=0><TR ALIGN=CENTER><TD><FONT COLOR=RED SIZE=5>TROY Serial Server</FONT></TD></TR>' },
{ :model=>"TROY500", :text=>'Network Card Access Password&#058; </B><INPUT TYPE=PASSWORD SIZE=16 MAXLENGTH=16 NAME=access_psw>' },
]
passive do
	m=[]
	m << { :model=>"TROY500", :name=>"HTTP Server & Date Header" } if @headers["server"] =~ /^XCD Web Admin$/ and @headers["file-created"] =~ /^Wed, 14 Jul 1999 04:00:00 GMT$/
	m
end
end
