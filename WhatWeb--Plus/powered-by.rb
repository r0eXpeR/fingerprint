Plugin.define do
name "PoweredBy"
authors [
  "Andrew Horton",

  "Brendan Coles < bcoles@gmail.com>", 

]
version "0.3"
description "This plugin identifies instances of 'Powered by x' text and attempts to extract the value for x."
matches [
	{ :string=>/powered[ -]?by[ ]?([^\s<>'".]+)/i },
]
end
