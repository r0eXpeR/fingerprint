Plugin.define do
name "Epiware"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Epiware - Enterprise Document Management"
website "http://www.epiware.com/"
dorks [
'intitle:"Epiware" "This web-site requires javascript. Please enable javascript to access this web-site."'
]
matches [
    {:regexp=>/<div id="jsWarning" class="javascript_warning">\s+This web-site requires javascript\.\s+Please enable javascript to access this web-site\.\s+<\/div>/},
    {:text=>'<title>Epiware - Project and Document Management  </title>'},
    {:text=>'Epiware - Project and Document Management'},
    {:version=>/<div id="masthead"><a href="http:\/\/www\.epiware\.com">Epiware<\/a><\/div>\s+<span class="version">version ([^<^\s]+)<\/span>/}
]
end
