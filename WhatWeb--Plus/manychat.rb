Plugin.define do
    name "manychat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /widget\.manychat\.com/, :search => 'body'  }
]
end