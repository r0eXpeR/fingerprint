Plugin.define do
    name "qubit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static\.goqubit\.com/, :search => 'body'  }
]
end