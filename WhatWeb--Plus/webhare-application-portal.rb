Plugin.define do
name "WebHare-Application-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "WebHare Application Portal - Enterprise Content Management - The flexible design of WebHare AP allows for complex web applications completely tailored to build support for an intranet or website as well as a separate product line."
website "http://www.b-lex.nl/"
matches [
	{ :regexp=>/^WebHare Application Portal/, :search=>"headers[server]" },
	{ :version=>/^WebHare Application Portal v([\d\.]+) Webserver$/, :search=>"headers[server]" },
]
end
