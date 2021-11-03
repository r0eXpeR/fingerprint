Plugin.define do
name "DUclassified"
authors [
  "Tonmoy Saikia",

  "Andrew Horton", 

]
version "0.2"
description "DUclassified is a free Classified Ad Management system."
website "http://www.duware.com/"
dorks [
'"powered by DUclassified" intitle:DUclassified'
]
matches [
    {:certainty=>75, :ghdb=>'"powered by DUclassified" intitle:DUclassified'},
    {:name=>"assets/DUclassified.css", :regexp=>/<link[^>]href="[^"]*assets\/DUclassified.css"[^>]+>/},
    {:name=>"default title", :regexp=>/<title>DUclassified[\s\d\.]*<\/title>/},
    {:text=>'DUclassified'},
    {:text=>'assets/DUclassified.css'}
]
end
