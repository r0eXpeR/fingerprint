Plugin.define do
name "ispCP-Omega"
authors [
  "Andrew Horton",

]
version "0.3"
description "PHP opensource, virtual hosting system"
website "http://www.isp-control.net/"
dorks [
'Powered by ispCP Omega',
'intitle:"ispCP Omega a Virtual Hosting Control System"'
]
matches [
    {:search=>"headers", :text=>' ispCP='},
    {:text=>'<title>ispCP Omega a Virtual Hosting Control System</title>'},
    {:text=>'Powered by <a class="login" href="http://www.isp-control.net" target="_blank">ispCP Omega'},
    {:text=>'ispCP Omega a Virtual Hosting Control System'},
    {:text=>'themes/omega_original/images/login/login_lock.jpg'}
]
end
