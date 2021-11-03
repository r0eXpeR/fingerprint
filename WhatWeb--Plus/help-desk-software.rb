Plugin.define do
name "Help-Desk-Software"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Help Desk Software - a simple yet powerful helpdesk solution - Requires: PHP and MySQL"
website "http://freehelpdesk.org/"
dorks [
'"powered by freehelpdesk.org" intitle:"Help Request System"'
]
matches [
    {:text=>'target="_blank">freehelpdesk.org'},
    {:version=>/<\/html>[\s]+<font style='font-size:0px'>([^<^\s]+)<\/font>/},
    {:version=>/<div class="AdminTDSmall">[\s]+powered by <a href="http:\/\/freehelpdesk\.org\/\?ver=([^"^>^\s]+)" target="_blank">freehelpdesk\.org<\/a>[\s]+<\/div>/}
]
end
