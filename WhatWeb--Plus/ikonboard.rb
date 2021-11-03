Plugin.define do
name "Ikonboard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP powered forum - Homepage [offline] : http://www.ikonboard.com"
dorks [
'"Powered by Ikonboard" ext:cgi'
]
matches [
    {:certainty=>75, :tagpattern=>"h1,/h1,pre,/pre,p,a,/a,/p"},
    {:regexp=>/<\/td><\/tr><\/table><center><hr><p>[^<]+ [P|p]owered by Ikonboard<br>http:\/\/www.ikonboard.com<br>/},
    {:text=>'<!-- iB Copyright Information -->'},
    {:text=>'Powered by <a href="http://www.ikonboard.com'},
    {:text=>'content="Ikonboard'},
    {:version=>/<meta name="GENERATOR" content="Ikonboard ([^"]+)">/},
    {:version=>/Powered by <a href="http:\/\/www.ikonboard.com" class="copyright" target='_blank'>Ikonboard<\/a> ([^\s]+) &copy; 20[\d]{2} <a href='http:\/\/www.ikonboard.com' target='_blank'>Ikonboard<\/a>/},
    {:version=>/Powered by <a href="http:\/\/www.ikonboard.com">Ikonboard v([^<]+)<\/a><br>&copy; 20[\d]{2} Ikonboard.com/}
]
end
