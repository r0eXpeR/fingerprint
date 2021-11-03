Plugin.define do
name "Mobotix-Network-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "MOBOTIX network camera web interface"
website "http://www.mobotix.com/"
matches [
{ :text=>'<meta name="publisher" content="MOBOTIX AG, Germany">' },
{ :text=>'<meta name="copyright" content="MOBOTIX AG, Germany">' },
{ :text=>'<meta name="author" content="Daniel Kabs, MOBOTIX AG, Kaiserslautern, Germany.">' },
{ :regexp=>/<font face="Helvetica,Arial" size="-2">	&copy;2001[\-0-9]{0,5} <a href="\/about.html">MOBOTIX AG<\/a>, Germany  &middot; <a href="http:\/\/www.mobotix.com\/">http:\/\/www.mobotix.com\/<\/a>/ },
{ :firmware=>/var filesystem__version="[M0-1\-]*V([\d\.]+)";/ },
]
end
