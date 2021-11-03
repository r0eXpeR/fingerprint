Plugin.define do
name "Zeus-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zeus Web Server is the most scalable, high-performance web server software available, underpinning business-critical solutions for the world's leading web hosting, content provider and secure e-commerce companies."
website "http://www.zeus.com/products/web-server/"
matches [
{ :search=>"headers[server]", :regexp=>/^Zeus$/ },
{ :search=>"headers[server]", :version=>/^Zeus\/(([\d]+)(\.|_)([\d]+))$/ },
]
end
