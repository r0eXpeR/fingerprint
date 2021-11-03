Plugin.define do
name "Monkey"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Monkey is a very small, fast and scalable web server for Linux."
website "http://www.monkey-project.com/"
matches [
	{ :regexp=>/^Monkey/, :search=>"headers[server]" },
	{ :version=>/^Monkey\/([\d\.]+)/, :search=>"headers[server]" },
]
end
