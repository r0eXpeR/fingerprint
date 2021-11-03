Plugin.define do
name "Speakker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Crossbrowser JavaScript audio solution based on HTML5"
website "http://www.speakker.com/"
matches [
{ :text=>'<!-- INSTANTIATE SPEAKKER -->' },
{ :text=>'<!-- INCLUDE SPEAKKER -->' },
{ :regexp=>/<script type="text\/javascript" src="[^"]+\/(projekktor|speakker)\.min\.js"><\/script>/ },
]
end
