Plugin.define do
    name "forter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /forter\.com/, :search => 'body'  }
]
end