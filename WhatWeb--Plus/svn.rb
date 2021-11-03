Plugin.define do
name "SVN"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "SVN HTTP header."
matches [
	{ :regexp=>/[^\r^\n]*SVN/, :search=>"headers[server]" },
	{ :version=>/[^\r^\n]*SVN\/([^\r^\n^\s]*)/, :search=>"headers[server]" },
]
end
