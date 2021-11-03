Plugin.define do
name "MetaGenerator"
authors [
  "Andrew Horton",

	"Andrew Horton", 

]
version "0.4"
description "This plugin identifies meta generator tags and extracts its value."
matches [
	{ :string=>/<meta[^>=]+content[\s]*=[\s]*["|']?([^"^'^>]+)["|']?[^>=]+name[\s]*=[\s]*["|']?generator["|']?/i },
	{ :string=>/<meta[^>=]+name[\s]*=[\s]*["|']?generator["|']?[^>=]+content[\s]*=[\s]*"([^"'>]+)"/i },
]
end
