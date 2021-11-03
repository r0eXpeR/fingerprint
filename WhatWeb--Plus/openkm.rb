Plugin.define do
name "OpenKM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenKM - Open Source Electronic Document Management System"
website "http://www.openkm.com/en/"
dorks [
'"Welcome to OpenKM" intitle:"OpenKM login"'
]
matches [
{ :text=>'<form name="login" method="post" action="j_security_check" onsubmit="setCookie()">' },
{ :regexp=>/<title>OpenKM Login<\/title>[\s]+<\/head>[\s]+<body onload="document\.forms\[0\]\.elements\[0\]\.focus\(\)">/ },
]
end
