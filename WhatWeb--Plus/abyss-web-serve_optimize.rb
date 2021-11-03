Plugin.define do
name "Abyss-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Abyss Web Server is a compact web server available for Windows, Mac OS X, Linux, and FreeBSD operating systems."
website "http://www.aprelium.com/abyssws/"
matches [
    {:search=>"headers", :text=>'Server: Abyss'},
    {:version=>/^Abyss\/([^\s]+)/, :search=>"headers[server]"}
]
end
