Plugin.define do
name "OBM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OBM is a free messaging and collaboration software including Groupware, Messaging, CRM, LDAP, Domain management, Smartphones and PDA synchronization"
website "http://obm.org/"
dorks [
'intitle:"Login - OBM" "OBM.org"'
]
matches [
{ :certainty=>75, :version=>/<title>Login - OBM ([^\s^<]+)<\/title>/ },
{ :regexp=>/<body>[\s]+[\s]+<p id="aliasource">[\s]+<a href="http:\/\/www\.obm\.org">OBM\.org<\/a>[\s]+<\/p>[\s]+<h1>/ },
{ :search=>"headers[set-cookie]", :regexp=>/OBM_Session=[\s]+;/ },
]
end
