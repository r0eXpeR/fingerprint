Plugin.define do
name "Aardvark-Topsites-PHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Aardvark Topsites PHP is a free topsites script built on PHP and MySQL."
website "http://www.aardvarktopsitesphp.com/topsites/"
dorks [
'"Powered by Aardvark Topsites PHP"'
]
matches [
    {:ghdb=>'"Powered by Aardvark Topsites PHP"'},
    {:regexp=>/Powered by <a href="http:\/\/www.aardvarktopsitesphp.com[^>]*>[^A]*Aardvark Topsites PHP/i},
    {:text=>'Aardvark Topsites'},
    {:text=>'Powered by'},
    {:version=>/Powered by <a href="http:\/\/www.aardvarkind.com\/">Aardvark Topsites PHP<\/a> ([\d\.]+)/},
    {:version=>/Powered by <a href="http:\/\/www.aardvarktopsitesphp.com\/"><b>Aardvark Topsites PHP<\/b><\/a> ([\d\.]+)/}
]
end
