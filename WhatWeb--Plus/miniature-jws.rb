Plugin.define do
name "Miniature-JWS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Tiny Java Web Server and Servlet Container (aka Miniature JWS) with security update, J2EE deployment, JSP, and J2EE (without application server)"
website "http://tjws.sourceforge.net/"
matches [
	{ :regexp=>/^(D\. )?Rogatkin/, :search=>"headers[server]" },
	{ :version=>/^Rogatkin's JWS based on Acme\.Serve\/\$Revision: ([\d\.]+) \$$/, :search=>"headers[server]" },
	{ :version=>/^D\. Rogatkin's TJWS based on Acme\.Serve\/Version [^,]+, \$Revision: ([\d\.]+) \$$/, :search=>"headers[server]" },
]
end
