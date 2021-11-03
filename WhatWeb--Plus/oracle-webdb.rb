Plugin.define do
name "Oracle-WebDB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle WebDB is a complete solution for building, deploying, and proactively monitoring Web database applications and content-driven Web sites."
website "http://download.oracle.com/docs/cd/A81042_01/DOC/webdb.816/index.htm"
matches [
{ :search=>"headers[server]", :version=>/^Oracle_WebDb_Listener\/([^\s]+)/ },
{ :search=>"headers[location]", :regexp=>/^(https?:\/\/[^\/]+)?\/WebDB\/WEBDB\.home$/, :certainty=>75 },
]
end
