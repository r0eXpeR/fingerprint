Plugin.define do
name "HAProxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Reliable, High Performance TCP/HTTP Load Balancer"
website "http://haproxy.1wt.eu/"
matches [
    {:search=>"headers", :text=>'HAProxy Statistics'},
    {:status=>401, :search=>"headers[www-authenticate]", :text=>'Basic realm="HAProxy Statistics"'}
]
end
