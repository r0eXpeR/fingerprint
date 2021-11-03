Plugin.define do
    name "stimulus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+data-controller/  }
]
end