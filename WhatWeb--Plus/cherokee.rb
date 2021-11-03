Plugin.define do
name "Cherokee"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Cherokee is a very fast, flexible and easy to configure Web Server. It supports the widespread technologies nowadays: FastCGI, SCGI, PHP, CGI, uWSGI, SSI, TLS and SSL encrypted connections, Virtual hosts, Authentication, on the fly encoding, Load Balancing, Apache compatible log files, Data Base Balancing, Reverse HTTP Proxy, Traffic Shaper, Video Streaming and much more."
website "http://www.cherokee-project.com/"
matches [
    {:name=>"HTTP Server Header", :regexp=>/^Cherokee/, :search=>"headers[server]"},
    {:name=>"HTTP Server Header", :version=>/^Cherokee\/([^\s]+)/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Cherokee'},
    {:search=>'headers[server]',:offset=>1, :regexp=>/^Cherokee(?:.([\d.]+))?/}
]
end
