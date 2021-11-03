Plugin.define do
    name "tessitura" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<!--[^>]+Tessitura Version: (\d*\.\d*\.\d*)?/  }
]
end