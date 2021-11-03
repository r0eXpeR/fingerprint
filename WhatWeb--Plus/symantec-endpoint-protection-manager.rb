Plugin.define do
name "Symantec-Endpoint-Protection-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Antivirus and personal firewall"
website "http://www.symantec.com/business/endpoint-protection"
dorks [
'intitle:"Symantec Endpoint Protection Manager" "You must have JavaScript enabled to use this Web page."'
]
matches [
{ :text=>'<tr><td align="left" style="font-family:Arial; font-size:18pt"><b>Symantec Endpoint Protection Manager<br>Web Access</b></td></tr>' },
{ :text=>'<!-- Now, if it is IE on Windows platform, we check to see which version of JWS is installed -->' },
{ :url=>"/portal/About.jsp", :version=>/<div style="font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; font-size:11px;">Version ([^\s^<]+)<\/div>/ },
]
end
