Plugin.define do
name "Embedthis-AppWeb"
authors [
  "Andrew Horton",

]
version "0.2"
description "Web server for embedded devices"
website "http://embedthis.com/products/appweb/embedded-web-server.html"
matches [
	{ :version=>/Mbedthis-Appweb\/(.*)/, :search=>"headers[server]" },
	{ :regexp=>/^Mbedthis-Appweb/, :search=>"headers[server]" },
]
end
