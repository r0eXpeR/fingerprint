Plugin.define do
    name "ezoic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.ezo(?:js|ic|dn)\.(?:com|net)/, :search => 'body'  }
]
end