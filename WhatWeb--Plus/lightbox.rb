Plugin.define do
name "Lightbox"
authors [
  "Andrew Horton",

]
version "0.2"
description "Javascript for nice image popups"
matches [
    {:regexp=>/<link [^>]*href="[^"]+lightbox(?:\.min)?\.css/},
    {:regexp=>/<script [^>]*(lightbox[^>]*.js)[^>]*/},
    {:regexp=>/lightbox(?:-plus-jquery)?.{0,32}\.js/, :search=>'body'}
]
end
