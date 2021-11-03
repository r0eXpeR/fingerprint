Plugin.define do
name "DotCMS"
authors [
  "Andrew Horton",

  "Bhavin Senjaliya", 

]
version "0.3"
description "DotCMS is an opensource CMS written in Java. Has enterprise support"
website "http://www.dotcms.org/"
matches [
    {:regexp=>/<a[^>]+href="[^h][^"]*index\.dot/},
    {:regexp=>/<img[^>]+src="[^"]*\/dotAsset\//},
    {:regexp=>/<link[^>]+href="[^"]*\/dotAsset\//},
    {:search=>"headers[set-cookie]", :regexp=>/dotcms/, :name=>"dotcms cookie"},
    {:text=>'/dotAsset/'},
    {:text=>'/index.dot'}
]
end
