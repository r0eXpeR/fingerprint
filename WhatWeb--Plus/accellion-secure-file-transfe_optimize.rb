Plugin.define do
name "Accellion-Secure-File-Transfer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Accellion Secure File Transfer (SFT)"
website "http://www.accellion.com/"
dorks [
'inurl:"courier/1000@/mail_user_login.html"'
]
matches [
    {:regexp=>/<link href="custom_template\/[\d]+\/wcStyle\.css" type="?text\/css"? rel="?stylesheet"?>/i },
    {:search=>"headers", :text=>'sfcurl=deleted;'},
    {:search=>"headers[location]", :regexp=>/\/courier\/[\d]+@\/mail_user_login\.html\?$/},
    {:search=>"headers[set-cookie]", :regexp=>/sfcurl=deleted;/, :certainty=>25},
    {:text=>'<form name="form1" method="post" action="mail_user_login_exec.html" onsubmit="document.form1.submit.disabled=true;">'},
    {:text=>'Secured by Accellion'},
    {:url=>"/favicon.ico", :md5=>"9423d9e9ce004c29dd5bc622f0112123"}
]
end
