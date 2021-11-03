Plugin.define do
    name "tawk.to" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..embed\.tawk\.to/, :search => 'body'  }
]
end