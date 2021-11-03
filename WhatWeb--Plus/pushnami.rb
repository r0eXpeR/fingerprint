Plugin.define do
    name "pushnami" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /api\.pushnami\.com/, :search => 'body'  }
]
end