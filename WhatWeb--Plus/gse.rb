Plugin.define do
    name "gse" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: GSE'   }
]
end