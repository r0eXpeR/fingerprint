Plugin.define do
name "ColdFusion"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Adobe ColdFusion application server and software enables developers to rapidly build, deploy, and maintain robust Internet applications for the enterprise."
website "http://www.adobe.com/products/coldfusion/"
dorks [
'intitle:"ColdFusion Administrator Login"'
]
matches [
    {:regexp=>/<meta name="Author" content="Copyright (\(c\)\ )?[0-9]{4}-[0-9]{4} Macromedia( Corp|, Inc)\. All rights reserved\.">/},
    {:search=>"headers", :text=>'CFTOKEN'},
    {:search=>"headers[page-completion-status]", :certainty=>75, :regexp=>/(Abnormal|Normal)/},
    {:search=>"headers[set-cookie]", :regexp=>/CFAUTHORIZATION_cfadmin=/},
    {:text=>"	{   document.write(\"<link rel='STYLESHEET' type='text/css' href='./cfadmin_ns.css'>\");}"},
    {:text=>'	<title>ColdFusion Administrator Login</title>'},
    {:text=>'	<tr><td><img src="./images/mx_copyrframe.gif" width="2" height="57" border="0" alt="ColdFusion MX" hspace="10"></td>'},
    {:text=>'	Macromedia, the Macromedia logo, Macromedia ColdFusion and ColdFusion are<br />'},
    {:text=>'/cfajax/'},
    {:text=>'<form name="loginform" action="./enter.cfm" method="POST" onSubmit="cfadminPassword.value = hex_hmac_sha1(salt.value, hex_sha1(cfadminPassword.value));" >'},
    {:text=>'<input name="cfadminPassword" type="Password" size="15" style="width:15em;" class="label" maxlength="100" id="admin_login">'},
    {:text=>'ColdFusion.Ajax'},
    {:text=>'cdm'},
    {:url=>"/CFIDE/administrator/images/AdminColdFusionLogo.gif", :md5=>"620b2523e4680bf031ee4b1538733349", :version=>"7.x"},
    {:url=>'/CFIDE/administrator/images/loginbackground.jpg', :md5=>"596b3fc4f1a0b818979db1cf94a82220", :version=>"9.x"}
]
passive do
	m=[]
	if @headers["set-cookie"]=~ /CFID=/ and @headers["set-cookie"]=~ /CFTOKEN=/
		m << { :name=>"CFID and CFTOKEN cookie" }
	end
	if @body =~ /Enter your RDS or Admin password below/
		if @body =~ /Version:[\s]*([^<]+)<\/strong><br \/>/
			m << { :version=>"#{$1}".gsub(/,/, ".") }
		end
	end
	m
end
end
