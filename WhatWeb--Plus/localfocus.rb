Plugin.define do
    name "localfocus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+\blocalfocus\b/  }
]
end