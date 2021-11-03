Plugin.define do
name "jobberBase"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "jobberBase is the open-source job board software that helps you set up a jobsite in minutes!"
website "http://www.jobberbase.com/"
dorks [
'"Companies" "Sitemap" "Proudly powered by jobberBase"'
]
matches [
    {:ghdb=>'Companies Sitemap "Proudly powered by jobberBase"', :certainty=>75},
    {:regexp=>/Jobberbase/, :search=>'body'},
    {:regexp=>/Proudly powered by[\s]+<a href="http:\/\/www.jobberbase.com\/"[^>]*title="open source job board software">jobberBase<\/a>/},
    {:text=>'<meta name="author" content="http://www.jobberbase.com" />'},
    {:text=>'Jobber.PerformSearch'},
    {:text=>'content="Jobberbase'},
    {:text=>'http://www.jobberbase.com'},
    {:text=>'powered by'}
]
end
