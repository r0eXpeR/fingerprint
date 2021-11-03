Plugin.define do
    name "clickbank" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /r\.wdfl\.co/, :search => 'body'  }
]
end