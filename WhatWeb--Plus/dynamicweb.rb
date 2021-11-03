Plugin.define do
name "DynamicWeb"
authors [
  "Guillaume Delacour <gui@iroqwa.org>", 

]
version "0.1"
description "Dynamicweb is the All-In-One Platform for Content Management, Ecommerce, Digital Marketing and Integration."
website "https://dynamicweb.com/"
matches [
    {:certainty=>100, :regexp=>/\(c\) 1999-(20[\d]{2}) Dynamicweb Software A\/S/},
    {:certainty=>75, :search=>"headers[set-cookie]", :regexp=>/Dynamicweb/},
    {:offset=>1, :search=>'body', :regexp=>/Dynamicweb ([\d.]+)/},
    {:version=>/<meta name="generator" content="Dynamicweb ([^\s]+)"/}
]
end
