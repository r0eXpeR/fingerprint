Plugin.define do
name "webfs"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "This is a simple http server for mostly static content.  You can use it to serve the content of a ftp server via http for example."
website "http://linux.bytesex.org/misc/webfs.html"
matches [
	{ :regexp=>/^webfs\//, :search=>"headers[server]" },
	{ :version=>/^webfs\/([^\s]+)$/, :search=>"headers[server]" },
]
end
