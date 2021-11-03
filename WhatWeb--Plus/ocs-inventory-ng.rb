Plugin.define do
name "OCS-Inventory-NG"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open Computers and Software Inventory Next Generation - computer hardware management - http://www.ocsinventory-ng.org/en/"
dorks [
'intitle:"OCS Inventory" "Ver" inurl:"index.php?av="'
]
matches [
{ :text=>"<LINK REL='StyleSheet' TYPE='text/css' HREF='css/ocsreports.css'>" },
{ :version=>/<img src=image\/banner-ocs\.png><\/a><\/td><td width='33%' align='right'>[\s]+<b>Ver\. ([^&]+)&nbsp&nbsp&nbsp;<\/b>/ },
]
end
