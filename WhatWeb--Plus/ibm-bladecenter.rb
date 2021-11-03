Plugin.define do
name "IBM-BladeCenter"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM BladeCenter blade server management console"
website "http://www-03.ibm.com/systems/bladecenter/index.html"
dorks [
'intitle:"Log In" "Welcome to the Advanced Management Module"'
]
matches [
    {:string=>/<h1><img src="\/shared\/ibmbc[^\s^\.]+\.png" alt="IBM BladeCenter ([^\s^"]+) Advanced Management Module" border="0" \/><\/h1>/},
    {:text=>'/shared/ibmbch.png'},
    {:text=>'/shared/ibmbcs.png'},
    {:text=>'<form method="post" name="login" action="/shared/userlogin.php"><input type="hidden" name="SESSID"'},
    {:text=>'<h1><img src="/shared/ibmbc.png" alt="IBM BladeCenter Advanced Management Module" border="0" /></h1>'},
    {:text=>'<img id="logo" src="/shared/banner_logo.png" alt="IBM" width="41" height="15" />'},
    {:text=>'<img src="/shared/banner_left.jpg" width=110 height=53 alt="banner" />'},
    {:text=>'alt="IBM BladeCenter'},
    {:url=>"/shared/ibmbch.png", :md5=>"c24b87d43f33783193e98ac25fd016ee"},
    {:url=>"/shared/ibmbcs.png", :md5=>"f4f76aeba5ba885fac1d4e5bbe535f0f"}
]
end
