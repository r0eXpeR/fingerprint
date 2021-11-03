Plugin.define do
name "Artiphp-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Artiphp CMS - open source CMS - Requires PHP"
website "http://www.artiphp.com/"
dorks [
'"Artiphp" "2001" "est un logiciel libre" "sous licence GPL"'
]
matches [
    {:text=>'<!--  Fin ArtiMenu horizontal -->'},
    {:text=>'<!--  fin ArtiMenu horizontal -->'},
    {:text=>'<!-- copyright Artiphp, merci de respecter notre travail en laissant notre signature -->'},
    {:text=>'copyright Artiphp'},
    {:version=>/<div id="copyright">\s*(<p class="copyright">)?\s*<a href="http:\/\/www\.(artiphp|artiloo)\.com"( target="_blank")?>Artiphp ([^<]+)<\/a> &copy; 2001-20[\d]{2} est un logiciel libre/, :offset=>3 }
]
end
