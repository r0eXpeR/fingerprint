Plugin.define do
name "Direct-Packet-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "directPacket Research, Inc. develops and markets secure and interoperable solutions for IP voice and video communication - Secure IPC Controller / IPC Router / Secure Endpoint Manager (SEM)"
website "http://www.directpacket.com/"
matches [
    {:search=>"headers", :text=>'DPWebServer'},
    {:text=>'<body bgcolor=#efefef link=# vlink=# text=#3f3f3f background=  >'},

    {:text=>'<td height="30" class="login"><b><font color="ffffff" size="2" face="Arial, Helvetica, sans-serif">Password</font></b></td>'},
    {:url=>"/favicon.ico", :md5=>"ee6371b0db9369cf5a88e552bedeed19"},
    {:version=>/^DPWebServer\/([\d\.]{1,3})/, :search=>"headers[server]"}
]
end
