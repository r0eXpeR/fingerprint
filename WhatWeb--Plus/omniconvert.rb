Plugin.define do
    name "omniconvert" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.omniconvert\.com/, :search => 'body'  }
]
end