Plugin.define do
    name "sapper" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script[^>]*>__SAPPER__/  }
]
end