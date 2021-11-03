Plugin.define do
name "Oracle-Access-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle Access Manager - Comprehensive Access Management for Applications, Data, and Web Services -H omepage: http://www.oracle.com/us/products/middleware/identity-management/access-management/overview/index.html"
dorks [
'inurl:"obrareq.cgi"'
]
matches [
{ :version=>/<p id="footerVersion">Oracle Access Manager Version: ([^\s]+)<\/p>/ },
{ :search=>"headers[set-cookie]", :regexp=>/ObSSOCookie=[^;]+;/, :certainty=>75 },
{ :search=>"headers[location]", :regexp=>/obrareq\.cgi/, :certainty=>75 },
]
end
