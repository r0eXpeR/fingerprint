Plugin.define do
name "Orenosv"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Orenosv is a stable, reliable and high performance HTTP/FTP/FTPS file server that can operate in 24H/365D. Orenosv runs on Windows platforms (NT, 2000, XP and 2003) and Linux x86. "
website "http://www.orenosv.com/orenosv_en.html"
matches [
	{ :version=>/^orenosv/, :search=>"headers[server]" },
	{ :version=>/^orenosv\/([^\s]+)$/, :search=>"headers[server]" },
]
end
