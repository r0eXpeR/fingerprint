Plugin.define do
name "MoxaHttp"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Device Networking for Industry: device server, industrial ethernet switch."
website "http://www.moxa.com/product/product.aspx"
matches [
	{ :regexp=>/^MoxaHttp/, :search=>"headers[server]" },
	{ :version=>/^MoxaHttp\/([^\s]+)$/, :search=>"headers[server]" },
]
end
