Plugin.define do
name "Quick_Cms"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Freeware, fast and easy to customize Content Management System."
website "http://opensolution.org/quick.cms,en,10.html"
dorks [
'"powered by Quick.Cms"'
]
matches [
    {:offset=>1, :search=>'body', :regexp=>/Quick\.CMS(?: v([\d.]+))?/},
    {:regexp=>/<a href="[^>]+opensolution\.org.">CMS by/},
    {:text=>'        LICENSE REQUIREMENTS - DONT DELETE/HIDE LINK "powered by Quick.Cms" TO www.OpenSolution.org'},
    {:text=>'      <div class="foot" id="powered"><a href="http://opensolution.org/">Powered by <strong>Quick.Cms</strong></a></div>'},
    {:text=>'    var cfLangNoWord      = "Please fill in all required fields";'},
    {:text=>'  <meta name="Author" content="OpenSolution.org" />'},
    {:text=>'  <title>Admin - Quick.Cms - simple content management system</title>'},
    {:version=>/      <div id="version"><a href="http:\/\/opensolution.org\/">Quick.Cms v([\d\.]+)<\/a><\/div>/}
]
end
