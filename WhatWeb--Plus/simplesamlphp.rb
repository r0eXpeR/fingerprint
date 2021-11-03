Plugin.define do
name "simpleSAMLphp"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A PHP implementation of SAML 2.0 service provider and identity provider functionality."
website "http://simplesamlphp.org"
dorks [
'intitle:"simpleSAMLphp installation page"'
]
matches [
{ :text=>'<title>simpleSAMLphp installation page</title>' },
{ :regexp=>/<h1><a style="text-decoration: none; color: white" href="[^"]+">simpleSAMLphp installation page<\/a><\/h1>/ },
{ :text=>'<a href="http://rnd.feide.no/simplesamlphp">SimpleSAMLPhp </a>' },
{ :certainty=>75, :text=>'<!-- Grey header bar below -->' },
]
end
