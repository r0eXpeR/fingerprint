Plugin.define do
name "Mission-Control-Application-Shield"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mission Control Application Shield functions as a Web Application Firewall (WAF) and offers the following features: SSL offloading, single sign-on, high availability through system redundancy, backend server failover and load balancing, session fixation, cookie encryption, different methods of authentication (Radius, NTLM/Kerberos, LDAP), header and form validation and a live log viewer"
website "http://www.open.ch/1_1_2_1.html"
dorks [
'intitle:"Application Shield Notification" inurl:"CookieCheckError.shtml?trg="'
]
matches [
{ :text=>'<img id="logo" src="/srm-error-pages/images/logo.gif" alt="mission control application shield" ></td><td><p class="notification">Notification</p></td>' },
{ :search=>"headers[server]", :regexp=>/^Mission Control Application Shield$/ },
]
end
