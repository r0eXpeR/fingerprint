Plugin.define do
name "Raptor-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Raptor Firewall (previously known as Raptor EagleNT) was acquired by Symantec and has been discontinued"
website "http://www.symantec.com/en/nz/business/support/overview.jsp?pid=52789"
matches [
	{ :regexp=>/^Simple, Secure Web Server/, :search=>"headers[server]" },
	{ :version=>/^Simple, Secure Web Server (.+)$/, :search=>"headers[server]" },
]
end
