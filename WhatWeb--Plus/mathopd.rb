Plugin.define do
name "Mathopd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Mathopd is a very small, yet very fast HTTP server for UN*X systems. It supports useful features of HTTP/1.1, such as persistent connections, partial responses and pipelining. It does not support things like content negotation. The latest version of the software (1.5) also supports CGI/1.1."
website "http://www.mathopd.org/"
matches [
	{ :version=>/^Mathopd\/([^\s]+)/, :search=>"headers[server]" },
	{ :regexp=>/^Mathopd/, :search=>"headers[server]" },
]
end
