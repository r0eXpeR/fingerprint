Plugin.define do
name "ipTIME-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ipTIME Rrouter [Korean] - developed by EFM Networks"
website "http://www.iptime.co.kr/~iptime/prd.php?pf=3"
matches [
    {:model=>/<head><title>EFM Networks ipTIME ([A-Z0-9]+)<\/title>/},
    {:model=>/<head><title>EFM networks - ipTIME ([A-Z0-9]+)<\/title>/},
    {:text=>'href=iptime.css'},
    {:text=>'networks - ipTIME'},
    {:url=>"/login/login.cgi", :firmware=>/(No IP|[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3})<\/span><br>[\s]*<span class=item_text><b>(F\/W )?Version ([\d\.]+)<\/b><\/span>/, :offset=>2 },
    {:url=>"/login/login.cgi", :string=>/([\d]{1,3}\.[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3})<\/span><br>[\s]*<span class=item_text><b>Version [\d\.]+<\/b><\/span>/}
]
end
