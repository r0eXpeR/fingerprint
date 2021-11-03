Plugin.define do
name "LINK-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LINK-CMS: PHP based CMS"
website "http://www.link-softsolutions.com/SoftLink-Content-Management-System---CMS_20_1"
dorks [
'"Powered by LINK CMS"'
]
matches [
{ :text=>'<a href="http://www.link-softsolutions.com/SoftLink-Content-Management-System---CMS_20_1" target="_blank">LINK CMS</a>' },
{ :text=>'<a href="http://www.link-softsolutions.com/SoftLink-Content-Management-System---CMS_20_1">LINK CMS</a>' },
]
end
