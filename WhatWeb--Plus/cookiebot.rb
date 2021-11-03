Plugin.define do
    name "cookiebot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /consent\.cookiebot\.com/, :search => 'body'  }
]
end