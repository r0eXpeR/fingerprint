Plugin.define do
name "Kerio-WinRoute-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kerio WinRoute Firewall"
website "http://winroute.ru/kerio_winroute_firewall.htm"
dorks [
'intitle:"Login Page - Kerio WinRoute Firewall"'
]
matches [
    {:search=>"headers", :text=>'Kerio WinRoute Firewall Embedded Web Server'},
    {:search=>"headers[server]", :regexp=>/^Kerio WinRoute Firewall Embedded Web Server$/},
    {:text=>'/gfx/kerio_logo.gif'},
    {:text=>'<meta HTTP-EQUIV="Refresh" content="0;URL=/internal/ntlm/dologin.php?internal=0">	<title>Kerio WinRoute Firewall - Login Page - Kerio WinRoute Firewall</title>'},
    {:text=>'Kerio WinRoute Firewall'},
    {:url=>"/nonauth/gfx/kerio_logo.gif", :md5=>"d9f42bd071f2f3f1dc7cdb628af4c596", :version=>"6.x"},
    {:version=>/<A HREF="\/http_restr">Web policy<\/A><br>[\s]+Kerio WinRoute Firewall ([^\s^>]+)<br>&copy;/}
]
end
