Plugin.define do
name "Citrix-NetScaler"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Andrew Horton", 

  "Bhavin Senjaliya", 

]
version "0.3"
description "Citrix NetScaler  - http://www.citrix.com/netscaler"
matches [
    {:regexp=>/NS\-CACHE/, :search=>"headers[via]"},
    {:search=>"headers", :text=>'NS-CACHE'},
    {:search=>"headers[set-cookie]", :regexp=>/^NSC_/, :name=>"NSC_ cookie"},
    {:text=>'NS-CACHE'},
    {:version=>/NS\-CACHE\-(\d{1,4}\.\d{1,4}):/, :search=>"headers[via]"}
]
end
