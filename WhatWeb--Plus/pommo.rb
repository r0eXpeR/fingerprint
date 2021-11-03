Plugin.define do
name "poMMo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "poMMo is versatile mass mailing software - Requires PHP"
website "http://pommo.org/Main_Page"
dorks [
'"Page fueled by poMMo mailing management software"'
]
matches [
{ :text=>'Page fueled by <a href="http://www.pommo.org/">poMMo</a> mailing management software' },
{ :text=>'Page fueled by <a href="http://pommo.sourceforge.net/">poMMo</a> mailing management software' },
{ :text=>'<title>. ..poMMo.. .</title>' },
]
end
