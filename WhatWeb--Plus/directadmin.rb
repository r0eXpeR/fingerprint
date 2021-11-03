Plugin.define do
name "DirectAdmin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Control panel for web hosting companies running Red Hat 7.x, 8.x, 9.x, Red Hat Enterprise and FreeBSD."
website "http://www.directadmin.com/"
dorks [
'intitle:"DirectAdmin Login" "DirectAdmin Login Page" "Please enter your Username and Password"'
]
matches [
    {:regexp=>/<a[^>]+>DirectAdmin<.a> Web Control Panel/},
    {:search=>"headers", :text=>'DirectAdmin Daemon'},
    {:search=>"headers", :text=>'X-Directadmin'},
    {:search=>'headers[server]', :regexp=>/DirectAdmin Daemon v([\d.]+)/,:offset=>1},
    {:text=>"onload=\"document.form.username.focus();if(document.form.referer.value.indexOf('#')==-1)document.form.referer.value+=location.hash;\">"},
    {:text=>'*{ FONT-SIZE: 8pt; FONT-FAMILY: verdana; } b { FONT-WEIGHT: bold; } .listtitle { BACKGROUND: #425984; COLOR: #EEEEEE; white-space: nowrap; } td.list { BACKGROUND: #EEEEEE; white-space: nowrap; } </style>'},
    {:text=>'<td class=listtitle colspan=2>Please enter your Username and Password</td></tr>'},
    {:text=>'<title>DirectAdmin Login</title>'},
    {:text=>'DirectAdmin Login'},
    {:version=>/^DirectAdmin Daemon v([^\s]+) Registered to /, :search=>"headers[server]"}
]
end
