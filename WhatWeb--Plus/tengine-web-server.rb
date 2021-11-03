Plugin.define do
name "Tengine-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tengine is a web server originated by Taobao, the largest e-commerce website in Asia. It is based on the popular Nginx HTTP server."
website "http://tengine.taobao.org/"
matches [
{ :search=>"headers[server]", :regexp=>/^Tengine$/ },
{ :search=>"headers[server]", :version=>/^Tengine\/([^\s]+)/ },
]
end
