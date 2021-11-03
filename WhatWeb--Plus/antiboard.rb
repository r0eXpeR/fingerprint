Plugin.define do
name "Antiboard"
authors [
  "Andrew Horton", 

]
version "0.3"
description "Antiboard is a PHP forum."
website "http://www.resynthesize.com/code/antiboard.php"
dorks [
'inurl: antiboard.php'
]
matches [
{:name=>"inurl", :ghdb=>"inurl:antiboard.php" },
{:name=>"powered by", :text=>"<a href=\"http://www.resynthesize.com/code/antiboard.php\">Powered by antiboard" }
]
end
