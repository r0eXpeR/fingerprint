Plugin.define do
name "Traffic-Inspector"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 
]
version "0.2"
description "An integrated gateway solution for controlling access to the Internet and for providing data transmission services."
website "http://www.trafinsp.com/products/Traffic-Inspector/"
matches [
{ :search=>"headers[server]", :version=>/^Traffic [Ii]nspector HTTP\/FTP\/Proxy server \(([^\)]+)\)$/ },
{ :url=>"/", :string=>/<title>Error<\/title><\/head><body><h1>403 - Forbidden<\/h1><hr( class="footer")?>Traffic [Ii]nspector HTTP\/FTP\/Proxy server \([^\)]+\)<br>([^<^\/]+)\s*\/?\s*[\d]{2}\.[\d]{2}\.[\d]{2}/, :offset=>1 },
]
end
