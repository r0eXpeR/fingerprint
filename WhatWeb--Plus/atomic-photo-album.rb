Plugin.define do
name "Atomic-Photo-Album"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Photo album software"
website "http://atomicpa.sourceforge.net/"
dorks [
'"powered by Atomic Photo Album" -Vulnerabilities -inurl inurl:apa_album_ID'
]
matches [
    {:text=>'Atomic Photo Album'},
    {:text=>'Powered by'},
    {:version=>/Powered by <a href="http:\/\/atomicpa.sourceforge.net\/" target="_blank">Atomic Photo Album ([\d\.a-z]+)<\/a>/}
]
end
