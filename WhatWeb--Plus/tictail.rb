Plugin.define do
    name "tictail" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]*tictail\.com/  }
]
end