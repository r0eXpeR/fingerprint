Plugin.define do
    name "fast_esp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<form[^>]+id="fastsearch/  }
]
end