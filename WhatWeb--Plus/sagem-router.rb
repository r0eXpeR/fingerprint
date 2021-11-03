Plugin.define do
name "Sagem-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sagem Router - Distributed by Wanadoo, Maroc Telecom, Sky and others."
matches [
{ :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="?Sagem"?$/ },
]
end
