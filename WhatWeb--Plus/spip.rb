Plugin.define do
name "SPIP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "SPIP is a publishing system for the Internet in which great importance is attached to collaborative working, to multilingual environments, and to simplicity of use for web authors."
website "http://www.spip.net/"
dorks [
'inurl:"spip.php" "Login (identifiant de connexion au site)"'
]
matches [
    {:offset=>1, :search=>'body', :regexp=>/(?:^|\s)SPIP(?:\s([\d.]+(?:\s\[\d+\])?))?/},
    {:regexp=>/SPIP ([\d.]+) @/, :search=>'headers[composed-by]',:offset=>1  },
    {:search=>"headers[composed-by]", :module=>/SPIP [^@]{1,10} @ www\.spip\.net \+ (.+)/},
    {:search=>"headers[composed-by]", :regexp=>/SPIP @ www\.spip\.net/},
    {:search=>"headers[composed-by]", :version=>/SPIP ([^@]{1,10}) @ www\.spip\.net/},
    {:search=>"headers[x-spip-cache]", :regexp=>/^.+$/},
    {:text=>'<a href="spip.php'},
    {:text=>'<div class="formulaire_spip formulaire_recherche"'},
    {:text=>'<img src=\'/spip'},
    {:version=>/<meta name="generator" content="SPIP ([^\s]+) \[[\d]+\]"( \/)?>/}
]
end
