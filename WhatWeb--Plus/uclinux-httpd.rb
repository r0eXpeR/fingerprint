Plugin.define do
name "uClinux-httpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Linux/Microcontroller project (uClinux) is a port of Linux to systems without a Memory Management Unit (MMU). This plugin identifies the version of the uClinux HTTP server"
website "http://www.uclinux.org/"
matches [
	{ :os=>"uClinux", :version=>/^uClinux/, :search=>"headers[server]" },
	{ :os=>"uClinux", :version=>/^uClinux-httpd ([\d\.]+)$/, :search=>"headers[server]" },
]
end
