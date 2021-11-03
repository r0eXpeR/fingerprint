Plugin.define do
    name "couchbase" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Couchbase'   },
    { :text => 'Couchbase Console'   },
    { :text => 'Couchbase'   }
]
end