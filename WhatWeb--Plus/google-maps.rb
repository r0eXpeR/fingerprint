Plugin.define do
name "Google-Maps"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Google Maps"
website "http://maps.google.com/"
dorks [
'"powered by google maps"'
]
matches [
{ :regexp=>/<script [^>]*src=["'][^>]*maps\.google\.com\/maps(\?file=api|\/api\/staticmap)/i },
]
end
