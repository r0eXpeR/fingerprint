Plugin.define do
name "Fossil"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Simple, high-reliability, distributed software configuration management"
website "http://fossil-scm.org/index.html/doc/trunk/www/index.wiki"
dorks [
'"Fossil version " inurl:"fossil.cgi"'
]
matches [
    {:string=>/<div class="footer">\s+(<a href="http:\/\/fossil-scm\.org">Fossil<\/a>|Fossil) version \[[^\]]+\] ([\d]{4}\-[\d]{2}\-[\d]{2} [\d]{2}:[\d]{2}:[\d]{2})/, :offset=>1 },
    {:text=>'<a href="http://fossil-scm.org'},
    {:version=>/<div class="footer">\s+(<a href="http:\/\/fossil-scm\.org">Fossil<\/a>|Fossil) version \[([^\]]+)\] [\d]{4}\-[\d]{2}\-[\d]{2} [\d]{2}:[\d]{2}:[\d]{2}/, :offset=>1}
]
end
