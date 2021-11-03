Plugin.define do
name "cApexWEB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "cApexWEB - web based Backoffice client"
website "http://www.capitalsoft.com/"
dorks [
'"User Id" "Password" intitle:"cApexWEB"'
]
matches [
    {:string=>/<input type="hidden" name="dfparentdb" value="([^\s^"^>]+)">/},
    {:string=>/<input type="hidden" name="dfparentip" value="([^\s^"^>]+)">/},
    {:string=>/<input type="hidden" value="([^\s^"^>]+)"  name="dfcode">/},
    {:text=>'/capexweb.parentvalidatepassword'},
    {:text=>'<!-- Change Company & Address Line , Enter First Line for Company Name and 2nd Line of Address --->'},
    {:text=>'<form method="post" action="../servlet/capexweb.parentvalidatepassword">'},
    {:text=>'<frame name="main" src="capexmain_middle.htm" scrolling="no" target="_top">'},
    {:text=>'<td><form method="post" name="parentpage" action="../servlet/capexweb.parentvalidatepassword">'},
    {:text=>'name="dfparentdb'},
    {:text=>'var winPop = window.open("../servlet/capexweb.parentvalidatepassword?dfuserid="+dfuserid.value+"&dfpassword="+dfpassword.value+"&dfparentip="+dfparentip.value+"&dfparentdb="+dfparentdb.value+"&dfcode="+dfcode.value+"","mywin","width=550,height=550,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,fullscreen=yes");'},
    {:version=>/<title>cApexWEB ([^\s^<]+)<\/title>/}
]
end
