Plugin.define do
name "MetaPoweredBy"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "This plugin extracts the values for meta tags named poweredby, powered-by, and powered by"
matches [
{ :string=>/<meta[^>]+name=["']powered[\- ]?by["'][^>]+content=["']([^"]+)["']/i },
]
end
