Plugin.define do
name "SiteCore"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Sitecore a .NET CMS, ecommerce, and digital marketing platform."
website "http://www.sitecore.net/"
matches [
    {:regexp=>/<img[^>]+src="[^>]*.~.media.[^>]+\.ashx/},
    {:search=>"headers", :text=>'Sitecore CMS'},
    {:search=>"headers[set-cookie]", :regexp=>/^SC_ANALYTICS_/, :name=>"SC_ANALYTICS_ cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^sc_expview/, :name=>"sc_expview cookie"}
]
end
