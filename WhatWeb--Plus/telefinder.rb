Plugin.define do
name "TeleFinder"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "TeleFinder is a Macintosh-based bulletin-board system written by Spider Island Software, based on a client.server model whose client end provides a Mac-like GUI. - More Info: http://en.wikipedia.org/wiki/TeleFinder"
matches [
	{ :regexp=>/^TeleFinder/, :search=>"headers[server]" },
	{ :version=>/^TeleFinder\/([\d\.]+)$/, :search=>"headers[server]" },
]
end
