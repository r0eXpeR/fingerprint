Plugin.define do
name "Applet"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin detects instances of applet HTML elements and retrieves the URL from the code parameter."
website "http://en.wikipedia.org/wiki/Java_applet"
matches [
{ :string=>/<applet[^>]+code[\s]*=[\s]*["|']?([^\s^>^"^']+)[^>]*>/i },
]
end
