Plugin.define do
    name "freshmarketer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.freshmarketer\.com/, :search => 'body'  }
]
end