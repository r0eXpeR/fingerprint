Plugin.define do
name "JQuery"
authors [
  "Andrew Horton",

  "Eric Sesterhenn", 

  "Janosch Maier @Phylu", 

]
version "0.5"
description "A fast, concise, JavaScript that simplifies how to traverse HTML documents, handle events, perform animations, and add AJAX."
website "http://jquery.com/"
matches [
    {:offset=>1, :regexp=>/jquery.*\.js(?:\?ver(?:sion)?=([\d.]+))?/, :search=>'body'},
    {:offset=>1, :search=>'body', :regexp=>/.([\d.]+).jquery(?:\.min)?\.js/},
    {:regexp=>/<script [^>]*jquery/},
    {:regexp=>/jquery[.-]([\d.]*\d)[^.]*\.js/,:offset=>1, :search=>'body'},
    {:text=>'jquery'},
    {:version=>/jquery(\.min)?\.js\?ver=([0-9\.]+)['"]/, :offset=>1},
    {:version=>/jquery-([0-9\.]+)(\.min)?\.js/, :offset=>0 },
    {:version=>/jquery\/([0-9\.]+)\/jquery(\.min)?\.js/, :offset=>0}
]
end
