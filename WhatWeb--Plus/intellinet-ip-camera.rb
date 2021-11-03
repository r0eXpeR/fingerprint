Plugin.define do
name "Intellinet-IP-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Intellinet IP camera"
website "http://www.intellinet-network.com"
dorks [
'intitle:"INTELLINET" intitle:"IP Camera Homepage"'
]
matches [
    {:firmware=>/<font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;FIRMWARE VERSION: ([A-Z0-9\.]+)[\s]*</},
    {:text=>'    <font size="4" color="#FFFFFF" face="Arial">NETWORK IP CAMERA<br>'},
    {:text=>'<TITLE>::::: INTELLINET IP Camera Homepage :::::</TITLE>'},
    {:text=>'<TITLE>INTELLINET NETWORK SOLUTIONS: Professional Series Network IP Camera Homepage</TITLE>'},
    {:text=>'<TITLE>INTELLINET NETWORK SOLUTIONS: Professional Series Wireless Network IP Camera Homepage</TITLE>', :model=>["Wireless"]},
    {:text=>'<title>::::: INTELLINET ACTIVE NETWORKING Network IP Camera Homepage :::::</title>'},
    {:text=>'Copyright &copy;  INTELLINET NETWORK SOLUTIONS'},
    {:text=>'http://www.intellinet-network.com/driver/NetCam.exe'}
]
end
