Plugin.define do
name "Xerver"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Xerver is an advanced free GNU GPL Web and FTP server."
website "http://www.javascript.nu/xerver/"
matches [
	{ :regexp=>/^Xerver/, :search=>"headers[server]" },
	{ :version=>/^Xerver\/([\d\.]+)$/, :search=>"headers[server]" },
]
end
