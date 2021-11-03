Plugin.define do
name "HostBill"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HostBill - Billing software"
website "http://hostbillapp.com/"
dorks [
'inurl:"index.php?/tickets/new/" "Powered by HostBill"'
]
matches [
    {:text=>'<!-- part below is not css valid. remove it if you want this document to be css valid -->'},
    {:text=>'</div><br/><center>Powered by <a href="http://hostbillapp.com" target="_blank"><strong>HostBill</strong></a></center><br/></div>'},
    {:text=>'<strong>HostBill'},
    {:text=>'Powered by <a href="http://hostbillapp.com'}
]
end
