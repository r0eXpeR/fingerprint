Plugin.define do
name "Acme_Serve"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Minimal Java HTTP server class. This class implements a very small embeddable HTTP server. It runs Servlets compatible with the API used by JavaSoft's JavaServer server. Used as an embedded server for many devices."
website "http://www.acme.com/java/software/Acme.Serve.Serve.html"
matches [
    {:name=>"Date from server header", :search=>"headers[server]", :string=>/^Acme\.Serve\/v[\d\.]+ of ([\d]{2}[a-z]{3}[\d]{2})$/},
    {:search=>"headers", :text=>'Server: Acme'},
    {:search=>"headers[server]", :version=>/^Acme\.Serve\/v([\d\.]+) of [\d]{2}[a-z]{3}[\d]{2}$/}
]
end
