Plugin.define do
name "axTLS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 
]
version "0.2"
description "The axTLS embedded SSL project is a highly configurable client/server TLSv1 SSL library designed for platforms with small memory requirements. It comes with a small HTTP/HTTPS server and additional test tools."
website "http://axtls.sourceforge.net/"
matches [
	{ :version => /^axhttpd\/([^\s]+)$/, :search => "headers[server]" }
]
end
