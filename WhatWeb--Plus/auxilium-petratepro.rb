Plugin.define do
name "Auxilium-PetRatePro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Auxilium PetRatePro"
website "http://www.auxiliumsoftware.com/PetRatePro/"
dorks [
'inurl:"index.php?cmd=10" "Pets Rating"'
]
matches [
    {:text=>'<form method="post" name="myform2" action="index.php?cmd=11">'},
    {:text=>'<p class="text"><b>Leader Of The Pack (Top 10 Pets)</b><br><br>'},
    {:text=>'index.php?cmd=11'}
]
end
