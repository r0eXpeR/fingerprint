Plugin.define do
name "DLI-LPC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Digital Loggers Inc remote switch with built-in web server for remote reboot and power control"
website "http://www.digital-loggers.com/lpc.html"
matches [
    {:search=>"headers", :text=>'DLILPC='},
    {:text=>'<FORM NAME="login" ID="login" ACTION="/login.tgi" METHOD=post>'},
    {:text=>'<FORM NAME="secin" ID="secin" ACTION="/login.tgi" METHOD=post>'},
    {:text=>'<TD><INPUT onClick="calcResponse(); return false;" TYPE="Submit" NAME="Submitbtn" VALUE="OK">'},
    {:text=>'<title>Power Controller </title>'},
    {:text=>'<tr><td align=center><h1>Warning: Insecure Authentication</h1></td></tr>'}
]
passive do
	m=[]
	m << { :name=>"DLILPC Cookie" } if @headers["set-cookie"] =~ /DLILPC=""; Version=[\d]+; Max-Age=[\d]+; Path=/
	m
end
end
