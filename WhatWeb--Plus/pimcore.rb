Plugin.define do
    name "pimcore" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^pimcore$/, :search => 'headers[x-powered-by]'  }
]
end