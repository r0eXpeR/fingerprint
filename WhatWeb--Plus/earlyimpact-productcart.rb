Plugin.define do
name "EarlyImpact-ProductCart"
authors [
  "Andrew Horton",

]
version "0.3"
description "EarlyImpact ProductCart is an ASP commercial ecommerce system "
website "http://www.earlyimpact.com. Version < 2.53 is vulnerable http://www.securityfocus.com/bid/9669"
dorks [
'inurl:custva.asp'
]
matches [
    {:certainty=>75, :ghdb=>'inurl:custva.asp'},
    {:text=>'<!-- end of password request -->'},
    {:text=>'<a href="fpassword.asp?redirectUrl=&frURL=Custva.asp"'},
    {:text=>'fpassword.asp?redirectUrl=&frURL=Custva.asp'}
]
end
