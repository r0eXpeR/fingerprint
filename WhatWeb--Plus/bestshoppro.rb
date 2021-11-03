Plugin.define do
name "BestShopPro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BestShopPro"
website "http://www.bst.pl/"
dorks [
'inurl:"pokaz_podkat.php?idkat="'
]
matches [
    {:text=>'<META CONTENT="www.bst.pl" NAME=AUTHOR>'},
    {:text=>'<meta content="www.bst.pl" name="author"/>'},
    {:text=>'<td width=300 height=18 colspan=2 align=center class=tdn><b>Logowanie</b></td></tr>'},
    {:text=>'content="www.bst.pl'}
]
end
