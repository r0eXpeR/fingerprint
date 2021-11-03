Plugin.define do
    name "pushowl" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.pushowl\.com/, :search => 'body'  }
]
end