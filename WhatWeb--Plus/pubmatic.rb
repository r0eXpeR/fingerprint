Plugin.define do
    name "pubmatic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..[^.]*\.pubmatic\.com/, :search => 'body'  }
]
end