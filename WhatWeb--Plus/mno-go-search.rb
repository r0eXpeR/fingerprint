Plugin.define do
name "MnoGoSearch"
authors [
  "Andrew Horton",

]
version "0.3"
description "mnoGoSearch is an opensource website search engine. Homepage http://www.mnogosearch.org"
dorks [
'"Powered by mnoGoSearch"'
]
matches [
{:regexp=>/Powered by mnoGoSearch .{3} free web search engine software/},
{:certainty=>75, :regexp=>/<title>mnoGoSearch:/},
]
end
