Plugin.define do
name "USP-Secure-Login-Service"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

	"Andrew Horton", 

]
version "0.2"
description "United Security Providers (USP; previously known as Tetrade) Secure Login Service (SLS) Framework. The SLS works alongside the USP Secure Entry Server (SES) which functions as a Reverse-Proxy and Web Application Firewall (WAF) and also fulfills the role of user authentication."
website "http://www.united-security-providers.com/"
dorks [
'inurl:"sls/auth?RequestedPage"'
]
matches [
{ :text=>'<!-- Optional: If browser does not support Javascript, load URL xyz -->' },
{ :text=>'<!-- SLS JavaScripts -->' },
{ :text=>'<form action="auth" method="post" name="LoginForm" onsubmit="return checkFormSubmit();" >' },
{ :certainty=>75, :regexp=>/<input name="currentRequestedPage" type="hidden" value="[^"]+" \/><\/form>/ },
{ :search=>"headers[slsstatus]", :string=>/^([\d]+)$/ },
{ :search=>"headers[set-cookie]", :regexp=>/SLSLanguage=([a-z]{2,3});/ },
{ :search=>"headers[set-cookie]", :module=>"zzzzzz", :regexp=>/SCDID_S=[^;\s\$]{54}\$\$;/ },
]
end
