Plugin.define do
    name "strikingly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Powered by Strikingly\.com/  }
]
end