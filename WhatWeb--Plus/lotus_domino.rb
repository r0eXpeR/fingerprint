Plugin.define do
    name "lotus_domino" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /Lotus-Domino/  }
]
end