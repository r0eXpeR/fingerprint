Plugin.define do
    name "mono" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Mono/, :search => 'headers[x-powered-by]'  }
]
end