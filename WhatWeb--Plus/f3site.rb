Plugin.define do
name "F3Site"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "F3Site is a lightweight CMS written in XHTML 1.0 Strict, CSS and PHP 5. It lets you create multilingual websites without necessity of separate installation for each language."
website "http://compmaster.prv.pl"
dorks [
'"powered by F3Site" -exploit -dork'
]
matches [
    {:regexp=>/Powered by[^>]*<a[^>]*href="http:\/\/compmaster.prv.pl[^>]*>F3Site[^>]*<\/a>/},
    {:regexp=>/Powered by[^>]*<a[^>]*href="http:\/\/dhost.info\/compmaste[^>]*>F3Site[^<]*<\/a>/},
    {:text=>'<a href="http://compmaster.prv.pl" target="_blank">powered by F3Site</a></span>'},
    {:text=>'Powered by <a href="http://compmaster.prv.pl'},
    {:version=>/Powered by <a href="http:\/\/compmaster.prv.pl">F3Site v([\d\.]+) plus<\/a>/}
]
end
