Plugin.define do
name "SMART-SOFT-VCard-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "SMART-SOFT VCard HTTP/SSL server"
website "http://www.smart-soft.ru/"
matches [
{ :text=>"<title>Error</title></head><body><h1>403 - Directory browsing not allowed</h1><hr>SMART-SOFT VCard HTTP/SSL server" },
{ :version=>/<title>Error<\/title><\/head><body><h1>403 - Directory browsing not allowed<\/h1><hr>SMART-SOFT VCard HTTP\/SSL server \(([^\)]+)\)<br>/ },
{ :string=>/<title>Error<\/title><\/head><body><h1>403 - Directory browsing not allowed<\/h1><hr>SMART-SOFT VCard HTTP\/SSL server \([^\)]+\)<br>Server - ([\w]+)/ },
{ :regexp=>/^SMART-SOFT VCard/, :search=>"headers[server]" },
{ :version=>/^SMART-SOFT VCard HTTP\/SSL server \(([^\)]+)\)$/, :search=>"headers[server]" },
{ :name=>"Exception header", :regexp=>/^Directory%20browsing%20not%20allowed$/, :search=>"headers[exception]" },
]
end
