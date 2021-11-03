Plugin.define do
name "NetworX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NetworX is PHP-based open source interactive social networking platform - Hompage: http://www.socialabc.com/"
dorks [
'"powered by networx" "Privacy Policy Terms of Use About Us Contact Us"'
]
matches [
{ :text=>'Powered by <a href="http://www.socialabc.com">NetworX</a>' },
]
end
