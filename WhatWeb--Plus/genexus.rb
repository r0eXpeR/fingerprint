Plugin.define do
name "GeneXus"
authors [
  "Daniel Maldonado",

]
version "0.1"
description "GeneXus is a tool for agile development."
website "http://caceriadespammers.com.ar"
matches [
    {:regexp=>/.static.gxgral\.js/, :search=>'body'},
    {:regexp=>/<link[^>]+?id="gxtheme_css_reference/},
    {:search=>'body', :regexp=>/.static.gxtimezone\.js/},
    {:text=>"<meta name=\"Generator\" content=\"GeneXus\" />"}
]
end
