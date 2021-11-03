Plugin.define do
name "MSGS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Mercury Satellite Ground Station is a software system for commanding and controlling a satellite ground station. It's goal is to help enable ubiquitous access to satellite resources via the Internet."
website "http://mgsn.sourceforge.net/"
dorks [
'intitle:"Mercury Satellite Ground Station"'
]
matches [
{ :version=>/<title> Mercury Satellite Ground Station: Version ([\d\.]+)<\/title>/ },
]
end
