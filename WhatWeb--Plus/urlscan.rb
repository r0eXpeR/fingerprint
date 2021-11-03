Plugin.define do
    name "urlscan" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Rejected-By-UrlScan'   }
]
end