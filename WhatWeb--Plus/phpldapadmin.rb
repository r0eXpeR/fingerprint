Plugin.define do
name "phpLDAPadmin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpLDAPadmin (also known as PLA) is a web-based LDAP client. It provides easy, anywhere-accessible, multi-language administration for your LDAP server. "
website "http://phpldapadmin.sourceforge.net/"
dorks [
'"Home" "Purge caches" intitle:phpLDAPadmin'
]
matches [
{ :version=>/<head><title>phpLDAPadmin - ([^\s^<]+)[\s]?<\/title><\/head>/ },
{ :version=>/<h3 class="subtitle" style="margin:0px">phpLDAPadmin - ([^\s^<]+)/ },
{ :version=>/<title>phpLDAPadmin \(([^\s^\)]+)\) - <\/title>/ },
{ :version=>/<div id="ajFOOT">([^\s^<]+)<\/div><a href="https:\/\/sourceforge\.net\/projects\/phpldapadmin">/ },
{ :string=>/<td class="icon"><img src="images\/[^\/^"]*\/server.png" alt="Server" \/><\/td><td class="name" colspan="2">([^<]+)<\/td><\/tr>/ },
]
end
