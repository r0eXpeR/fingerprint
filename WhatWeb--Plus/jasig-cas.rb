Plugin.define do
name "Jasig-CAS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Jasig Central Authentication Service (CAS) is an authentication system originally created by Yale University to provide a trusted way for an application to authenticate a user."
website "http://www.jasig.org/cas"
dorks [
'"Powered by Jasig Central Authentication Service"',
'inurl:"cas/login?service="'
]
matches [
    {:text=>'<!-- Congratulations on bringing CAS online!  The default authentication handler authenticates where usernames equal passwords: go ahead, try it out.  -->'},
    {:text=>'<p>Powered by <a href="http://www.jasig.org/cas">Jasig Central Authentication Service</a></p>'},
    {:text=>'<title>CAS &#8211; Central Authentication Service</title>'},
    {:text=>'Powered by <a href="http://www.jasig.org/cas'},
    {:version=>/<p>Powered by <a href="http:\/\/www\.ja-?sig\.org\/(products\/)?cas">Jasig Central Authentication Service ([^<^\s]+)<\/a><\/p>/, :offset=>1}
]
end
