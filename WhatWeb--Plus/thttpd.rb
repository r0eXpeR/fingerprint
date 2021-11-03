Plugin.define do
name "thttpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "thttpd - tiny/turbo/throttling HTTP server - thttpd is a simple, small, portable, fast, and secure HTTP server."
website "http://acme.com/software/thttpd/"
matches [
    {:search=>"headers[server]", :version=>/^thttpd\/([^\s]+)/},
    {:search=>'headers[server]',:offset=>1, :regexp=>/\bthttpd(?:.([\d.]+))?/}
]
end
