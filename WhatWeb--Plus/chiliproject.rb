Plugin.define do
name "ChiliProject"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ChiliProject is a web based project management system."
website "https://www.chiliproject.org/"
dorks [
'"Powered by ChiliProject" intitle:"ChiliProject" -site:chiliproject.org'
]
matches [
    {:search=>"headers", :text=>'_chiliproject_session='},
    {:search=>"headers[set-cookie]", :regexp=>/_chiliproject_session=/},
    {:text=>'<!-- page specific tags -->'},
    {:text=>'<meta name="description" content="ChiliProject" />'},
    {:text=>'Powered by <a href="https://www.chiliproject.org/">ChiliProject</a>'},
    {:text=>'Powered by <a href="https://www.chiliproject.org/'},
    {:text=>'content="ChiliProject'},
    {:version=>/<li><a href="https:\/\/www\.chiliproject\.org\/help\/v([^\s^"]+)" class="help">/}
]
end
