Plugin.define do
    name "wair" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /getwair\.com/, :search => 'body'  }
]
end