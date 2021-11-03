Plugin.define do
    name "nosto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /connect\.nosto\.\w+./, :search => 'body'  }
]
end