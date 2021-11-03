Plugin.define do
name "Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "This plugin detects instances of script HTML elements and returns the script language/type."
matches [
{ :regexp=>/<script(\s|>)/i },
{ :string=>/<script[^>]+(language|type)\s*=\s*['"]?([^'"\s]+)['"]?/, :offset=>1 },
]
end
