Plugin.define do
name "Incapsula-WAF"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Bhavin Senjaliya", 

  "Andrew Horton", 

]
version "0.3"
description "Incapsula-WAF"
website "http://www.incapsula.com"
matches [
{:name => 'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/incap_ses_/i},
{:name => 'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/incap_visid_83_/i},
{:name => "visid_incap_ cookie", :search => "headers[set-cookie]", :regexp => /^visid_incap_/ },
]
end
