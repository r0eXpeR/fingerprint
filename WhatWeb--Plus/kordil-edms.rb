Plugin.define do
name "Kordil-EDMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kordil EDMS - Electronic Document Management System"
website "http://www.kordil.com/"
dorks [
'intitle:"Login settings" "Kordil EDMS Official Website"'
]
matches [
{ :text=>'stm_aix("p6i3","p1i0",[0," Kordil EDMS\\\' website","","",-1,-1,0,"http://www.kordil.net"],150,20);' },
{ :search=>"headers[location]", :regexp=>/https?:\/\/[^\/]+kordil_edms\/documents\.php$/ },
{ :url=>"/favicon.ico", :md5=>"629ccc774aed95b2c6bec91151f7292d" },
{ :version=>/<center><font face="Arial" size="2">Kordil EDMS v([^<]+)<\/font><\/center>/ },
]
end
