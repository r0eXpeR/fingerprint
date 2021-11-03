Plugin.define do
name "PHPNuke"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "PHP-Nuke is a free CMS"
website "phpnuke.org. The plugin passively recognises modules. An obvious improvement would be to aggresively discover modules and discover the phpnuke version"
matches [
    {:certainty=>25,
:text=>"<META NAME=\"RATING\" CONTENT=\"GENERAL\">"},
    {:certainty=>75,
:text=>"<a href=\"http://phpnuke.org/files/gpl.txt\">"},
    {:certainty=>75,
:text=>"<a href=\"modules.php?name=Your_Account\">"},
    {:certainty=>75, :module=>/<a href="[^"]*modules.php\?name=([a-zA-Z0-9_]+)[^"]*">/},
    {:name=>"Feedback link",
:certainty=>75,
:text=>"<a href=\"modules.php?name=Feedback\">Feedback</a>"},
    {:name=>"engine code is copyright of PHP-Nuke",
:text=>"<a href='http://www.phpnuke.org'><img src='images/powered/phpnuke.gif' title=\"The engine code is copyright of PHP-Nuke.\" border='0'></a>"},
    {:name=>"meta generator tag with PHP-Nuke", 
:regexp=>/<meta name="generator" content="[^"]+(PHP-Nuke|http:\/\/phpnuke.org)/i},
    {:name=>"modules.php?name links",
:certainty=>25,
:regexp=>/<a href="[^"]*modules.php\?name=[a-zA-Z0-9_]+[^"]*">/},
    {:regexp=>/<[^>]+Powered by PHP-Nuke/},
    {:regexp=>/PHP-Nuke/, :search=>'body'}
]
end
