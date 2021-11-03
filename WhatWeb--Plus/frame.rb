Plugin.define do
name "Frame"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin detects instances of frame and iframe HTML elements."
matches [
{ :regexp => /<i?frame\s+/i }
]
end
