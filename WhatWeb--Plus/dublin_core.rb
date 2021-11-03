Plugin.define do
name "DublinCore"
authors [
  "Caleb Anderson",

]
version "0.1"
description "Dublin Core Metadata Initiative (DCMI) supports shared innovation in metadata design and best practices across a broad range of purposes and business models."
website "http://dublincore.org"
matches [
{:name=>"dublin core", :regexp=>/<meta [^>]*name="DC\.title"[^>]*>/i},
]
end
