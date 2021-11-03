Plugin.define do
name "Fizmez-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Fizmez Web Server - A webserver written entirely in Java. Useful for learning about servers and daemons. The whole package comes in at under 20Kbytes compressed."
website "http://sourceforge.net/projects/fizmezwebserver/"
matches [
    {:search=>"headers", :text=>'Fizmez'},
    {:search=>"headers[server]", :regexp=>/^Fizmez\/0\.0\.1/, :version=>"1.0"},
    {:search=>"headers[server]", :version=>/^Fizmez\/([1-9]+\.[\d\.]+)/}
]
end
