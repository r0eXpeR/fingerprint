Plugin.define do
name "Tinyproxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tinyproxy is a light-weight HTTP/HTTPS proxy daemon for POSIX operating systems."
website "https://banu.com/tinyproxy/"
matches [
{ :search=>"headers[server]", :version=>/^tinyproxy\/([^\s]+)/ },
]
end
