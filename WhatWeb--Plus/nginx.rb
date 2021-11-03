Plugin.define do
name "nginx"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nginx (Engine-X) is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server."
website "http://nginx.net/"
matches [
    {:search=>"headers", :text=>'Server: nginx'},
    {:search=>"headers[server]", :regexp=>/^nginx$/},
    {:search=>"headers[server]", :version=>/^nginx\/([^\s]+).*$/},
    {:search=>'headers[server]', :regexp=>/nginx(?:.([\d.]+))?/,:offset=>1   }
]
end
