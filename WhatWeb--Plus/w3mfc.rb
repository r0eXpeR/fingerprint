Plugin.define do
name "W3MFC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "W3Mfc is a collection of MFC classes to implement a Web Server"
website "http://www.naughter.com/w3mfc.html"
matches [
{ :search=>"headers[server]", :version=>/^W3MFC\/([\d\.]+)$/  },
]
end
