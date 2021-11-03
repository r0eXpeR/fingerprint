Plugin.define do
name "Netscape-Enterprise"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Netscape Enterprise Server was a web server developed originally by Netscape Communications Corporation. The product has since been renamed Sun Java System Web Server, reflecting the product's acquisition by Sun Microsystems."
website "http://wikis.sun.com/display/WebServer/Sun+Java+System+Web+Server"
matches [
    {:regexp=>/^Netscape-Enterprise/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Netscape-Enterprise'},
    {:version=>/^Netscape-Enterprise\/(.+)$/, :search=>"headers[server]"}
]
end
