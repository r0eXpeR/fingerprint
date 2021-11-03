Plugin.define do
name "Lussumo-Vanilla"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "A free, open-source, standards-compliant discussion forum for the web. "
website "http://code.google.com/p/lussumo-vanilla/"
dorks [
'inurl:"people.php?PageAction=SignOutNow"'
]
matches [
	{ :version=>/Lussumo Vanilla/, :search=>"headers[x-powered-by]" },
	{ :version=>/Lussumo Vanilla ([^\s]+)/, :search=>"headers[x-powered-by]" },
]
end
