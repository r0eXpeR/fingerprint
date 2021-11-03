Plugin.define do
name "Meta-Geo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies and extracts data from meta geo.* tags - More Info: http://en.wikipedia.org/wiki/Geotagging"
matches [
{ :string=>/<meta name="geo.[^"]+" content="([^"]+)"[^>]*>/},
{ :string=>/<meta name="ICBM" content="([^"]+)"[^>]*>/ },
]
end
