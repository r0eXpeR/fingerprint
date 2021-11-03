Plugin.define do
    name "manycontacts" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.manycontacts\.com/, :search => 'body'  }
]
end