Plugin.define do
    name "global-e" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /web\.global-e\.com/, :search => 'body'  }
]
end