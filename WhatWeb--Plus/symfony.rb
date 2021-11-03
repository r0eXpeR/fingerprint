Plugin.define do
name "Symfony"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.2"
description "Symfony - open-source PHP web framework"
website "https://symfony.com/"
matches [
    {:ghdb=>'"powered by symfony"', :certainty=>25},
    {:regexp=>/<div id="sfwdt[^"]+" class="[^"]*sf-toolbar/},
    {:search=>"headers[set-cookie]", :regexp=>/^symfony/, :name=>"symfony cookie"},
    {:text=>'Powered by <a href="http://www.symfony-project.org/">'}
]
end
