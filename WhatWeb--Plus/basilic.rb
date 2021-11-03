Plugin.define do
name "Basilic"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Basilic is a bibliography server for research laboratories. It automates and facilitates the diffusion of research publications over the internet, automatically generating web pages from a publication database."
website "http://artis.imag.fr/Software/Basilic"
dorks [
'"powered by basilic"'
]
matches [
    {:text=>"<a href='http://artis.imag.fr/Software/Basilic'>Powered by Basilic</a></span>"},
    {:text=>"Powered by <a href='http://artis.imag.fr/Software/Basilic/'>Basilic</a></p>"},
    {:text=>'/Software/Basilic'},
    {:version=>/<a href='http:\/\/artis.imag.fr\/Software\/Basilic'[^>]+>&copy; Powered by Basilic ([\d\.]+)/},
    {:version=>/<span>Powered by <a href='http:\/\/artis.imag.fr\/Software\/Basilic'>Basilic ([\d\.]+)<\/a><\/span>/}
]
end
