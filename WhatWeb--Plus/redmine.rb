Plugin.define do
name "Redmine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Redmine is a flexible project management web application. Written using Ruby on Rails framework, it is cross-platform and cross-database."
dorks [
'"Powered by Redmine"'
]
matches [
    {:certainty=>25, :text=>'<meta name="description" content="Redmine" />'},
    {:mmh3=>'603314'},
    {:regexp=>/Powered by <a href="[^>]+Redmine/},
    {:regexp=>/Redmine/, :search=>'body'},
    {:search=>"headers[set-cookie]", :regexp=>/_redmine_session=/},
    {:status=>404, :text=>'<title>redMine 404 error</title>'},
    {:string=>/Powered by <a href="http:\/\/www\.redmine\.org\/">Redmine<\/a> &copy; 2006-(20[\d]{2}) Jean-Philippe Lang/},
    {:text=>'authenticity_token'}
]
end
