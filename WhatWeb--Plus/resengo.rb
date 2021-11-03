Plugin.define do
    name "resengo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /www\.resengo\.\w+/, :search => 'body'  }
]
end