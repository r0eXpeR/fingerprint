Plugin.define do
    name "bem" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+data-bem/  }
]
end