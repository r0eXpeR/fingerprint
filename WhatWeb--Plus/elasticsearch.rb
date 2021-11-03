Plugin.define do
	name "ElasticSearch"
	authors [
		"Andrew Hortons", 

	]
	version "0.1"
	description "Elasticsearch is a distributed RESTful search engine built for the cloud. Built on top of Apache Lucene."
	website "https://github.com/elastic/elasticsearch"
matches [
    {:name=>"JSON version.number", :url=>"/", :status=>200, :version=>/"name" : "[^"]+",\s+"cluster_name" : "[^"]+",\s+"cluster_uuid" : "[^"]+",\s+"version" : {\s+"number" : "([^"]+)"/},
    {:name=>"Tagline", :url=>"/", :status=>200, :text=>"\"tagline\" : \"You Know, for Search\"\n}"},
    {:text=>'You Know, for Search'},
    {:text=>'build_hash")'}
]
end
