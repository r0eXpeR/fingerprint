Plugin.define do
name "Dolphin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dolphin is built using PHP and MySQL running on Apache. It is tested and proven stable running on Linux. Dolphin will also run on Windows if needed."
website "http://www.busmgtsys.com/"
matches [
    {:text=>'<body onload="focus_username();" bottommargin="0" rightmargin="0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">'},
    {:text=>'<td NOWRAP><input name="PHP_AUTH_USER" type="text"></td>'},
    {:text=>'<td><input name="PHP_AUTH_PW" type="password"></td>'},
    {:text=>'<title>Dolphin Log In</title>'},
    {:text=>'bx_css_async'}
]
end
