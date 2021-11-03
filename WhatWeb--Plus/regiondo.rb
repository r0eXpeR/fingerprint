Plugin.define do
    name "regiondo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.regiondo\.net/, :search => 'body'  }
]
end