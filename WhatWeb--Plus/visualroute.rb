Plugin.define do
name "VisualRoute"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Traceroute and network diagnostic tool"
website "http://www.visualroute.com/"
matches [
	{ :regexp=>/^VisualRoute /, :search=>"headers[server]" },
	{ :version=>/^VisualRoute \((tm|R)\) ([^\s]+)$/, :offset=>1, :search=>"headers[server]" },
	{ :string=>/^VisualRoute \((tm|R)\) ([\d]{4} .+ Edition) \(v([^\)]+)\)$/, :offset=>1, :search=>"headers[server]" },
	{ :version=>/^VisualRoute \((tm|R)\) ([\d]{4} .+ Edition) \(v([^\)]+)\)$/, :offset=>2, :search=>"headers[server]" },
]
end
