Plugin.define do
name "Pluck-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pluck is a small and simple content management system. - Requires: PHP"
website "http://www.pluck-cms.org/"
dorks [
'"powered by pluck" "admin" inurl:"file=kop1.php"'
]
matches [
{ :ghdb=>'"powered by pluck" +admin inurl:"file=kop1.php"' },
{ :version=>/<meta name="generator" content="pluck ([^\s^"]+)" \/>/ },
{ :text=>'powered by <a href="http://www.pluck-cms.org">pluck</a>' },
]
end
