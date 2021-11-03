Plugin.define do
name "Collabtive"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Collabtive - Open Source Collaboration"
website "http://collabtive.o-dyn.de/"
dorks [
'"Project Management" "Stay logged in" intitle:"Login" intitle:"Collabtive"'
]
matches [
    {:text=>'<!--<div id = "jslog" style = "color:red;position:absolute;top:60%;right:5%;width:300px;border:1px solid;background-color:grey;"></div>-->'},
    {:text=>'<form id = "loginform" name = "loginform" method="post" action="manageuser.php?action=login"  onsubmit="return validateCompleteForm(this,\'input_error\');">'},
    {:text=>'<title>Login @ Collabtive</title>'},
    {:text=>'Login @ Collabtive'}
]
end
