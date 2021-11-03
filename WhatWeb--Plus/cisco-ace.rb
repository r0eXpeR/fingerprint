Plugin.define do
name "Cisco-ACE"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cisco Application Control Engine (ACE) Device Manager"
website "http://www.cisco.com/en/US/products/ps6906/index.html"
dorks [
'inurl:"/change_password.vm?username"'
]
matches [
{ :certainty=>75, :url=>"/favicon.ico", :md5=>"5ee29688a968d3912880b3780cdde42e" },
{ :text=>'<link href="/utility/cuesStylesLogo.css" rel="stylesheet" type="text/css" />' },
{ :version=>/<div class="cuesLoginVersionInfo">Version ([^\s]+)<\/div>/ },
{ :model=>/<div class="cuesLoginProductName">ACE ([^\s]+) Device Manager<\/div>/ },
]
end
