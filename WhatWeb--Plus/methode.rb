Plugin.define do
    name "methode" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Methode uuid: "[a-f\d]+" ?-->/  }
]
end