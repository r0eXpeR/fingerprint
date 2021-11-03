Plugin.define do
name "Chamilo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Chamilo is a fully-fledged e-learning system. Chamilo can be connected to any open-specification system."
website "http://www.chamilo.org/"
dorks [
'("Plattform Chamilo"|"Portal Chamilo"|"Plataforma Chamilo") inurl:index.php?language=',
'"Congratulations! You have successfully installed your e-learning portal!" "Chamilo"'
]
matches [
    {:offset=>1, :regexp=>/>Chamilo ([\d.]+)<.a>/},
    {:offset=>1, :regexp=>/Chamilo ([\d.]+)/, :search=>'body'},
    {:regexp=>/<meta name="Generator" content="Chamilo ([\d\.]+)">/},
    {:regexp=>/Chamilo ([\d.]+)/,:offset=>1, :search=>'headers[x-powered-by]'},
    {:search=>"headers", :text=>'X-Powered-By: Chamilo'},
    {:search=>"headers[x-powered-by]", :version=>/^Chamilo ([\d\.]+)/},
    {:text=>'<!-- end of #main" started at the end of banner.inc.php -->'},
    {:text=>'<link href="http://www.chamilo.org/documentation.php" rel="Help" />'},
    {:text=>'<link href="http://www.chamilo.org/documentation.php'},
    {:text=>'content="Chamilo'},
    {:version=>/<\/div>(Portal|Plattform|Platform|Plataforma) <a href="http:\/\/www\.chamilo\.org\/?" target="_blank">Chamilo ([^<^\s]+)<\/a> &copy;/, :offset=>1},
    {:version=>/<div class="copyright">(Portal|Plattform|Platform|Plataforma) <a href="http:\/\/www\.chamilo\.org\/?" target="_blank">Chamilo ([^<^\s]+)<\/a> &copy;/, :offset=>1 }
]
end
