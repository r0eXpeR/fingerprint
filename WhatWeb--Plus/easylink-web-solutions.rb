Plugin.define do
name "easyLink-Web-Solutions"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "German Content Management System"
website "http://www.mountaingrafix.eu/tag/easylink/"
dorks [
'"powered by easyLink"'
]
matches [
    {:text=>'Dieser Abschnitt darf nur mit Genehmigung des Entwicklers entfernt werden und bedarf einer'},
    {:text=>'content="easyLink'},
    {:version=>/<meta name="generator" content="easyLink v([\d\.]+)" \/>/},
    {:version=>/[P|p]?owered by easyLink v([\d\.]+)/}
]
end
