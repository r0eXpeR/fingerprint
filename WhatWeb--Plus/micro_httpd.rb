Plugin.define do
name "micro_httpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "micro_httpd is a very small Unix-based HTTP server. It runs from inetd, which means its performance is poor. But for low-traffic sites, it's quite adequate. It implements all the basic features of an HTTP server."
website "http://www.acme.com/software/micro_httpd/"
matches [
{ :search=>"headers[server]", :regexp=>/micro_httpd/i },
]
end
