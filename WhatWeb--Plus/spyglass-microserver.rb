Plugin.define do
name "Spyglass-MicroServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Spyglass MicroServer is a small footprint, scalable, embedded Web server that is standards-based, customizable and features dynamic content generation with multi-platform support."
matches [
	{ :regexp=>/^Spyglass_MicroServer/, :search=>"headers[server]" },
	{ :version=>/^Spyglass_MicroServer\/(.+)$/, :search=>"headers[server]" },
]
end
