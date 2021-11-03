Plugin.define do
name "CL-HTTP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Common Lisp Hypermedia Server (CL-HTTP) - HTTP server"
website "http://www.cl-http.org:8001/cl-http/"
matches [
    {:search=>"headers", :text=>'CL-HTTP'},
    {:search=>"headers[server]", :string=>/^CL-HTTP\/[^\s]+ \(([^\)]+)\)/},
    {:search=>"headers[server]", :version=>/^CL-HTTP\/([^\s]+)/}
]
end
