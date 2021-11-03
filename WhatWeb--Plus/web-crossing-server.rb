Plugin.define do
name "Web-Crossing-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description ""
website "http://bayspire.com/"
matches [
{ :search=>"headers[server]", :version=>/^Web Crossing\/([^\s]+)$/ },
{ :search=>"headers[server]", :version=>/^Web Crossing\(r\) [^\s]+-v([\d\.]+) built/ },
{ :search=>"headers[set-cookie]", :regexp=>/webxSess=[\d]+\.[^\s]+;/ },
]
end
