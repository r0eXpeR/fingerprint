Plugin.define do
    name "wmsn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-Cms: WMSN'   }
]
end