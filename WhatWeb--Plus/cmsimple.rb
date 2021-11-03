Plugin.define do
name "CMSimple"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "CMSimple is a simple content management system for smart maintainance of small commercial or private sites."
website "http://www.cmsimple.org/"
dorks [
'"Powered by CMSimple.dk" "welcome"'
]
matches [
    {:ghdb=>'"Powered by CMSimple.dk" welcome', :certainty=>75},
    {:regexp=>/CMSimple( [\d.]+)?/,:offset=>1, :search=>'body'},
    {:text=>'<meta name="generator" content="CMSimple'},
    {:text=>'Powered by CMSimple.dk'},
    {:text=>'content="CMSimple'},
    {:version=>/<meta name="generator" content="CMSimple ([\d\.]+)[^>]*>/}
]
end
