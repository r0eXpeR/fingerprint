Plugin.define do
name "CubeCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "CubeCart is an out of the box ecommerce shopping cart software solution which has been written to run on servers that have PHP & MySQL support."
website "http://www.cubecart.com/"
dorks [
'intitle:"powered by cubecart"',
'"powered by cubecart"'
]
matches [
    {:regexp=>/(?:Powered by <a href=[^>]+cubecart\.com|<p[^>]+>Powered by CubeCart)/},
    {:regexp=>/<title>[^<]{1,256} \(Powered by CubeCart\)<\/title>/},
    {:regexp=>/cubecart/, :search=>'body'},
    {:text=>"<div class='txtCopyright'>Powered by <a href='http://www.cubecart.com' class='txtCopyright' target='_blank'>CubeCart</a>"},
    {:version=>/<p class="defaultText">Powered by CubeCart version ([\d\.]+)<br \/>/}
]
end
