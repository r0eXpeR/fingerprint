Plugin.define do
    name "solr" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Solr Admin'   },
    { :text => 'SolrCore Initialization Failures'   },
    { :text => 'app_config.solr_path'   }
]
end