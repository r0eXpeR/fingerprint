Plugin.define do
name "PageUp-People"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "PageUpPeople is a commercial SaaS platform to recruit, onboard, train, develop, manage and retain employees."
website "http://www.pageuppeople.com/"
dorks [
'"Powered by PageUp People"'
]
matches [
{:ghdb=>'"Powered by PageUp People"', :certainty=>75 },
{:text=>'<a class="pageupLink" href="http://www.pageuppeople.com" target="self">Powered by PageUp People</a>' },
]
passive do
        m=[]
        m << { :name=>"sPULastSelectedLanguage Cookie" } if @headers["set-cookie"] =~ /sPULastSelectedLanguage=/
        m
end
end
