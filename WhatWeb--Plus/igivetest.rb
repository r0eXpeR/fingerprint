Plugin.define do
name "iGiveTest"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iGiveTest is a comprehensive solution for creating, administering, and providing thorough analysis of tests on the Internet and Intranet. It is a quick and professional way to create and organize tests for employees, students, and people in training."
website "http://igivetest.com/"
dorks [
'"Powered by iGiveTest"'
]
matches [
    {:certainty=>25, :text=>'<form action="index.php" method=post name=signinform>'},
    {:search=>"headers", :text=>'IGTSESSID'},
    {:text=>'Powered by iGiveTest'},
    {:version=>/<tr><td colspan=[\d] align=right>Powered by iGiveTest v([\d\.]+)<\/a><\/td><\/tr>/},
    {:version=>/Powered by <a href="http:\/\/iGiveTest\.com" target=_blank>iGiveTest v([\d\.]+)<\/a>/}
]
end
