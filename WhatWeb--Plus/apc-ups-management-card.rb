Plugin.define do
name "APC-UPS-Management-Card"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "APC UPS Network Management Cards allow for secure monitoring and control of an individual APC UPS via web browser, command line interface, or SNMP."
website "http://www.apc.com/products/family/index.cfm?id=98"
matches [
    {:name=>"WWW-Authenticate realm", :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="APC Management Card"$/},
    {:search=>"headers", :text=>'APC Management Card'},
    {:text=>'<td class="apclogo"><a href="http://www.apc.com"><img src="images/smapc.gif" alt="APC Website" width="59" height="17" border="0" align="top" /></a>&nbsp;&nbsp;</td>'},
    {:text=>'class="apclogo'},
    {:url=>"/RpError/SslRequired", :text=>'<td>This object on the&nbsp;APC Management Web Server&nbsp;is protected and requires a secure socket connection.<br /><br /><br /><br /><A HREF="https://'}
]
end
