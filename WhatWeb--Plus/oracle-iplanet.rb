Plugin.define do
name "Oracle-iPlanet"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Oracle-iPlanet Web Server and Proxy Server."
website "http://www.oracle.com/technetwork/middleware/iplanetwebserver-098726.html"
matches [
{ :search=>"headers[proxy-agent]", :version=>/iPlanet-Web-Proxy-Server\/([\d\.]+)/, :module=>"Proxy" },
{ :search=>"headers[server]", :version=>/iPlanet-WebServer-Enterprise\/([\d\.]+)/, :module=>"Web" },
{ :search=>"headers[server]", :version=>/Oracle-iPlanet-Web-Server\/([\d\.]+)/, :module=>"Web" },
]
end
