Plugin.define do
name "SlingBox"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Slingbox is a TV streaming media device that encodes video for transmission over the Internet"
website "http://slingbox.com/"
dorks [
'intitle:"Slingbox Setup" "Welcome to Slingbox Setup" "We\'ll help you set up your Slingbox"'
]
matches [
{ :search=>"headers[set-cookie]", :regexp=>/_sling_skey=[^;]+/ },
{ :version=>/<!-- Footer start -->\s+<div id="footer_center">\s+<p>Portal Version:&nbsp;([^,]+), Plugin Version:&nbsp;/ },
]
end
