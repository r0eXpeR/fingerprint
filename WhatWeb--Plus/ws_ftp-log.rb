Plugin.define do
name "WS_FTP-log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin extratcs ftp servers from WS_FTP log files - As the leading developer of secure and managed file transfer solutions, Ipswitch offers WS_FTP Professional.the most secure and easy-to-use FTP client available."
website "http://www.ipswitchft.com/products/ws_ftp_pro/index.aspx?n=1&k_id=ipshome"
matches [
{ :version=>/^[0-9]+.[0-9]{2}.[0-9]{2} [0-9]{2}:[0-9]{2} [A|B]{1} [^>]*> ([^\ ]+) / },
]
end
