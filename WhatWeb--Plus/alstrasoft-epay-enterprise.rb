Plugin.define do
name "AlstraSoft-EPay-Enterprise"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AlstraSoft EPay Enterprise - peer to peer payment system - Requires PHP and MySQL"
website "http://www.alstrasoft.com/epay_enterprise.htm"
dorks [
'"Powered by EPay Enterprise" inurl:"shop.htm?cid="'
]
matches [
    {:search=>"headers[set-cookie]", :regexp=>/ln=English/, :certainty=>25},
    {:text=>"<tr><td class=capl><a href='/shop.htm?action=view'>TOP CATEGORIES</a>&nbsp;&nbsp;&gt;&gt;&nbsp;"},
    {:text=>' <tr><td align=center><input class=submit type=submit name=send value="LOGIN NOW!"></td></tr>'},
    {:text=>'/shop.htm?action=view'},
    {:text=>'<a class=copy href="http://www.alstrasoft.com/" target="_blank">Powered by EPay Enterprise.</a>&nbsp;'},
    {:text=>'Powered by EPay Enterprise'}
]
end
