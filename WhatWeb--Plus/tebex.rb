Plugin.define do
    name "tebex" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https:..server\.tebex\.io.tebexAccounts.tebexaccounts\.js/, :search => 'body'  }
]
end