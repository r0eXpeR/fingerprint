Plugin.define do
name "activeCollab"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton" 
]
version "0.2"
description "activeCollab - project management & collaboration tool - Requires PHP and MySQL"
website "http://www.activecollab.com/"
dorks [
'"powered by activeCollab" "Forgot password" intitle:"Login"'
]
matches [
    {:name=>"acpowered.gif", :url=>'/public/assets/images/acpowered.gif', :md5=>"ad6152c96454d96f7b8ec78c08bb789b"},
    {:name=>"powered by footer", :text=>'<p id="powered_by"><a href="http://www.activecollab.com/"'},
    {:text=>'<form method="post" id="system_form_2" class="uniForm focusFirstField">'},
    {:text=>'<p id="powered_by"><a href="http://www.activecollab.com/'},
    {:text=>'powered by activeCollab'},
    {:version=>/if\(\!App\.data\) \{ App\.data = \{\}; \}\s+App\.data\.quick_search_url = "[^"]+";\s+App\.data\.ac_version = "([^"]+)";/}
]
end
