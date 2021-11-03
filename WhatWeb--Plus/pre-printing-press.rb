Plugin.define do
name "Pre-Printing-Press"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A complete printing press website script contains all features required for online printing business. Developed in PHP, MYSQL and Flash AS3, with all browsers compatibility and easy to navigate."
website "http://www.preprojects.com/printing.asp"
dorks [
'"Copyright PreProjects.com All Rights Reserved" inurl:"product_desc.php?pid"'
]
matches [
{ :text=>'<p align="left"><select id="mylist" name="mylist" onchange = "go()" style="font-family:' },
{ :text=>'<input id="ib_attrib_disk_quantity-2" type="radio" onClick="showsubcat(this.value)" value="olduser" name="allusers" />' },
{ :text=>'<div align="center">&copy; Copyright PreProjects.com All Rights Reserved</div>' },
]
end
