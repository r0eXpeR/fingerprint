Plugin.define do
name "Kibana"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Kibana is an open source data visualization platform that allows you to interact with your data"
website "https://www.elastic.co/products/kibana"
matches [
    {:name=>"kbn-injected-metadata", :search=>"body", :version=>/<kbn-injected-metadata data="{&quot;version&quot;:&quot;([0-9\.]+)/},
    {:name=>"kbn-name header", :search=>"headers[kbn-name]", :text=>''},
    {:regexp=>/<title>Kibana<.title>/},
    {:search=>"headers[x-app-name]", :regexp=>/^kibana$/},
    {:search=>'headers[kbn-name]', :regexp=>/kibana/},
    {:text=>'<body kibana ng-class'},
    {:text=>'Kibana'},
    {:text=>'kbnVersion'},
    {:version=>/<script>\s+window\.KIBANA_VERSION='([\d\.]+)';\s+window\.KIBANA_BUILD_NUM='[\d]+';/}
]
end
