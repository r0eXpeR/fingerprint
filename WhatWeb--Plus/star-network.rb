Plugin.define do
name "Star-Network"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "hompage: http://www.starltd.net/"
matches [
{ :regexp=>/Powered [b|B]+y <a href="http:\/\/www.[starltd.net|s4u.co.il]+[\/]*">Star Network[\ and\ Promotion\ LTD|\&amp\;\ Promotion\ LTD]*<\/a>/ },
]
end
