Plugin.define do
    name "tamago" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*href="http:..tamago\.temonalab\.com/  }
]
end