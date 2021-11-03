Plugin.define do
name "IBM-HTTP-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "IBM HTTP Server is based on the Apache HTTP Server (httpd.apache.org), developed by the Apache Software Foundation. IBM HTTP Server can be remotely administered and configured using the WebSphere administrative console"
website "http://www.ibm.com/software/webservers/httpservers/"
matches [
	{ :version=>/[\s]*IBM-HTTP-Server\/([\d\.]+)/, :search=>"headers[server]" },
	{ :version=>/[\s]*IBM_HTTP_Server\/([\d\.]+)/, :search=>"headers[server]" },
	{ :name=>"IBM_HTTP_Server", :regexp=>/^[\s]*IBM_HTTP_Server/ ,:search=>"headers[server]" },
	{ :string=>/^(.*)$/, :search=>"headers[srvrname]" },
]
end
