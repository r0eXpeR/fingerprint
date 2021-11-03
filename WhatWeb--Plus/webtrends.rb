Plugin.define do
name "WebTrends"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "WebTrends Analytics"
website "https://www.webtrends.com/"
matches [
    {:regexp=>/<img[^>]+id="DCSIMG"[^>]+webtrends/},
    {:search=>"headers[set-cookie]", :regexp=>/^WEBTRENDS_ID/, :name=>"WEBTRENDS_ID cookie"}
]
end
