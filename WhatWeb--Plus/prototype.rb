Plugin.define do
name "Prototype"
authors [
  "Andrew Horton",

]
version "0.2"
description "Javascript library"
matches [
    {:name=>"js tag", :regexp=>/<script [^>]*(prototype[^>]*.js)[^>]*/},
    {:regexp=>/(?:prototype|protoaculous)(?:-([\d.]*[\d]))?.*\.js/, :search=>'body',:offset=>1  }
]
end
