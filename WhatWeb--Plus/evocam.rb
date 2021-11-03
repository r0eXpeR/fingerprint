Plugin.define do
name "Evo-Cam"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EvoCam is the ultimate webcam software for Mac OS X"
website "http://www.evological.com/evocam.html"
dorks [
'intitle:"EvoCam" inurl:"webcam.html" -intitle'
]
matches [
{ :regexp => /<title>EvoCam( \d)*<\/title>/ },
{ :regexp => /<TITLE>EvoCam( Java| JavaScript)? Example Page<\/TITLE>/ },
{ :text => 'Powered by <A HREF="http://www.evological.com/evocam.html">EvoCam</A>' },
{ :regexp => /<applet archive="evocam.jar" code="com.evological.evocam.class"/ },
{ :regexp => /<param name="archive" value="evocam.jar">/i }
]
end
