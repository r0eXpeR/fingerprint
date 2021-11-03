Plugin.define do
name "SiteMajic"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SiteMajic - Web Content Management System service"
website "http://www.sitemajic.com/"
dorks [
'"Website Powered by SiteMajic"'
]
matches [
{ :text=>"<td width=109 align='left'><input type='text' name='UserName' size='20' style='font-family: Arial; font-size: 8pt;' onKeyPress=\"if (event.keyCode == 13) { document.frm.Password.focus(); return false;	} else return true;\" ></td>" },
{ :text=>"Website Powered by <a href='http://www.sitemajic.com' style='text-decoration:none'>SiteMajic</a>" },
]
end
