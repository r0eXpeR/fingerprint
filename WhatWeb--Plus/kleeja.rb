Plugin.define do
name "Kleeja"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Kleeja is a free, open-source file upload system"
website "http://www.kleeja.com/"
dorks [
'"powered by kleeja"'
]
matches [
    {:regexp=>/<title>[^\(]+\(Powered by Kleeja\)<\/title>/},
    {:text=>'<!-- IF REMOVE: Pay for a license - see http://www.kleeja.com -->'},
    {:text=>'<!-- IF REMOVE: Pay for a license -->'},
    {:text=>'<meta name="Description" content="Powered by Kleeja :: kleeja.com" />'},
    {:text=>'<meta name="copyrights" content="Powered by Kleeja :: kleeja.com" />'},
    {:text=>'Powered by <a href="http://www.kleeja.com/" target="_blank">Kleeja</a>'},
    {:text=>'Powered by Kleeja'}
]
end
