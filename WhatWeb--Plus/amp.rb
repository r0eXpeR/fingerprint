Plugin.define do
    name "amp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html[^>]* (?:amp|⚡)[^-]/  },
    { :regexp => /<link rel="amphtml/  }
]
end