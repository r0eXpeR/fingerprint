Plugin.define do
name "XHP-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "XHP CMS - eXpandable Home Page is an easy to install, easy to use, easy to expand content management system (CMS) written in PHP and using MySQL as the database engine."
website "http://xhp.targetit.ro/"
dorks [
'"powered by XHP CMS" "Site engine is copyright"'
]
matches [
{ :text=>'<title>XHP installation</title>' },
{ :version=>/<meta name="GENERATOR" content="XHP - eXpandable Home Page v([\d\.]+)"\/>/ },
{ :version=>/<a href="http:\/\/xhp.targetit.ro\/">Powered by XHP CMS v([\d\.]+)<\/a><br\/><a href="http:\/\/lars.targetit.ro\/">Site engine is copyright/ },
]
end
