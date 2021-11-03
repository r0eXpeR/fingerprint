Plugin.define do
    name "vignette" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+="vgn-?ext/  }
]
end