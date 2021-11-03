Plugin.define do
name "Fpoll"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Fpoll is a simple and easily customizable open source web poll script - Requires: PHP and MySQL"
website "http://www.phpfront.com/fpoll.php"
dorks [
'intitle:"Fpoll" intitle:"AdminCP" inurl:admincp ext:php'
]
matches [
    {:text=>'admincp/css.css'},
    {:version=>/<br \/><br \/><hr \/><div style="text-align: center;">&copy 20[\d]{2} Fpoll v([^\s^>]+) \(<a href="http:\/\/www\.phpfront\.com">PHPfront\.com<\/a>\) <\/div><\/body>/},
    {:version=>/<title>Fpoll v([^\s^>]+) AdminCP<\/title>[\s]+<link rel="stylesheet" href="admincp\/css\.css" media="all"\/>/},
    {:version=>/<title>Fpoll v([^\s^>]+) AdminCP<\/title>[\s]+<link rel="stylesheet" href="css\.css" media="all"\/>/}
]
end
