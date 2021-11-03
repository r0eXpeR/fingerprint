Plugin.define do
name "Etano"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Etano - Dating and social networking script"
website "https://code.google.com/p/etano/"
dorks [
'"Powered by Etano" intitle:"Etano"'
]
matches [
    {:text=>'All Rights Reserved.<br />Powered by <a href="http://www.datemill.com" title="Etano community builder">Etano</a>.</p>'},
    {:text=>'Etano</a>. All Rights Reserved.'},
    {:text=>'Etano</a>. All Rights Reserved.<br />'},
    {:text=>'Powered by <a href="http://www.datemill.com'}
]
end
