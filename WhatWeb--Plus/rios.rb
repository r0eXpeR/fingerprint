Plugin.define do
name "RiOS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Riverbed Optimization System (RiOS)"
website "http://www.riverbed.com/"
matches [
{ :search=>"headers[x-rbt-optimized-by]", :version=>/\(RiOS ([^\s]+)\)/ },
{ :search=>"headers[x-rbt-optimized-by]", :string=>/(.+) \(RiOS/ },
]
end
