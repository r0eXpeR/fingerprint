Plugin.define do
name "Flyspray"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open source, web based bug tracking system written with a focus on ease-of-use."
website "http://flyspray.org/"
dorks [
'"Powered by Flyspray"'
]
matches [
    {:regexp=>/(?:<a[^>]+>Powered by Flyspray|<map id="projectsearchform)/},
    {:text=>"<!-- Please don't remove this line - it helps promote Flyspray -->"},
    {:text=>'<a href="http://flyspray.org/" class="offsite">Powered by Flyspray</a>'},
    {:text=>'Powered by Flyspray'}
]
end
