Plugin.define do
name "Energine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Energine Content Management Framework - XML based PHP5 content management framework"
website "http://energine.org/"
dorks [
'"Powered by Energine"'
]
matches [
    {:certainty=>75, :text=>'<div id="footer">Powered by Energine.</div>'},
    {:regexp=>/<link rel="stylesheet" type="text\/css" href="[^"]*stylesheets\/energine.css" \/>/},
    {:regexp=>/<script type="text\/javascript" src="[^"]*scripts\/Energine.js"><\/script>/},
    {:text=>'<div id="footer"><span class="copyright">Powered by <a href="http://energine.org">Energine</a><br/>'},
    {:text=>'<div id="footer">Powered by <a href="http://energine.org">Energine</a>'},
    {:text=>'<span class="copyright">Powered by <a href= "http://energine.org/">Energine</a></span>'},
    {:text=>'Powered by <a href= "http://energine.org/'},
    {:text=>'scripts/Energine.js'},
    {:text=>'stylesheets/energine.css'}
]
end
