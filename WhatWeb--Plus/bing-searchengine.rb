Plugin.define do
name "Bing-SearchEngine"
authors [
  "Andrew Horton",

]
version "0.2"
description "Bing.com is Microsoft's search engine"
matches [
{:text=>'var curUrl="http://www.bing.com/"' },
{:text=>'<meta content="Bing is a search engine that finds' }
]
end
